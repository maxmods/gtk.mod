' createtextfield.bmx

SuperStrict 

Framework Gtk.gtk3maxgui
Import brl.eventqueue

Local window:TGadget
Local textfield:TGadget
Local button:TGadget

window=CreateWindow("My Window",30,20,320,200)

textfield=CreateTextField(4,4,120,22,window)
SetGadgetText( textfield,"A textfield gadget" )

SetGadgetToolTip(textfield, "Enter some text...")

' we need an OK button to catch return key

button=CreateButton("OK",170,4,80,24,window,BUTTON_OK)

SetGadgetToolTip(button, "Click me for some action!")

ActivateGadget textfield

While WaitEvent()
Print CurrentEvent.tostring()
	Select EventID()
	Case EVENT_GADGETACTION
		Select EventSource()
			Case textfield
				Print "textfield updated"
			Case button
				Print "return key / OK button pressed"
				Print "Text = " + TextFieldText(textfield)
		End Select
	Case EVENT_WINDOWCLOSE
		End
	End Select
Wend

