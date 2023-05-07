///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	//////////////////////// COLORS ///////////////////////////
	Colors
	{
		// base colors
		"Orange"			"255 255 255 255"
		"OrangeDim"			"255 0 0 125"
		"LightOrange"		"255 255 255 125"
		
		"Red"				"192 28 0 140"
		"Black"				"0 0 0 196"
		"TransparentBlack"	"0 0 0 196"
		"TransparentLightBlack"	"0 0 0 90"

		"Blank"				"0 0 0 0"
		"ForTesting"		"255 0 0 32"
		"ForTesting_Magenta"	"255 0 255 255"
		"ForTesting_MagentaDim"	"255 0 255 120"
	}
	
	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		"FgColor"			"255 255 255 100"
		"BgColor"			"0 0 0 76"

		"Panel.FgColor"			"255 255 255 100"
		"Panel.BgColor"			"0 0 0 76"
		
		"BrightFg"		"255 220 0 255"

		"DamagedBg"			"180 0 0 200"
		"DamagedFg"			"180 0 0 230"
		"BrightDamagedFg"		"255 0 0 255"

		// weapon selection colors
		"SelectionNumberFg"		"255 255 255 255"
		"SelectionTextFg"		"255 255 255 255"
		"SelectionEmptyBoxBg" 	"0 0 0 80"
		"SelectionBoxBg" 		"0 0 0 80"
		"SelectionSelectedBoxBg" "0 0 0 80"
		
		"ZoomReticleColor"	"255 220 0 255"

		// HL1-style HUD colors
		"Yellowish"			"255 160 0 255"
		"Normal"			"255 208 64 255"
		"Caution"			"255 48 0 255"

		// Top-left corner of the "Half-Life 2" on the main screen
		"Main.Title1.X"		"76"
		"Main.Title1.Y"		"184"
		"Main.Title1.Color"	"255 255 255 255"
		
		// Top-left corner of the "DEATHMATCH" on the main screen
		"Main.Title2.X"		"315"
		"Main.Title2.Y"		"222"
		"Main.Title2.Color"	"255 255 255 180"

		// Top-left corner of the menu on the main screen
		"Main.Menu.X"		"76"
		"Main.Menu.Y"		"240"

		// Blank space to leave beneath the menu on the main screen
		"Main.BottomBorder"	"32"


