from raylib.types import Vector2
from raylib import c


def is_key_pressed(key: Int32) -> Bool:
    return c.IsKeyPressed(key)


def is_key_down(key: Int32) -> Bool:
    return c.IsKeyDown(key)


def is_key_released(key: Int32) -> Bool:
    return c.IsKeyReleased(key)


def is_key_up(key: Int32) -> Bool:
    return c.IsKeyUp(key)


def get_key_pressed() -> Int32:
    return c.GetKeyPressed()


def is_mouse_button_pressed(button: Int32) -> Bool:
    return c.IsMouseButtonPressed(button)


def is_mouse_button_down(button: Int32) -> Bool:
    return c.IsMouseButtonDown(button)


def is_mouse_button_released(button: Int32) -> Bool:
    return c.IsMouseButtonReleased(button)


def is_mouse_button_up(button: Int32) -> Bool:
    return c.IsMouseButtonUp(button)


def get_mouse_x() -> Int32:
    return c.GetMouseX()


def get_mouse_y() -> Int32:
    return c.GetMouseY()


def get_mouse_position() -> Vector2:
    return c.GetMousePosition()


def get_mouse_delta() -> Vector2:
    return c.GetMouseDelta()


def get_mouse_wheel_move() -> Float32:
    return c.GetMouseWheelMove()
