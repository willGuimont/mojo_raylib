"""Raylib primitive types and C-compatible structs."""

from std.ffi import c_int, c_uint, c_float, c_char, c_void
from std.memory import Pointer

# ===-----------------------------------------------------------------------===#
# Vector2
# ===-----------------------------------------------------------------------===#


struct Vector2(ImplicitlyCopyable, TrivialRegisterPassable):
    """Vector2 type (2 float components)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var x: Float32
    var y: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self, x: Float32 = 0.0, y: Float32 = 0.0):
        self.x = x
        self.y = y

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.x, existing.y)


# ===-----------------------------------------------------------------------===#
# Vector3
# ===-----------------------------------------------------------------------===#


struct Vector3(ImplicitlyCopyable, TrivialRegisterPassable):
    """Vector3 type (3 float components)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var x: Float32
    var y: Float32
    var z: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        x: Float32 = 0.0,
        y: Float32 = 0.0,
        z: Float32 = 0.0,
    ):
        self.x = x
        self.y = y
        self.z = z

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.x, existing.y, existing.z)


# ===-----------------------------------------------------------------------===#
# Vector4
# ===-----------------------------------------------------------------------===#


struct Vector4(ImplicitlyCopyable, TrivialRegisterPassable):
    """Vector4 type (4 float components)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var x: Float32
    var y: Float32
    var z: Float32
    var w: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        x: Float32 = 0.0,
        y: Float32 = 0.0,
        z: Float32 = 0.0,
        w: Float32 = 0.0,
    ):
        self.x = x
        self.y = y
        self.z = z
        self.w = w

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.x, existing.y, existing.z, existing.w)


# ===-----------------------------------------------------------------------===#
# Quaternion
# ===-----------------------------------------------------------------------===#


struct Quaternion(ImplicitlyCopyable, TrivialRegisterPassable):
    """Quaternion type (4 float components)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var x: Float32
    var y: Float32
    var z: Float32
    var w: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        x: Float32 = 0.0,
        y: Float32 = 0.0,
        z: Float32 = 0.0,
        w: Float32 = 1.0,
    ):
        self.x = x
        self.y = y
        self.z = z
        self.w = w

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.x, existing.y, existing.z, existing.w)


# ===-----------------------------------------------------------------------===#
# Matrix
# ===-----------------------------------------------------------------------===#


struct Matrix(ImplicitlyCopyable):
    """Matrix 4x4 type (column-major layout)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var m0: Float32
    var m4: Float32
    var m8: Float32
    var m12: Float32
    var m1: Float32
    var m5: Float32
    var m9: Float32
    var m13: Float32
    var m2: Float32
    var m6: Float32
    var m10: Float32
    var m14: Float32
    var m3: Float32
    var m7: Float32
    var m11: Float32
    var m15: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.m0 = 1.0
        self.m4 = 0.0
        self.m8 = 0.0
        self.m12 = 0.0
        self.m1 = 0.0
        self.m5 = 1.0
        self.m9 = 0.0
        self.m13 = 0.0
        self.m2 = 0.0
        self.m6 = 0.0
        self.m10 = 1.0
        self.m14 = 0.0
        self.m3 = 0.0
        self.m7 = 0.0
        self.m11 = 0.0
        self.m15 = 1.0

    def __copyinit__(out self: Self, existing: Self):
        self.m0 = existing.m0
        self.m4 = existing.m4
        self.m8 = existing.m8
        self.m12 = existing.m12
        self.m1 = existing.m1
        self.m5 = existing.m5
        self.m9 = existing.m9
        self.m13 = existing.m13
        self.m2 = existing.m2
        self.m6 = existing.m6
        self.m10 = existing.m10
        self.m14 = existing.m14
        self.m3 = existing.m3
        self.m7 = existing.m7
        self.m11 = existing.m11
        self.m15 = existing.m15


# ===-----------------------------------------------------------------------===#
# Color
# ===-----------------------------------------------------------------------===#


struct Color(ImplicitlyCopyable, TrivialRegisterPassable):
    """Color RGBA type (4 unsigned byte components)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var r: UInt8
    var g: UInt8
    var b: UInt8
    var a: UInt8

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self, r: UInt8 = 0, g: UInt8 = 0, b: UInt8 = 0, a: UInt8 = 255
    ):
        self.r = r
        self.g = g
        self.b = b
        self.a = a

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.r, existing.g, existing.b, existing.a)


# ===-----------------------------------------------------------------------===#
# Rectangle
# ===-----------------------------------------------------------------------===#


