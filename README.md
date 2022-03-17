# fweelin_config
Some configurations to [freewheeling](https://github.com/free-wheeling/freewheeling) (Looper software : )


coreinterface.xml : compatible with azerty keybord + french version of the help window  
pckeyboard.xml : compatible with azerty keybord.  
Those two are a version of https://sourceforge.net/p/freewheeling/mailman/message/27197011/ with help window improved

footswitch.xml : A very simple configuration for non midi footswitch  
You could have to change the footswitch the "joystick=0 and button=0" because of the configuration of your footswitch. An easy way to know is to launch fweelin in your terminal and activate the debuggin mode (MAJ + Enter). Then you should see your joystick and button number when pressing your footswitch.

Usage : put the xml files in your folder ~/.fwweelin and a reference to footswitch.xml in coreinterface.xml (maybe turn off the reference to dancemat and oder joysick interface).

See my [video demo](https://www.youtube.com/watch?v=GuMLe-jBf4I) 
