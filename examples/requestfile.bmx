SuperStrict
' requestfile.bmx

Framework gtk.gtk3maxgui

Local filter:String = "Image Files:png,jpg,bmp;Text Files:txt;BlitzMax Files:bmx;All Files:*"
Local filename:String = RequestFile( "Select graphic file to open",filter$ )

Print filename

