from raylib.types import Sound
from raylib import c


def init_audio_device():
    c.InitAudioDevice()


def close_audio_device():
    c.CloseAudioDevice()


def is_audio_device_ready() -> Bool:
    return c.IsAudioDeviceReady()


def set_master_volume(volume: Float32):
    c.SetMasterVolume(volume)


def play_sound(sound: Sound):
    c.PlaySound(sound)


def stop_sound(sound: Sound):
    c.StopSound(sound)


def pause_sound(sound: Sound):
    c.PauseSound(sound)


def resume_sound(sound: Sound):
    c.ResumeSound(sound)


def is_sound_playing(sound: Sound) -> Bool:
    return c.IsSoundPlaying(sound)
