(
s.boot;
SuperDirt.start;
OSCFunc({|msg| msg.postln}, 'status.reply', s.addr);
s.status;
)