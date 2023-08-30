(
SynthDef(\misinte,{|frec=440, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([0,1,0],[0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);
(
~sec1=Pdef(\sec,
	Pbind(\instrument, \misinte,
		\dur, Pseq([0.25, 0.25, 0.125],inf),
		\frec, Pseq([340,500,550],inf),
		\amp,1
	)
);
)

~sec1.play;
~secl.stop;