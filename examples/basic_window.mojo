from raylib import (
    init_window,
    window_should_close,
    close_window,
    set_target_fps,
    begin_drawing,
    end_drawing,
    clear_background,
    draw_text,
    draw_fps,
    draw_rectangle,
    RAYWHITE,
    LIGHTGRAY,
    DARKGRAY,
    RED,
    BLUE,
    MAROON,
)


def main():
    var width: Int32 = 800
    var height: Int32 = 450

    init_window(width, height, "Raylib Mojo - Basic Window Example")
    set_target_fps(60)

    while not window_should_close():
        begin_drawing()
        clear_background(RAYWHITE())
        draw_rectangle(100, 100, 600, 250, LIGHTGRAY())
        draw_rectangle(120, 120, 560, 210, MAROON())
        draw_text("Welcome to Raylib Mojo!", 190, 180, 28, RAYWHITE())
        draw_text("Built with Pixi and Mojo 1.0", 230, 230, 20, LIGHTGRAY())
        draw_fps(10, 10)
        end_drawing()

    close_window()
    print("Basic window example closed.")
