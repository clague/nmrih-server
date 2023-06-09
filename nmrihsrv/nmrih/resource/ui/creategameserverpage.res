"Resource/CreateMultiplayerGameServerPage.res"
{
	"ServerPage"
	{
		"ControlName"		"CCreateGameServerPage"
		"fieldName"		"ServerPage"
		"xpos"		"0"
		"ypos"		"28"
		"wide"		"332"
		"tall"		"364"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
	}
	"MapList"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"MapList"
		"xpos"		"110"
		"ypos"		"20"
		"wide"		"170"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"5"
		"textHidden"		"0"
		"editable"		"0"
		"maxchars"		"-1"
		"NumericInputOnly"		"0"
		"unicode"		"0"
	}
	"MapLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"MapLabel"
		"xpos"		"16"
		"ypos"		"20"
		"wide"		"90"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#GameUI_Map"
		"textAlignment"		"west"
		"associate"		"MapList"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"0"
		"centerwrap"		"0"
		"textinsetx"		"0"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
	}
	"RulesetList"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"RulesetList"
		"xpos"		"110"
		"ypos"		"52"
		"wide"		"170"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"5"
		"textHidden"		"0"
		"editable"		"0"
		"maxchars"		"-1"
		"NumericInputOnly"		"0"
		"unicode"		"0"
	}
	"RulesetLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"RulesetLabel"
		"xpos"		"16"
		"ypos"		"52"
		"wide"		"90"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#GameUI_Difficulty"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"0"
		"centerwrap"		"0"
		"textinsetx"		"0"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
	}
	"RulesetMutatorButton"
	{
		"ControlName"		"Button"
		"fieldName"		"RulesetMutatorButton"
		"xpos"		"290"
		"ypos"		"52"
		"TooltipText"		"#NMRiH_Select_Mutators"
		"wide"		"20"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"*"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"0"
		"centerwrap"		"0"
		"textinsetx"		"6"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
		"default"		"0"
		"command"	"openmutatordialog"
	}
	"Divider"
	{
		"ControlName"		"Divider"
		"fieldName"		"Divider"
		"xpos"		"28"
		"ypos"		"94"
		"wide"		"280"
		"tall"		"2"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
	}
	"ChallengeCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"ChallengeCheck"
		"xpos"		"21"
		"ypos"		"107"
		"wide"		"320"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"2"
		"labelText"		"#NMRiH_ChallengeMode"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"Default"		"0"
	}
	"ChallengeLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"ChallengeLabel"
		"xpos"		"29"
		"ypos"		"135"
		"wide"		"256"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#NMRiH_Challenge_Select"
		"textAlignment"		"west"
		"associate"		""
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"0"
		"centerwrap"		"0"
		"textinsetx"		"0"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
	}
	"ChallengeList"
	{
		"ControlName"		"ComboBox"
		"fieldName"		"ChallengeList"
		"xpos"		"56"
		"ypos"		"168"
		"wide"		"200"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"5"
		"textHidden"		"0"
		"editable"		"0"
		"maxchars"		"-1"
		"NumericInputOnly"		"0"
		"unicode"		"0"
	}
	"ChallengeDesc"
	{
		"ControlName"		"Label"
		"fieldName"		"ChallengeDesc"
		"xpos"		"29"
		"ypos"		"206"
		"wide"		"256"
		"tall"		"128"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		""
		"textAlignment"		"north"
		"associate"		""
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"1"
		"centerwrap"		"0"
		"textinsetx"		"0"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
	}
	"ChallengeRecord"
	{
		"ControlName"		"Label"
		"fieldName"		"ChallengeRecord"
		"xpos"		"29"
		"ypos"		"310"
		"wide"		"256"
		"tall"		"24"
		"autoResize"		"0"
		"pinCorner"		"0"
		"RoundedCorners"		"15"
		"pin_corner_to_sibling"		"0"
		"pin_to_sibling_corner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		""
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"		"0"
		"centerwrap"		"0"
		"textinsetx"		"0"
		"textinsety"		"0"
		"auto_wide_tocontents"		"0"
		"use_proportional_insets"		"0"
	}
}
