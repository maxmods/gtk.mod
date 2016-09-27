
' createlabel.bmx

SuperStrict 

Framework Gtk.GTK3MaxGUI
Import BRL.eventqueue

Local window:TGadget

window = CreateWindow("create label test",30,20,320,480, Null,WINDOW_TITLEBAR|WINDOW_STATUS)'|WINDOW_RESIZABLE)

CreateLabel("A plain label",10,10,280,52,window)
Local lb2:TGadget = CreateLabel("A label with LABEL_FRAME",10,80,280,60,window,LABEL_FRAME)
CreateLabel("A label with LABEL_SUNKENFRAME",10,150,280,60,window,LABEL_SUNKENFRAME)
CreateLabel("not applicable",10,220,280,54,window,LABEL_SEPARATOR)

SetGadgetToolTip(lb2, "I have a tooltip!")

While WaitEvent()<>EVENT_WINDOWCLOSE
Print CurrentEvent.tostring()


Wend

