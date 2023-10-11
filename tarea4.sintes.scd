s.boot;
/

~sec1.play;
~sec1.stop;

	(
Pdef(\sec16,
	Pbind(\instrument, \wnoise,
	\dur, 1/5,
\amp, Pseq([0.6, 0, 0.6, 0.6, 0, 0.6, 0.6, 0, 0.6, 0, 0.6, 0.6, 0.6, 0.6, 0, 0.6],inf),
		\out, 20
)).stop
);



