import("stdfaust.lib");
bpm2samp(t) = (60 * ma.SR/(t);
//freq= vslider("frequenza",1000,1000,5000,1.0);
beat= bpm2samp(vslider("tempo[style:knob]", 60,32,240,0.1));
process = ba.pulsen (1,beat) : fi.lowpass(128,2000);
