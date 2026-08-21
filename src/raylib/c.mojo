from std.ffi import external_call, c_int, c_float, c_char, c_void
from std.memory import Pointer
from raylib.types import (
    Vector2,
    Vector3,
    Vector4,
    Color,
    Rectangle,
    Camera2D,
    Camera3D,
    Image,
    Texture,
    Font,
    Sound,
    Music,
    Ray,
)


# Core & Window
def InitWindow(width: Int32, height: Int32, title: Pointer[UInt8, origin=_]):
    external_call["InitWindow", NoneType](width, height, title)


def WindowShouldClose() -> Bool:
    return external_call["WindowShouldClose", Bool]()


def CloseWindow():
    external_call["CloseWindow", NoneType]()


def IsWindowReady() -> Bool:
    return external_call["IsWindowReady", Bool]()


def IsWindowFullscreen() -> Bool:
    return external_call["IsWindowFullscreen", Bool]()


def IsWindowHidden() -> Bool:
    return external_call["IsWindowHidden", Bool]()


def IsWindowMinimized() -> Bool:
    return external_call["IsWindowMinimized", Bool]()


def IsWindowMaximized() -> Bool:
    return external_call["IsWindowMaximized", Bool]()


def IsWindowFocused() -> Bool:
    return external_call["IsWindowFocused", Bool]()


def IsWindowResized() -> Bool:
    return external_call["IsWindowResized", Bool]()


def SetWindowState(flags: UInt32):
    external_call["SetWindowState", NoneType](flags)


def ClearWindowState(flags: UInt32):
    external_call["ClearWindowState", NoneType](flags)


def ToggleFullscreen():
    external_call["ToggleFullscreen", NoneType]()


def ToggleBorderlessWindowed():
    external_call["ToggleBorderlessWindowed", NoneType]()


def MaximizeWindow():
    external_call["MaximizeWindow", NoneType]()


def MinimizeWindow():
    external_call["MinimizeWindow", NoneType]()


def RestoreWindow():
    external_call["RestoreWindow", NoneType]()


def SetWindowTitle(title: Pointer[UInt8, origin=_]):
    external_call["SetWindowTitle", NoneType](title)


def SetWindowPosition(x: Int32, y: Int32):
    external_call["SetWindowPosition", NoneType](x, y)


def SetWindowSize(width: Int32, height: Int32):
    external_call["SetWindowSize", NoneType](width, height)


def GetScreenWidth() -> Int32:
    return external_call["GetScreenWidth", Int32]()


def GetScreenHeight() -> Int32:
    return external_call["GetScreenHeight", Int32]()


def GetRenderWidth() -> Int32:
    return external_call["GetRenderWidth", Int32]()


def GetRenderHeight() -> Int32:
    return external_call["GetRenderHeight", Int32]()


def TakeScreenshot(fileName: Pointer[UInt8, origin=_]):
    external_call["TakeScreenshot", NoneType](fileName)


# Timing
def SetTargetFPS(fps: Int32):
    external_call["SetTargetFPS", NoneType](fps)


def GetFrameTime() -> Float32:
    return external_call["GetFrameTime", Float32]()


def GetTime() -> Float64:
    return external_call["GetTime", Float64]()


def GetFPS() -> Int32:
    return external_call["GetFPS", Int32]()


# Drawing Modes
def ClearBackground(color: Color):
    external_call["ClearBackground", NoneType](color)


def BeginDrawing():
    external_call["BeginDrawing", NoneType]()


def EndDrawing():
    external_call["EndDrawing", NoneType]()


def BeginMode2D(camera: Camera2D):
    external_call["BeginMode2D", NoneType](camera)


def EndMode2D():
    external_call["EndMode2D", NoneType]()


def BeginMode3D(camera: Camera3D):
    external_call["BeginMode3D", NoneType](camera)


def EndMode3D():
    external_call["EndMode3D", NoneType]()


# 2D Shapes Drawing & Collisions
def DrawPixel(posX: Int32, posY: Int32, color: Color):
    external_call["DrawPixel", NoneType](posX, posY, color)


def DrawPixelV(position: Vector2, color: Color):
    external_call["DrawPixelV", NoneType](position, color)


def DrawLine(
    startPosX: Int32,
    startPosY: Int32,
    endPosX: Int32,
    endPosY: Int32,
    color: Color,
):
    external_call["DrawLine", NoneType](
        startPosX, startPosY, endPosX, endPosY, color
    )


def DrawLineV(startPos: Vector2, endPos: Vector2, color: Color):
    external_call["DrawLineV", NoneType](startPos, endPos, color)


