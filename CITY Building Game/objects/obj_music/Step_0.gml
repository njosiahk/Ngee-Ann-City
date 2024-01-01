/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check_pressed(vk_up) {
    // Increase volume when the UP arrow key is held down
    volume += 0.1;
    if volume > 1.0 {
        volume = 1.0; // Limit volume to 1.0
    }
    audio_sound_gain(BGM, volume, 0);
}

if keyboard_check_pressed(vk_down) {
    // Decrease volume when the DOWN arrow key is held down
    volume -= 0.1;
    if volume < 0.0 {
        volume = 0.0; // Limit volume to 0.0
    }
    audio_sound_gain(BGM, volume, 0);
}
*/
setvol=volume/10

audio_sound_gain(snd_BGM, setvol, 0);