"""2D Collision Detection Example in Raylib Mojo."""

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
    draw_rectangle_rec,
    draw_circle_v,
    get_mouse_position,
    check_collision_recs,
    check_collision_circles,
    Rectangle,
    Vector2,
    RAYWHITE,
    LIGHTGRAY,
    DARKGRAY,
    RED,
    BLUE,
    GREEN,
    MAROON,
)


def main():
    var width: Int32 = 800
    var height: Int32 = 450

    init_window(width, height, "Raylib Mojo - 2D Collision Detection Example")
    set_target_fps(60)

    # Obstacle rectangle
    var obstacle_rec = Rectangle(250.0, 150.0, 300.0, 150.0)

    # Obstacle circle
    var circle_center = Vector2(650.0, 100.0)
    var circle_radius: Float32 = 40.0

    # Player rectangle size
    var player_size = Vector2(60.0, 60.0)

    while not window_should_close():
        var mouse_pos = get_mouse_position()

        # Player rectangle centered on mouse
        var player_rec = Rectangle(
            mouse_pos.x - player_size.x / 2.0,
            mouse_pos.y - player_size.y / 2.0,
            player_size.x,
            player_size.y,
        )

        var collision_rec = check_collision_recs(player_rec, obstacle_rec)
        var collision_circle = check_collision_circles(
            mouse_pos,
            player_size.x / 2.0,
            circle_center,
            circle_radius,
        )

        begin_drawing()
        clear_background(RAYWHITE())

        # Draw obstacles
        draw_rectangle_rec(obstacle_rec, MAROON() if collision_rec else BLUE())
        draw_circle_v(
            circle_center,
            circle_radius,
            MAROON() if collision_circle else GREEN(),
        )

        # Draw player box
        var player_color = RED() if (
            collision_rec or collision_circle
        ) else DARKGRAY()
        draw_rectangle_rec(player_rec, player_color)

        draw_text(
            "Move mouse to test 2D Collision Detection", 10, 10, 20, DARKGRAY()
        )
        if collision_rec or collision_circle:
            draw_text("COLLISION DETECTED!", 10, 40, 20, RED())
        else:
            draw_text("No collision", 10, 40, 20, GREEN())

        draw_fps(width - 100, 10)
        end_drawing()

    close_window()
    print("Collision example closed.")
