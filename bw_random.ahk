CoordMode, Pixel, Screen
CoordMode, Mouse, Screen	

missCount = 0

^Tab::
	missCount = 0
	Loop, 400 {
		if (missCount = 10) {
			return
		}
		Random, RandMix , -15, 15

		ImageSearch, fx, fy, 0, 0, A_ScreenHeight, A_ScreenWidth/2, *70 images\prestige.png
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy, 5
			Click, Down
			Sleep, 2000+RandMix
			Click, Up
			MouseMove, fx-10, fy, 5
			Sleep, 2000+RandMix
		}	

		ImageSearch, fx, fy, 0, 0, A_ScreenHeight, A_ScreenWidth/2, *40 images\c2c.png
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy, 5
			Click, Down
			Sleep, 475+RandMix
			Click, Up
			MouseMove, fx-10, fy, 5
			Sleep, 50+RandMix
		}		

		ImageSearch, fx, fy, 0, 0, A_ScreenHeight, A_ScreenWidth/2, *40 images\circle_cut_sections_vertical_xs2.png
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy+5+(RandMix/3), 5
			Click, Down
			Sleep, 475+RandMix
			Click, Up
			MouseMove, fx-10, fy, 5
			Sleep, 50+RandMix
		}		
		else {
			missCount += 1
			Sleep, 250
		}
	}
	MsgBox, DoneMax
Return


+^Tab::
	missCount = 10
Return

Esc::ExitApp