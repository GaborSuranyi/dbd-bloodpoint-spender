CoordMode, Pixel, Screen
CoordMode, Mouse, Screen	

missCount = 0

searchBoxXStart = 0
searchBoxYStart = 0
searchBoxXEnd = 0
searchBoxYEnd = 0

circleCut = images\circle_cut_sections_vertical_xs2.png

if A_ScreenHeight = 1440
{
	searchBoxXStart = 280
	searchBoxYStart = 410
	searchBoxXEnd = 1040
	searchBoxYEnd = 1160
}

if A_ScreenHeight = 1080
{
	searchBoxXStart = 200
	searchBoxYStart = 290
	searchBoxXEnd = 770
	searchBoxYEnd = 860

	circleCut = images\circle_cut_1080p.png
}

if A_ScreenHeight = 1200
{
	searchBoxXStart = 200
	searchBoxYStart = 390
	searchBoxXEnd = 770
	searchBoxYEnd = 960
}

^Tab::
	missCount = 0
	Loop, 400 {
		if (missCount = 10) {
			return
		}
		Random, RandMix , -15, 15

		ImageSearch, fx, fy, 0, 0, A_ScreenWidth*0.4,A_ScreenHeight, *70 images\prestige.png
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy, 5
			Click, Down
			Sleep, 2000+RandMix
			Click, Up
			MouseMove, fx-10, fy, 5
			Sleep, 2000+RandMix
		}

		ImageSearch, fx, fy, 0, 0, A_ScreenWidth*0.4,A_ScreenHeight, *40 images\c2c.png
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy, 1
			Click, Down
			Sleep, 325+RandMix
			Click, Up
			;MouseMove, fx-10, fy, 2
			Sleep, 20+RandMix
		}		

		ImageSearch, fx, fy, searchBoxXStart, searchBoxYStart, searchBoxXEnd, searchBoxYEnd, *40 %circleCut%
		if !ErrorLevel {
			missCount = 0
			MouseMove, fx+35+(RandMix/3), fy+5+(RandMix/3), 5
			Click, Down
			Sleep, 475+RandMix
			Click, Up
			;MouseMove, fx-10, fy, 5
			Sleep, 15+RandMix
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