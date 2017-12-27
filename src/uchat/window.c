#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#include <window.h>

void window_error(enum OS_TYPES lib, char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    if (lib == WINDOWS) {
        printf("[win32] ");
    }
    else {
        printf("[unix/X11] ");
    }
    vprintf(fmt, args);
    printf("***error*** %s\n", strerror(errno));
    va_end(args);
}

#ifdef __linux__

#include <X11/Xlib.h>
#include <X11/Xutil.h>

typedef struct {
    Display *display;
    Window   window;
    int      screen;
    XEvent   event;
} window_t;

window_t window_init() {
    window_t window;
    window.display = XOpenDisplay(NULL);

    if (window.display == NULL) {
        window_error(UNIX, "Cannot open X11 display.");
        exit(1);
    }

    window.screen = DefaultScreen(window.display);

    window.window = XCreateSimpleWindow(
                     window.display,
                     RootWindow(window.display, window.screen),
                     200, 200, NULL, NULL, 1,
                     BlackPixel(window.display, window.screen),
                     WhitePixel(window.display, window.screen));
    
    XSelectInput(window.display, window.window, ExposureMask | KeyPressMask);
    XMapWindow(window.display, window.window);

    return window;
}

void window_run_events(window_t *window) {
    XNextEvent(window->display, &window->event);
}

#elif _WIN32

#include <windows.h>

typedef struct {
    HWND       hwnd;
    WNDCLASSEX wc;
} window_t;

window_t window_init() {
    window_t window;

    WNDCLASSEX wc;
    wc.cbSize        = sizeof(WNDCLASSEX);
    wc.style         = 0;
    wc.lpfnWndProc   = WndProc;
    wc.cbClsExtra    = 0;
    wc.cbWndExtra    = 0;
    wc.hInstance     = hInstance;
    wc.hIcon         = LoadIcon(NULL, IDI_APPLICATION);
    wc.hCursor       = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
    wc.lpszMenuName  = NULL;
    wc.lpszClassName = g_szClassName;
    wc.hIconSm       = LoadIcon(NULL, IDI_APPLICATION);

    window.wc = wc;

    if (!RegisterClassEx(&window.wc)) {
        MessageBox(NULL, "Window Registration failed.", "Error",
                   MB_ICON_EXCLAMATION | MB_OK);
        return NULL;
    }

    window.hwnd = CreateWindowEx(
        WS_EX_CLIENTEDGE,
        g_szClassName,
        "Main Window",
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        200, 200, NULL, NULL,
        hInstance, NULL
    );

    if (window.hwnd == NULL) {
        MessageBox(NULL, "Window Creation Failed", "Error",
                   MB_ICON_EXCLAMATION | MB_OK);
        return NULL;
    }
    
    ShowWindow(window.hwnd, nCmdShow);
    UpdateWindow(window.hwnd);
}


#endif