///HERE
		// vgui_controls color specifications
		Border.Bright					"LightOrange"		// the lit side of a control
		Border.Dark						"LightOrange"		// the dark/unlit side of a control
		Border.Selection				"Blank"				// the additional border color for displaying the default/selected button

		Button.TextColor				"Orange"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"Orange"
		Button.ArmedBgColor				"Red"
		Button.DepressedTextColor		"Orange"
		Button.DepressedBgColor			"Red"

		CheckButton.TextColor			"Orange"
		CheckButton.SelectedTextColor	"Orange"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"Orange"				// color of the check itself
		CheckButton.HighlightFgColor		"Orange"
		CheckButton.ArmedBgColor		"Blank"
		CheckButton.DepressedBgColor		"Blank"
		CheckButton.DisabledBgColor	   	"TransparentBlack"

		ComboBoxButton.ArrowColor		"Orange"
		ComboBoxButton.ArmedArrowColor	"Orange"
		ComboBoxButton.BgColor			"TransparentBlack"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.BgColor					"TransparentBlack"
		Frame.OutOfFocusBgColor			"TransparentBlack"
		Frame.FocusTransitionEffectTime	"0.1"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.1"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"Blank"
		FrameGrip.Color2				"Blank"
		FrameTitleButton.FgColor		"Orange"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"Orange"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			"" // "nmrihicon"
		FrameSystemButton.DisabledIcon	"" // "nmrihicon"
		FrameTitleBar.TextColor			"Orange"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.Font				"UiBold"		[$WIN32]
		FrameTitleBar.DisabledTextColor	"Orange"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"Orange"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"Orange"
		Label.TextColor					"Orange"
		Label.TextBrightColor			"Orange"
		Label.SelectedTextColor			"Orange"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"Blank"
		Label.DisabledFgColor2			"LightOrange"

		ListPanel.TextColor					"Orange"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"Red"
		ListPanel.SelectedOutOfFocusBgColor	"Red"
		ListPanel.EmptyListInfoTextColor	"Orange"

		Menu.TextColor					"Orange"
		Menu.BgColor					"TransparentBlack"
		Menu.ArmedTextColor				"Orange"
		Menu.ArmedBgColor				"Red"
		Menu.TextInset					"6"

		Chat.TypingText					"Orange"

		Panel.FgColor					"OrangeDim"
		Panel.BgColor					"blank"

		ProgressBar.FgColor				"Orange"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"Orange"
		PropertySheet.SelectedTextColor	"Orange"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"Orange"
		RadioButton.SelectedTextColor	"Orange"

		RichText.TextColor				"Orange"
		RichText.BgColor				"Blank"
		RichText.SelectedTextColor		"Orange"
		RichText.SelectedBgColor		"OrangeDim"

		ScrollBarButton.FgColor				"Orange"
		ScrollBarButton.BgColor				"Blank"
		ScrollBarButton.ArmedFgColor		"Orange"
		ScrollBarButton.ArmedBgColor		"Red"
		ScrollBarButton.DepressedFgColor	"Orange"
		ScrollBarButton.DepressedBgColor	"Red"

		ScrollBarSlider.FgColor				"Blank"			// nob color
		ScrollBarSlider.BgColor				"Blank"			// slider background color

		SectionedListPanel.HeaderTextColor	"Orange"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"Orange"
		SectionedListPanel.BrightTextColor	"Orange"
		SectionedListPanel.BgColor			"TransparentLightBlack"
		SectionedListPanel.SelectedTextColor			"Black"
		SectionedListPanel.SelectedBgColor				"Red"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"0 0 0 75"

		Slider.NobColor				"Orange"
		Slider.TextColor			"127 140 127 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"Orange"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"Orange"
		TextEntry.DisabledTextColor	"Orange"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Orange"
		TextEntry.SelectedBgColor	"Red"
		TextEntry.OutOfFocusSelectedBgColor	"Red"
		TextEntry.FocusEdgeColor	"TransparentBlack"

		ToggleButton.SelectedTextColor	"Orange"

		Tooltip.TextColor			"Orange"
		Tooltip.BgColor				"Red"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		"FgColor"		"Orange"
		"BgColor"		"TransparentBlack"

		"ViewportBG"		"Blank"
		"team0"			"204 204 204 255" // Spectators
		"team1"			"Blank" // CT's
		"team2"			"Blank" // T's

		"MapDescriptionText"	"Orange" // the text used in the map description window
		"CT_Blue"			"Blank"
		"T_Red"				"Blank"
		"Hostage_Yellow"	"Panel.FgColor"
		"HudIcon_Green"		"0 160 0 255"
		"HudIcon_Red"		"160 0 0 255"

		// CHudMenu
		"ItemColor"		"255 167 42 200"	// default 255 167 42 255
		"MenuColor"		"233 208 173 255"
		"MenuBoxBg"		"0 0 0 100"

		// weapon selection colors
		"SelectionNumberFg"		"255 220 0 200"
		"SelectionTextFg"		"255 220 0 200"
		"SelectionEmptyBoxBg" 	"0 0 0 80"
		"SelectionBoxBg" 		"0 0 0 80"
		"SelectionSelectedBoxBg" "0 0 0 190"

		// Hint message colors
		"HintMessageFg"			"255 255 255 255"
		"HintMessageBg" 		"0 0 0 60"

		"ProgressBarFg"			"255 30 13 255"

		// Top-left corner of the "Counter-Strike" on the main screen
		"Main.Title1.X"		"32"
		"Main.Title1.Y"		"180"
		"Main.Title1.Color"	"255 255 255 255"

		// Top-left corner of the "SOURCE" on the main screen
		"Main.Title2.X"		"380"	
		"Main.Title2.Y"		"205"
		"Main.Title2.Color"	"255 255 255 80"

		// Top-left corner of the "BETA" on the main screen
		"Main.Title3.X"		"460"
		"Main.Title3.Y"		"-10"
		"Main.Title3.Color"	"255 255 0 255"

		// Top-left corner of the menu on the main screen
		"Main.Menu.X"		"32"
		"Main.Menu.Y"		"248"

		// Blank space to leave beneath the menu on the main screen
		"Main.BottomBorder"	"32"
	}
	
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Terminus (TTF)"
				"tall"		"12"
				"weight"	"0"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Terminus (TTF)"
				"tall"		"12"
				"weight"	"0"
			}
		}
		DefaultLarge
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"36"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		Default
		{
			"1"	[$WIN32]
			{
				"name"		"Verdana"
				"tall"		"9"
				"weight"	"700"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"12" [!$LINUX]
				"tall"		"16" [$LINUX]
				"weight"	"700"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14" [!$LINUX]
				"tall"		"19" [$LINUX]
				"weight"	"900"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20" [!$LINUX]
				"tall"		"24" [$LINUX]
				"weight"	"900"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"9" [!$LINUX]
				"tall"		"11" [$LINUX]
				"weight"	"900"
				"antialias" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"480 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"13"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F"
				"antialias"	"1"
			}
			"6"
			{
				"name"		"Arial"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"480 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"13"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"768 1023"
				"antialias"	"1"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"	"1024 1199"
				"antialias"	"1"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias"	"1"
			}
			"6"
			{
				"name"		"Verdana"
				"tall"		"12"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
			}
			"7"
			{
				"name"		"Arial"
				"tall"		"11"
				"range" 		"0x0000 0x00FF"
				"weight"		"0"
			}
		}
		"MenuTitle"
		{
			"1"
			{
				"name"		"Verdana Bold"
				"tall"		"18"
				"weight"	"500"
			}
		}
		WeaponIcons
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"64"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1"
			}
		}
		WeaponIconsSelected
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"64"
				"weight"	"0"
				"antialias" "1"
				"blur"		"5"
				"scanlines"	"2"
				"additive"	"1"
				"custom"	"1"
			}
		}
		Crosshairs
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"40" [!$OSX]
				"tall"		"41" [$OSX]
				"weight"	"0"
				"antialias" "0"
				"additive"	"1"
				"custom"	"1"
				"yres"		"1 10000"
			}
		}
		QuickInfo
		{
			"1"
			{
				"name"		"HL2cross"
				"tall"		"28" [!$OSX]
				"tall"		"50" [$OSX]
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1" [!$OSX]
			}
		}
		HudNumbers
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"24"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"32"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"38"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"24"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		HudNumbersGlow
		{
			"1"
			{
				//"name"		"HalfLife2"
				"name"		"Source Serif Pro SemiBold"
				"tall"		"44"
				"weight"	"0"
				"blur"		"2"
				//"scanlines" "2"
				"antialias" "1"
				"additive"	"0"
			}
		}
		HudNumbersSmall
		{
			"1"
			{
				//"name"		"HalfLife2"
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"1000"
				"additive"	"0"
				"antialias" "1"
			}
		}
		HudNumbersSurvival
		{
			"1"
			{
				//"name"		"HalfLife2"
				"name"		"Source Serif Pro SemiBold"
				"tall"		"38"
				"weight"	"0"
				"additive"	"0"
				"antialias" "1"
			}
		}
		HudSelectionNumbers
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"11"
				"weight"	"700"
				"antialias" "1"
				"additive"	"1"
			}
		}
		HudHintTextLarge
		{
			"1"
			{
				"name"		"Verdana" [!$OSX]
				"name"		"Helvetica Bold" [$OSX]
				"tall"		"14"
				"weight"	"1000"
				"antialias" "1"
				"additive"	"1"
			}
		}
		HudHintTextSmall
		{
			"1"
			{
				"name"		"Verdana" [!$OSX]
				"name"		"Helvetica" [$OSX]
				"tall"		"11"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
			}
		}
		HudSelectionText
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"8"
				"weight"	"700"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"10"
				"weight"	"700"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"900"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"900"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"17"
				"weight"	"1000"
				"antialias" "1"
				"yres"	"1200 10000"
			}
		}
		BudgetLabel
		{
			"1"
			{
				"name"		"Terminus (TTF)"
				"tall"		"12"
				"weight"	"0"
				"outline"	"1"
			}
		}
		DebugOverlay
		{
			"1"
			{
				"name"		"Terminus (TTF)"
				"tall"		"12"
				"weight"	"0"
				"outline"	"1"
			}
		}
		"CloseCaption_Normal"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
			}
		}
		"CloseCaption_Italic"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"tall"		"26"
				"weight"	"0"
				"italic"	"1"
				"antialias" "1"
			}
		}
		"CloseCaption_Bold"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"tall"		"26"
				"weight"	"900"
				"antialias" "1"
			}
		}
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"tall"		"26"
				"weight"	"900"
				"italic"	"1"
				"antialias" "1"
			}
		}
		"CloseCaption_Small"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"18"
 				"tall_hidef"	"24"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
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
		"Trebuchet24"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
				"range"		"0x0000 0x007F"	//	Basic Latin
				"antialias" "1"
				"additive"	"1"
			}
		}
		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}
		ClientTitleFont
		{
			"1"
			{
				"name"  "HL2MP"
				"tall"  "46"
				"weight" "0"
				"additive" "0"
				"antialias" "1"
			}
		}
		CreditsLogo
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"128"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1"
			}
		}
		CreditsText
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
				"antialias" "1"
				"additive"	"1"
			}
		}
		CreditsOutroLogos
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"48"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
				"custom"	"1"
			}
		}
		CreditsOutroText
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"9"
				"weight"	"900"
				"antialias" "1"
			}
		}
		ObjectiveText
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"18"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"32"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"12"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		ObjectiveTextHeader
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"44"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"60"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		HudSurvival
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"36"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		HudSurvivalSplash
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"42"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"46"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"60"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"76"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"42"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		LoadingText
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"26"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"36"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"22"
				"weight"	"0"
				"antialias" "1"
			}
		}
		LoadingHintText
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"24"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
			}
		}
		CenterPrintText
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		CenterPrintTextAdditive
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"1"
			}
		}
		TimerText
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"24"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"28"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"34"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		PracticeEndTimer
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		RespawnEndTimer
		{
			// note that this scales with the screen resolution
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		DemoTimerText
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
				"additive"	"0"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
				"additive"	"0"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"24"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
				"additive"	"0"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"30"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
				"additive"	"0"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"ChatFont"
		{
			"1"	[$WIN32]
			{
				"name"		"Verdana"
				"tall"		"9"
				"weight"	"700"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"12" [!$LINUX]
				"tall"		"16" [$LINUX]
				"weight"	"700"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"14" [!$LINUX]
				"tall"		"19" [$LINUX]
				"weight"	"900"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Verdana"
				"tall"		"20" [!$LINUX]
				"tall"		"24" [$LINUX]
				"weight"	"900"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Verdana"
				"tall"		"9" [!$LINUX]
				"tall"		"11" [$LINUX]
				"weight"	"900"
				"antialias" "1"
			}
		}
		// SSBA: For target name HUD
		// Ugly, but we can't scale!
		"TargetID_0"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"18"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_1"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"17"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_2"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"16"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_3"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"15"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_4"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"14"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_5"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"13"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_6"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"12"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_7"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"11"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_8"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"10"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_9"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"9"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_10"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"8"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_11"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"7"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"TargetID_12"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"6"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		"HL2MPTypeDeath"
		{
		   "1"
		   {
				"name"  "HL2MP" // csd.ttf
				"tall"  "32"
				"weight" "0"
				"additive" "1"
				"antialias" "1"
				"custom" "1" [$OSX]
		   }
		}
		DeathNotices
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"17"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"19"
				"weight"	"0"
				"antialias" "1"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"21"
				"weight"	"0"
				"antialias" "1"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"23"
				"weight"	"0"
				"antialias" "1"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"17"
				"weight"	"0"
				"antialias" "1"
			}
		}
		"SpectatorGUITitleLabel"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"11"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias"	"1"
			}
		}
		"SpectatorGUIPlayerLabel"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"17"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"antialias"	"1"
			}
		}
		// Used by scoreboard and spectator UI for names which don't map in the normal fashion
		"DefaultVerySmallFallBack"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"10"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"480 599"
				"antialias"	"1"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"12"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"600 1199"
				"antialias"	"1"
			}
			"3"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"0"
				"range"		"0x0000 0x017F" //	Basic Latin, Latin-1 Supplement, Latin Extended-A
				"yres"		"1200 6000"
				"antialias"	"1"
			}
		}
		
		"InstructorTitle"
		{
			"1"
			{
				"name"			"Source Serif Pro SemiBold"
				"tall"			"20"
				"weight"		"0"
				"antialias"		"1"
			}
		}

		"InstructorKeyBindings"
		{
			"1"
			{
				"name"			"Source Serif Pro SemiBold"
				"tall"			"18"
				"weight"		"0"
				"antialias"		"1"
			}
		}

		"InstructorButtons"
		{
			"1"
			{
				"name"			"Source Serif Pro SemiBold"
				"tall"			"15"
				"weight"		"0"
				"antialias"		"1"
			}
		}

		"InstructorTitleGlow"
		{
			"1"
			{
				"name"			"Source Serif Pro SemiBold"
				"tall"			"20"
				"weight"		"0"
				"antialias"		"1"
			}
		}
		
		"PointMessageDefault"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"20"
				"weight"	"0"
				"antialias" "1"
				"additive"	"0"
			}
		}
		
		"ScoreboardHeader"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"13"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"15"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"21"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"23"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"31"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1200 10000"
			}
		}
		
		"ScoreboardRow"
		{
			"1"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"13"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1 599"
			}
			"2"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"15"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"600 767"
			}
			"3"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"21"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"768 1023"
			}
			"4"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"23"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1024 1199"
			}
			"5"
			{
				"name"		"Source Serif Pro SemiBold"
				"tall"		"31"
				"weight"	"0"
				"antialias" "1"
				"range"		"0x0000 0x017F"
				"yres"	"1200 10000"
			}
		}
	}

		//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDisabledBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BgColor"
					"offset" "1 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BgColor"
					"offset" "0 0"
				}
			}
		}

		TitleButtonDepressedBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		ScrollBarButtonBorder
		{
			"inset" "1 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		ButtonBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		FrameBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ControlBG"
					"offset" "6 2"
				}
			}
		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ComboBoxBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		MenuBorder
		{
			"inset" "1 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		BrowserBorder
		{
			"inset" "0 0 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
	}

	
	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"1"		"resource/HALFLIFE2.ttf"
		"2"		"resource/HL2MP.ttf"
		"3"		"resource/HL2crosshairs.ttf"
		"4"		"resource/marlett.ttf"
		"5"
		{
			"font" "resource/SourceSerifPro-SemiBold.ttf"
			"name" "Source Serif Pro SemiBold"
			"russian"
			{
				"range" "0x0000 0xFFFF"
			}
			"polish"
			{
				"range" "0x0000 0xFFFF"
			}
		}
		"6"		"resource/DSEG7Classic-Bold.ttf"
		"7"		"resource/TerminusTTF-4.49.1.ttf"
	}
}
