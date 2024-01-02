setting = false

pausecreate=0
pausedestroy =0 
mainroom =0




volume = 5 // 0-10 
//fade to 5

setvol=volume/10

mainmenubut=[]
//play bgm on loop
//audio_play_sound(snd_BGM, 0, true,volume);
audio_play_sound(snd_BGM, 1, true);
audio_sound_gain(snd_BGM, setvol, 0);
