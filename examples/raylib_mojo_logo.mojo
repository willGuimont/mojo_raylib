"""Raylib Mojo Custom Logo Generator Example."""

from raylib import (
    init_window,
    window_should_close,
    close_window,
    set_target_fps,
    begin_drawing,
    end_drawing,
    clear_background,
    draw_rectangle,
    draw_rectangle_rec,
    draw_rectangle_lines_ex,
    draw_text,
    measure_text,
    draw_fps,
    take_screenshot,
    Rectangle,
    Color,
    RAYWHITE,
    WHITE,
    BLACK,
    DARKGRAY,
)


def main():
    var screen_size: Int32 = 256

    init_window(screen_size, screen_size, "raylib-mojo Logo")
    set_target_fps(60)

    # Mojo Brand Flame Orange / Red
    var mojo_orange = Color(255, 80, 0, 255)
    var border_thick: Float32 = 16.0

    var font_size: Int32 = 56
    var right_margin: Int32 = 234  # screen_size (256) - border/padding

    var raylib_w = measure_text("raylib", font_size)

    var raylib_x: Int32 = right_margin - raylib_w
    var raylib_y: Int32 = 120

    # Align "mojo" to the left edge of "raylib"
    var mojo_x: Int32 = raylib_x
    var mojo_y: Int32 = 175

    var frame = 0

    while not window_should_close():
        begin_drawing()
        clear_background(RAYWHITE())

        var outer_rec = Rectangle(
            0.0, 0.0, Float32(screen_size), Float32(screen_size)
        )
        draw_rectangle_lines_ex(outer_rec, border_thick, mojo_orange)
        draw_text("raylib", raylib_x, raylib_y, font_size, mojo_orange)
        draw_text("mojo", mojo_x, mojo_y, font_size, mojo_orange)
        end_drawing()

        if frame == 15:
            take_screenshot("logo/raylib_mojo_logo.png")

        frame += 1

    close_window()
    print("Logo window closed.")