def DrawLineEx(
    startPos: Vector2, endPos: Vector2, thick: Float32, color: Color
):
    external_call["DrawLineEx", NoneType](startPos, endPos, thick, color)


def DrawCircle(centerX: Int32, centerY: Int32, radius: Float32, color: Color):
    external_call["DrawCircle", NoneType](centerX, centerY, radius, color)


def DrawCircleV(center: Vector2, radius: Float32, color: Color):
    external_call["DrawCircleV", NoneType](center, radius, color)


def DrawCircleLines(
    centerX: Int32, centerY: Int32, radius: Float32, color: Color
):
    external_call["DrawCircleLines", NoneType](centerX, centerY, radius, color)


def DrawCircleLinesV(center: Vector2, radius: Float32, color: Color):
    external_call["DrawCircleLinesV", NoneType](center, radius, color)


def DrawRectangle(
    posX: Int32, posY: Int32, width: Int32, height: Int32, color: Color
):
    external_call["DrawRectangle", NoneType](posX, posY, width, height, color)


def DrawRectangleV(position: Vector2, size: Vector2, color: Color):
    external_call["DrawRectangleV", NoneType](position, size, color)


def DrawRectangleRec(rec: Rectangle, color: Color):
    external_call["DrawRectangleRec", NoneType](rec, color)


def DrawRectangleLines(
    posX: Int32, posY: Int32, width: Int32, height: Int32, color: Color
):
    external_call["DrawRectangleLines", NoneType](
        posX, posY, width, height, color
    )


def DrawRectangleLinesEx(rec: Rectangle, lineThick: Float32, color: Color):
    external_call["DrawRectangleLinesEx", NoneType](rec, lineThick, color)


def DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color):
    external_call["DrawTriangle", NoneType](v1, v2, v3, color)


def CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) -> Bool:
    return external_call["CheckCollisionRecs", Bool](rec1, rec2)


def CheckCollisionCircles(
    center1: Vector2, radius1: Float32, center2: Vector2, radius2: Float32
) -> Bool:
    return external_call["CheckCollisionCircles", Bool](
        center1, radius1, center2, radius2
    )


# 3D Shapes Drawing
def DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color):
    external_call["DrawLine3D", NoneType](startPos, endPos, color)


def DrawPoint3D(position: Vector3, color: Color):
    external_call["DrawPoint3D", NoneType](position, color)


def DrawCircle3D(
    center: Vector3,
    radius: Float32,
    rotationAxis: Vector3,
    rotationAngle: Float32,
    color: Color,
):
    external_call["DrawCircle3D", NoneType](
        center, radius, rotationAxis, rotationAngle, color
    )


def DrawCube(
    position: Vector3,
    width: Float32,
    height: Float32,
    length: Float32,
    color: Color,
):
    external_call["DrawCube", NoneType](position, width, height, length, color)


def DrawCubeV(position: Vector3, size: Vector3, color: Color):
    external_call["DrawCubeV", NoneType](position, size, color)


def DrawCubeWires(
    position: Vector3,
    width: Float32,
    height: Float32,
    length: Float32,
    color: Color,
):
    external_call["DrawCubeWires", NoneType](
        position, width, height, length, color
    )


def DrawCubeWiresV(position: Vector3, size: Vector3, color: Color):
    external_call["DrawCubeWiresV", NoneType](position, size, color)


def DrawSphere(centerPos: Vector3, radius: Float32, color: Color):
    external_call["DrawSphere", NoneType](centerPos, radius, color)


def DrawSphereEx(
    centerPos: Vector3,
    radius: Float32,
    rings: Int32,
    slices: Int32,
    color: Color,
):
    external_call["DrawSphereEx", NoneType](
        centerPos, radius, rings, slices, color
    )


def DrawSphereWires(
    centerPos: Vector3,
    radius: Float32,
    rings: Int32,
    slices: Int32,
    color: Color,
):
    external_call["DrawSphereWires", NoneType](
        centerPos, radius, rings, slices, color
    )


def DrawCylinder(
    position: Vector3,
    radiusTop: Float32,
    radiusBottom: Float32,
    height: Float32,
    slices: Int32,
    color: Color,
):
    external_call["DrawCylinder", NoneType](
        position, radiusTop, radiusBottom, height, slices, color
    )


def DrawCylinderWires(
    position: Vector3,
    radiusTop: Float32,
    radiusBottom: Float32,
    height: Float32,
    slices: Int32,
    color: Color,
):
    external_call["DrawCylinderWires", NoneType](
        position, radiusTop, radiusBottom, height, slices, color
    )


