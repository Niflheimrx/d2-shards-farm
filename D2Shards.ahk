SendMode Input ; Also for performance and stability reasons
SetWorkingDir %A_ScriptDir% ; Initializes this script from the current directory
#MaxThreadsPerHotkey 2 ; Limit system resource utilization

; Guide:
; This script takes literal screen bounds from the application window. To ensure compatability with most systems run the game as Fullscreen Windowed (you can use Alt+Enter to use it) and set your resolution to 1360 x 768.
; Open your character menu from the F1 screen then press F7 to initialize the script
; This script will buy the leggings from the bugged set (because my Titan didn't have the class item from the collections menu lol)
; Therefore, you should only have 1 legging in your inventory which is your currently equipped one. This script will delete any additional leggings from your inventory.

; Notes:
; This script assumes you have ~250k glimmer ready, it is designed to loop until you are low on glimmer. If you want to cancel the script runtime, just press F7 again and will stop on the next screen.
; If you see that the script is not going to the correct spots for the farm, STOP THE SCRIPT IMMEDIATELY. Check the guide above then try again.

F7::
Toggle := !Toggle

loop, 10
{
	If !Toggle
		break
		
	; -------------------------------------------------------------------------
	; Initializes runtime from the character screen, each section will have a check in-case we need to break a loop
	; -------------------------------------------------------------------------

	If !Toggle
		break

	; Go to the collections screen from the character menu
	MouseMove, 775, 67
	Sleep, 600
	Click
	Sleep, 1200

	If !Toggle
		break

	; Enter the armor collections screen
	MouseMove, 640, 297
	Sleep, 600
	Click
	Sleep, 1200

	If !Toggle
		break

	; Go to the leveling armor section
	MouseMove, 264, 617
	Sleep, 600
	Click
	Sleep, 600

	If !Toggle
		break

	; Go to the last page for this section
	MouseMove, 1287, 437
	Sleep, 600
	Click
	Sleep, 600

	If !Toggle
		break

	; Hover over the leggings
	MouseMove, 729, 657
	Sleep, 600

	If !Toggle
		break

	; Get 9 copies of this legging
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600
	Click d
	Sleep, 3200
	Click u
	Sleep, 600

	If !Toggle
		break

	; Exit armor menu and go back to the collections screen
	Send {Esc down}
	Sleep, 150
	Send {Esc up}
	Sleep, 1200

	If !Toggle
		break

	; Go back to the character menu
	MouseMove, 1011, 67
	Sleep, 600
	Click
	Sleep, 600

	If !Toggle
		break

	; Hover over the leggings to bring up the newly acquired leggings
	MouseMove, 991, 487
	Sleep, 600

	If !Toggle
		break

	; Go the first new legging
	MouseMove, 1068, 487
	Sleep, 600

	If !Toggle
		break

	; Dismantle all the new pieces
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200
	Send {f down}
	Sleep, 1250
	Send {f up}
	Sleep, 1200

	; Then go back to the start of this loop
}
Return