struct Rectangle(ImplicitlyCopyable, TrivialRegisterPassable):
    """Rectangle type (position and size)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var x: Float32
    var y: Float32
    var width: Float32
    var height: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        x: Float32 = 0.0,
        y: Float32 = 0.0,
        width: Float32 = 0.0,
        height: Float32 = 0.0,
    ):
        self.x = x
        self.y = y
        self.width = width
        self.height = height

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.x, existing.y, existing.width, existing.height)


# ===-----------------------------------------------------------------------===#
# Image
# ===-----------------------------------------------------------------------===#


struct Image:
    """Image data type (RAM pixel data)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var data: Pointer[c_void, origin=_]
    var width: Int32
    var height: Int32
    var mipmaps: Int32
    var format: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.data = Pointer[c_void, origin=_]()
        self.width = 0
        self.height = 0
        self.mipmaps = 0
        self.format = 0


# ===-----------------------------------------------------------------------===#
# Texture
# ===-----------------------------------------------------------------------===#


struct Texture:
    """Texture2D data type (VRAM GPU texture)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var id: UInt32
    var width: Int32
    var height: Int32
    var mipmaps: Int32
    var format: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.id = 0
        self.width = 0
        self.height = 0
        self.mipmaps = 0
        self.format = 0


# ===-----------------------------------------------------------------------===#
# RenderTexture
# ===-----------------------------------------------------------------------===#


struct RenderTexture:
    """RenderTexture2D type (render target for 2D/3D)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var id: UInt32
    var texture: Texture
    var depth: Texture

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.id = 0
        self.texture = Texture()
        self.depth = Texture()


# ===-----------------------------------------------------------------------===#
# NPatchInfo
# ===-----------------------------------------------------------------------===#


struct NPatchInfo:
    """NPatchInfo type (9-patch information)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var source: Rectangle
    var left: Int32
    var top: Int32
    var right: Int32
    var bottom: Int32
    var layout: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.source = Rectangle()
        self.left = 0
        self.top = 0
        self.right = 0
        self.bottom = 0
        self.layout = 0


# ===-----------------------------------------------------------------------===#
# GlyphInfo
# ===-----------------------------------------------------------------------===#


struct GlyphInfo:
    """Font glyph info type."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var value: Int32
    var offsetX: Int32
    var offsetY: Int32
    var advanceX: Int32
    var image: Image

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.value = 0
        self.offsetX = 0
        self.offsetY = 0
        self.advanceX = 0
        self.image = Image()


# ===-----------------------------------------------------------------------===#
# Font
# ===-----------------------------------------------------------------------===#


struct Font:
    """Font data type (includes texture and glyphs)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var baseSize: Int32
    var glyphCount: Int32
    var glyphPadding: Int32
    var texture: Texture
    var recs: Pointer[Rectangle, origin=_]
    var glyphs: Pointer[GlyphInfo, origin=_]

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.baseSize = 0
        self.glyphCount = 0
        self.glyphPadding = 0
        self.texture = Texture()
        self.recs = Pointer[Rectangle, origin=_]()
        self.glyphs = Pointer[GlyphInfo, origin=_]()


# ===-----------------------------------------------------------------------===#
# Camera3D
# ===-----------------------------------------------------------------------===#


struct Camera3D(ImplicitlyCopyable):
    """Camera3D type (position, target, up, fovy, projection)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var position: Vector3
    var target: Vector3
    var up: Vector3
    var fovy: Float32
    var projection: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        position: Vector3 = Vector3(0.0, 0.0, 0.0),
        target: Vector3 = Vector3(0.0, 0.0, 0.0),
        up: Vector3 = Vector3(0.0, 1.0, 0.0),
        fovy: Float32 = 45.0,
        projection: Int32 = 0,
    ):
        self.position = position
        self.target = target
        self.up = up
        self.fovy = fovy
        self.projection = projection

    def __copyinit__(out self: Self, existing: Self):
        self = Self(
            existing.position,
            existing.target,
            existing.up,
            existing.fovy,
            existing.projection,
        )


# ===-----------------------------------------------------------------------===#
# Camera2D
# ===-----------------------------------------------------------------------===#


struct Camera2D(ImplicitlyCopyable):
    """Camera2D type (offset, target, rotation, zoom)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var offset: Vector2
    var target: Vector2
    var rotation: Float32
    var zoom: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        offset: Vector2 = Vector2(0.0, 0.0),
        target: Vector2 = Vector2(0.0, 0.0),
        rotation: Float32 = 0.0,
        zoom: Float32 = 1.0,
    ):
        self.offset = offset
        self.target = target
        self.rotation = rotation
        self.zoom = zoom

    def __copyinit__(out self: Self, existing: Self):
        self = Self(
            existing.offset, existing.target, existing.rotation, existing.zoom
        )


# ===-----------------------------------------------------------------------===#
# Mesh
# ===-----------------------------------------------------------------------===#


struct Mesh:
    """Mesh type (vertex and triangle data)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var vertexCount: Int32
    var triangleCount: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.vertexCount = 0
        self.triangleCount = 0


# ===-----------------------------------------------------------------------===#
# Shader
# ===-----------------------------------------------------------------------===#


