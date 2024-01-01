setting = false

pausecreate=0
pausedestroy =0 

volume = 0 // 0-10 
//fade to 5

setvol=volume/10


//play bgm on loop
//audio_play_sound(snd_BGM, 0, true,volume);
audio_play_sound(snd_BGM, 1, true,setvol)
audio_sound_gain(snd_BGM, 5/10, 10000);
