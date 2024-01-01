// Check if the sound "BGM" (background music) is not currently playing
if (!audio_is_playing(BGM)) 
{
    // If not playing, play the sound "BGM" at volume 100, and loop it (true)
    audio_play_sound(BGM, 100, true);
}

// Set the gain (volume) of the sound "BGM" to the global variable "global.musicVolume"
// The third argument (0) is the priority, which is not used in this case
audio_sound_gain(BGM, global.musicVolume, 0);










