"""2D Camera Pan & Zoom Example in Raylib Mojo."""

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
    draw_rectangle_rec,
    draw_line,
    begin_mode_2d,
    end_mode_2d,
    is_key_down,
    is_key_pressed,
    get_mouse_wheel_move,
    KEY_RIGHT,
    KEY_LEFT,
    KEY_UP,
    KEY_DOWN,
    KEY_A,
    KEY_D,
    KEY_W,
    KEY_S,
    KEY_R,
    Vector2,
    Rectangle,
    Camera2D,
    RAYWHITE,
    LIGHTGRAY,
    DARKGRAY,
    RED,
    BLUE,
    GREEN,
    MAROON,
)


def main():
    var screen_width: Int32 = 800
    var screen_height: Int32 = 450

    init_window(screen_width, screen_height, "Raylib Mojo - 2D Camera Example")
    set_target_fps(60)

    var player = Rectangle(400.0, 280.0, 40.0, 40.0)

    var camera = Camera2D(
        offset=Vector2(
            Float32(screen_width) / 2.0, Float32(screen_height) / 2.0
        ),
        target=Vector2(player.x + 20.0, player.y + 20.0),
        rotation=0.0,
        zoom=1.0,
    )

    while not window_should_close():
        # Player movement controls (Arrow Keys / WASD)
        if is_key_down(KEY_RIGHT) or is_key_down(KEY_D):
            player.x += 4.0
        if is_key_down(KEY_LEFT) or is_key_down(KEY_A):
            player.x -= 4.0
        if is_key_down(KEY_DOWN) or is_key_down(KEY_S):
            player.y += 4.0
        if is_key_down(KEY_UP) or is_key_down(KEY_W):
            player.y -= 4.0

        # Camera follows player
        camera.target = Vector2(player.x + 20.0, player.y + 20.0)

        # Camera zoom controls (Mouse wheel)
        var wheel = get_mouse_wheel_move()
        if wheel != 0.0:
            camera.zoom += wheel * 0.05
            if camera.zoom < 0.1:
                camera.zoom = 0.1
            elif camera.zoom > 3.0:
                camera.zoom = 3.0

        # Reset camera rotation/zoom on R key press
        if is_key_pressed(KEY_R):
            camera.zoom = 1.0
            camera.rotation = 0.0

        begin_drawing()
        clear_background(RAYWHITE())

        begin_mode_2d(camera)

        # Draw world background grid
        draw_rectangle(-1000, -1000, 3000, 3000, LIGHTGRAY())

        # Draw world obstacle buildings
        draw_rectangle(100, 100, 200, 400, BLUE())
        draw_rectangle(400, 100, 300, 200, MAROON())

        # Draw player
        draw_rectangle_rec(player, RED())

        end_mode_2d()

        # UI Overlay (Screen space)
        draw_text(
            "Controls: WASD/Arrows to move, Mouse Wheel to Zoom, R to Reset",
            10,
            10,
            18,
            DARKGRAY(),
        )
        draw_fps(screen_width - 100, 10)
        end_drawing()

    close_window()
    print("2D camera example closed.")