struct Shader:
    """Shader type (compiled shader program)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var id: UInt32
    var locs: Pointer[Int32, origin=_]

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.id = 0
        self.locs = Pointer[Int32, origin=_]()


# ===-----------------------------------------------------------------------===#
# MaterialMap
# ===-----------------------------------------------------------------------===#


struct MaterialMap:
    """MaterialMap type (texture, color, value)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var texture: Texture
    var color: Color
    var value: Float32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.texture = Texture()
        self.color = Color()
        self.value = 0.0


# ===-----------------------------------------------------------------------===#
# Material
# ===-----------------------------------------------------------------------===#


struct Material:
    """Material type (shader and material maps)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var shader: Shader
    var maps: Pointer[MaterialMap, origin=_]
    var params: Pointer[Float32, origin=_]

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.shader = Shader()
        self.maps = Pointer[MaterialMap, origin=_]()
        self.params = Pointer[Float32, origin=_]()


# ===-----------------------------------------------------------------------===#
# Model
# ===-----------------------------------------------------------------------===#


struct Model:
    """Model type (3D mesh and material hierarchy)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var transform: Matrix
    var meshCount: Int32
    var materialCount: Int32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.transform = Matrix()
        self.meshCount = 0
        self.materialCount = 0


# ===-----------------------------------------------------------------------===#
# Ray
# ===-----------------------------------------------------------------------===#


struct Ray(ImplicitlyCopyable, TrivialRegisterPassable):
    """Ray type (origin position and direction)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var position: Vector3
    var direction: Vector3

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        position: Vector3 = Vector3(),
        direction: Vector3 = Vector3(),
    ):
        self.position = position
        self.direction = direction

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.position, existing.direction)


# ===-----------------------------------------------------------------------===#
# RayCollision
# ===-----------------------------------------------------------------------===#


struct RayCollision(ImplicitlyCopyable):
    """RayCollision type (hit details)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var hit: Bool
    var distance: Float32
    var point: Vector3
    var normal: Vector3

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.hit = False
        self.distance = 0.0
        self.point = Vector3()
        self.normal = Vector3()

    def __copyinit__(out self: Self, existing: Self):
        self = Self()
        self.hit = existing.hit
        self.distance = existing.distance
        self.point = existing.point
        self.normal = existing.normal


# ===-----------------------------------------------------------------------===#
# BoundingBox
# ===-----------------------------------------------------------------------===#


struct BoundingBox(ImplicitlyCopyable, TrivialRegisterPassable):
    """BoundingBox type (min and max Vector3 corners)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var min: Vector3
    var max: Vector3

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(
        out self,
        min: Vector3 = Vector3(),
        max: Vector3 = Vector3(),
    ):
        self.min = min
        self.max = max

    def __copyinit__(out self: Self, existing: Self):
        self = Self(existing.min, existing.max)


# ===-----------------------------------------------------------------------===#
# Wave
# ===-----------------------------------------------------------------------===#


struct Wave:
    """Wave audio data type (PCM audio samples)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var frameCount: UInt32
    var sampleRate: UInt32
    var sampleSize: UInt32
    var channels: UInt32
    var data: Pointer[c_void, origin=_]

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.frameCount = 0
        self.sampleRate = 0
        self.sampleSize = 0
        self.channels = 0
        self.data = Pointer[c_void, origin=_]()


# ===-----------------------------------------------------------------------===#
# AudioStream
# ===-----------------------------------------------------------------------===#


struct AudioStream:
    """AudioStream type (raw audio stream buffer)."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var buffer: Pointer[c_void, origin=_]
    var processor: Pointer[c_void, origin=_]
    var sampleRate: UInt32
    var sampleSize: UInt32
    var channels: UInt32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.buffer = Pointer[c_void, origin=_]()
        self.processor = Pointer[c_void, origin=_]()
        self.sampleRate = 0
        self.sampleSize = 0
        self.channels = 0


# ===-----------------------------------------------------------------------===#
# Sound
# ===-----------------------------------------------------------------------===#


struct Sound:
    """Sound audio source type."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var stream: AudioStream
    var frameCount: UInt32

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.stream = AudioStream()
        self.frameCount = 0


# ===-----------------------------------------------------------------------===#
# Music
# ===-----------------------------------------------------------------------===#


struct Music:
    """Music audio stream type."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var stream: AudioStream
    var frameCount: UInt32
    var looping: Bool
    var ctxType: Int32
    var ctxData: Pointer[c_void, origin=_]

    # ===-------------------------------------------------------------------===#
    # Life cycle methods
    # ===-------------------------------------------------------------------===#

    def __init__(out self):
        self.stream = AudioStream()
        self.frameCount = 0
        self.looping = False
        self.ctxType = 0
        self.ctxData = Pointer[c_void, origin=_]()