def DrawPlane(centerPos: Vector3, size: Vector2, color: Color):
    external_call["DrawPlane", NoneType](centerPos, size, color)


def DrawRay(ray: Ray, color: Color):
    external_call["DrawRay", NoneType](ray, color)


def DrawGrid(slices: Int32, spacing: Float32):
    external_call["DrawGrid", NoneType](slices, spacing)


# Text & Font
def DrawFPS(posX: Int32, posY: Int32):
    external_call["DrawFPS", NoneType](posX, posY)


def DrawText(
    text: Pointer[UInt8, origin=_],
    posX: Int32,
    posY: Int32,
    fontSize: Int32,
    color: Color,
):
    external_call["DrawText", NoneType](text, posX, posY, fontSize, color)


def MeasureText(text: Pointer[UInt8, origin=_], fontSize: Int32) -> Int32:
    return external_call["MeasureText", Int32](text, fontSize)


# Textures
def DrawTexture(texture: Texture, posX: Int32, posY: Int32, tint: Color):
    external_call["DrawTexture", NoneType](texture, posX, posY, tint)


def DrawTextureV(texture: Texture, position: Vector2, tint: Color):
    external_call["DrawTextureV", NoneType](texture, position, tint)


def DrawTextureEx(
    texture: Texture,
    position: Vector2,
    rotation: Float32,
    scale: Float32,
    tint: Color,
):
    external_call["DrawTextureEx", NoneType](
        texture, position, rotation, scale, tint
    )


def DrawTextureRec(
    texture: Texture, source: Rectangle, position: Vector2, tint: Color
):
    external_call["DrawTextureRec", NoneType](texture, source, position, tint)


# Input: Keyboard
def IsKeyPressed(key: Int32) -> Bool:
    return external_call["IsKeyPressed", Bool](key)


def IsKeyDown(key: Int32) -> Bool:
    return external_call["IsKeyDown", Bool](key)


def IsKeyReleased(key: Int32) -> Bool:
    return external_call["IsKeyReleased", Bool](key)


def IsKeyUp(key: Int32) -> Bool:
    return external_call["IsKeyUp", Bool](key)


def SetExitKey(key: Int32):
    external_call["SetExitKey", NoneType](key)


def GetKeyPressed() -> Int32:
    return external_call["GetKeyPressed", Int32]()


def GetCharPressed() -> Int32:
    return external_call["GetCharPressed", Int32]()


# Input: Mouse
def IsMouseButtonPressed(button: Int32) -> Bool:
    return external_call["IsMouseButtonPressed", Bool](button)


def IsMouseButtonDown(button: Int32) -> Bool:
    return external_call["IsMouseButtonDown", Bool](button)


def IsMouseButtonReleased(button: Int32) -> Bool:
    return external_call["IsMouseButtonReleased", Bool](button)


def IsMouseButtonUp(button: Int32) -> Bool:
    return external_call["IsMouseButtonUp", Bool](button)


def GetMouseX() -> Int32:
    return external_call["GetMouseX", Int32]()


def GetMouseY() -> Int32:
    return external_call["GetMouseY", Int32]()


def GetMousePosition() -> Vector2:
    return external_call["GetMousePosition", Vector2]()


def GetMouseDelta() -> Vector2:
    return external_call["GetMouseDelta", Vector2]()


def GetMouseWheelMove() -> Float32:
    return external_call["GetMouseWheelMove", Float32]()


# Camera
def UpdateCamera(camera: Pointer[Camera3D, origin=_], mode: Int32):
    external_call["UpdateCamera", NoneType](camera, mode)


# Audio
def InitAudioDevice():
    external_call["InitAudioDevice", NoneType]()


def CloseAudioDevice():
    external_call["CloseAudioDevice", NoneType]()


def IsAudioDeviceReady() -> Bool:
    return external_call["IsAudioDeviceReady", Bool]()


def SetMasterVolume(volume: Float32):
    external_call["SetMasterVolume", NoneType](volume)


def GetMasterVolume() -> Float32:
    return external_call["GetMasterVolume", Float32]()


def PlaySound(sound: Sound):
    external_call["PlaySound", NoneType](sound)


def StopSound(sound: Sound):
    external_call["StopSound", NoneType](sound)


def PauseSound(sound: Sound):
    external_call["PauseSound", NoneType](sound)


def ResumeSound(sound: Sound):
    external_call["ResumeSound", NoneType](sound)


def IsSoundPlaying(sound: Sound) -> Bool:
    return external_call["IsSoundPlaying", Bool](sound)


def SetSoundVolume(sound: Sound, volume: Float32):
    external_call["SetSoundVolume", NoneType](sound, volume)
