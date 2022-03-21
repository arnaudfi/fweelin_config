# fweelin_config
Some configurations to [freewheeling](https://github.com/free-wheeling/freewheeling) (Looper software : )


_coreinterface.xml_ : compatible with azerty keybord + french version of the help window  
_pckeyboard.xml_ : compatible with azerty keybord.  
Those two are a version of https://sourceforge.net/p/freewheeling/mailman/message/27197011/ with help window improved

_footswitch.xml_ : A very simple configuration for non midi footswitch (reconize as a joystick by fweelin)   
You could have to change the "joystick=0 and button=0" because of the configuration of your footswitch. An easy way to know is to launch fweelin in your terminal and activate the debuggin mode (MAJ + Enter). Then you should see your joystick and button number when pressing your footswitch.  
Usage : put the xml files in your folder ~/.fweelin and a reference to footswitch.xml in coreinterface.xml (maybe turn off the reference to dancemat and other joystick interface).

_fweelin_scene_manager.sh_ : script to archive or delete a scene with its loops. It is a version of [goarchive-scene](https://github.com/free-wheeling/freewheeling/blob/master/scripts/goarchive-scene) with GUI made with zenity. Make it executable and click on it !  

Whant to see about fweelin ? See my [video demo](https://www.youtube.com/watch?v=GuMLe-jBf4I) 
