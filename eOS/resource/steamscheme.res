///////////////////////////////////////////////////////////
// old-style vgui description file
// currently used only for the BaseSettings, Colors LayoutTemplates and Fonts sections
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"TransparentBlack"		"0 0 0 128"
		"Black"				"0 0 0 255"
		"Blank"				"1 1 1 0"
		"TestColor"			"255 0 0 255"

		// scheme-specific colors	
		"OffWhite"			"216 222 211 255"
		"DullGreen"			"216 222 211 255"
		"Maize"				"196 181 80 255"
		
		"LightGrayBG"			"121 126 121 255"
		"GrayBG"			"73 78 73 255"
		"GrayBG2"			"82 89 78 255"
		
		SecBG				GrayBG2

		"ClayBG"			"70 70 70 255"
		"ClayButtonBG"			"87 88 88 255"
		"ClayEnabled"			"85 88 82 255"
		"ClayKeyFocus"			"89 92 77 255"
		"ClayMouseDown"			"85 85 85 255"
		"ClayDisabledText"		"128 134 126 255"
		"ClayLightGreen"		"173 181 168 255"	// frame button (close X) etc
		"ClayDimLightGreen"		"166 172 162 255"	// frame button and title without focus etc
		"LightClayBG"			"104 106 101 255"	// property sheet interior, active tab
		"LightClayButtonBG"		"125 128 120 255"	// buttons on property sheet interior, active tab
		"DarkClayBG"			"47 49 45 255"		// shadow
		"p_ClayMouseDown"		"94 94 94 255"
		"ClaySheetBottom"		"92 89 87 255"

		"MaizeBG"			"145 134 60 255"	// background color of any selected text or menu item

		"GreenBG"			"76 88 68 255"
		"LightGreenBG"			"90 106 80 255"		// darker background color
		"DarkGreenBG"			"62 70 55 255"		// background color of text edit panes (chat, text entries, etc.)
		
		"DisabledText1"			"117 128 111 255"	// disabled text
		"DisabledText2"			"40 46 34 255"		// overlay color for disabled text (to give that inset look

		"NotificationBodyText"		"White"
		
		// button state text colors
		"Normal"			"143 146 141 255"
		"Over"				"196 181 80 255"		// same as Maize
		"Down"				"35 36 33 255"

		// background colors

		// titlebar colors
		"TitleDimText"			"136 145 128 255"
		"TitleBG"			"TestColor"
		"TitleDimBG"			"TestColor"
		
		// border colors
		"BorderBright"			"128 128 128 255"	// the lit side of a control
		"BorderDark"			"40 46 34 255"		// the dark/unlit side of a control
		"BorderSelection"		"0 0 0 255"		// the additional border color for displaying the default/selected button
	}
	

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
	}
	
	//////////////////////// layout /////////////////////////////
	//
	// describes default layouts for controls that have and control their own children
	// works just like a normal settings .res file, except only positioning attributes are recognized
	LayoutTemplates
	{
		Frame
		{
			frame_menu
			{
				visible	0	// hidden
			}
			
			frame_title
			{
				xpos	68
				xpos	0 [$OSX]
				ypos	1
				wide	r68
				wide	max [$OSX]
				tall	32
				tall	24 [$OSX]
				AutoResize	1
			}
			
			frame_captiongrip
			{
				xpos	0
				ypos	0
				wide	max
				tall	32
				tall	24 [$OSX]
				AutoResize	1
			}
			
			frame_minimize
			{				
				xpos	36
				xpos	28 [$OSX]
				
				ypos	4
				
				wide	24
				tall	24
				
				wide	20 [$OSX]
				tall	20 [$OSX]
				
				PinCorner	0
			}
			
			frame_maximize
			{
				xpos	r59
				xpos	48 [$OSX]
				ypos	4
				wide	20 
				tall	20
				visible 0 [!$OSX]
				PinCorner	1
				PinCorner	0 [$OSX]
			}			
			frame_close
			{
				xpos	6
				xpos	8 [$OSX]
				
				ypos	4
				
				wide	24
				tall	24
				
				wide	20 [$OSX]
				tall	20 [$OSX]
				
				PinCorner	0
			}

			frame_brGrip
			{
				xpos	r15
				ypos	r15
				wide	14
				tall	14
				PinCorner	3
			}
		}
		
		PropertyDialog
		{
			sheet
			{
				xpos	9
				ypos	26
				wide	r9
				tall	r48
			}
			
			// these buttons are still a bit special - if some of them are hidden, they shuffle
			// across taking the place of other buttons to make sure there aren't gaps
			ApplyButton
			{
				xpos	r101
				ypos	r36
				wide	92
				tall	24
			}
			
			CancelButton
			{
				xpos	9999
				ypos	9999
				wide	0
				tall	0
			}
			
			OKButton
			{
				xpos	r304
				ypos	r36
				wide	92
				tall	24
			}
		}
		
		WizardPanel
		{
			subpanel
			{
				xpos	8
				ypos	28
				wide	r8
				tall	r48
				AutoResize	3
			}
		
			PrevButton
			{
				xpos	r204
				ypos	r36
				tall	24
				wide	92
				PinCorner	3
			}
			NextButton
			{
				xpos	r108
				ypos	r36
				tall	24
				wide	92
				PinCorner	3
			}
			CancelButton
			{
				xpos	9999
				ypos	9999
				wide	0
				tall	0
			}
			FinishButton
			{
				xpos	r108
				ypos	r36
				tall	24
				wide	92
				PinCorner	3
			}
		}
	
	}

	//
	//////////////////////// FONTS /////////////////////////////
	//
	// !! legacy, should set fonts in the style for a control
	// this is just for reference by the code
	
	Fonts
	{
		"Default"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"13"
				"weight"	"0"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"15"
				"weight"	"1000"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"13"
				"weight"	"800"
				"underline" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"11"
				"weight"	"800"
			}
		}
		ListSmall
		{
			1
			{
				name		Arial
				tall		12
				weight		0
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"800"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"18"
				"weight"	"0"
			}
		}
		"UiBold"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"14"
				"weight"	"1000"
			}
		}
		"HeadlineLarge"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"22"
				"weight"	"1000"
				"antialias" "1"
			}
		}
		"UiHeadline"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"13"
				"weight"	"0"
			}
		}
		"MenuLarge"
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"16"
				"weight"	"600"
				"antialias" "1"
			}
		}
		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}
		MarlettLarge
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"16"
				"weight"	"0"
				"symbol"	"1"
			}
	
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		"Lucida Console"
				"name"		"Monaco" [$OSX]
				"tall"		"10"
				"weight"	"0"
			}
		}
		"ConsoleText"
		{
			"1"
			{
				"name"		"Lucida Console"
				"name"		"Monaco" [$OSX]
				"tall"		"10"
				"weight"	"500"
			}
		}
		FriendsSmall
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"800"
			}
		}
		FriendsMedium
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"13"
				"weight"	"800"
			}
		}

		FriendsVerySmall
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"0"
			}
		}
		FriendsVerySmallUnderline
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"12"
				"weight"	"0"
				"underline"	"1"
			}
		}
		OverlayTaskbarFont
		{
			"1"
			{
				"name"		"Arial"
				"tall"		"16"
				"weight"	"1000"
			}
		}
	}
}
