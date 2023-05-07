"Resource/UI/SpectatorGUI.res"
{
	"SpectatorGUI"
	{
		"ControlName"	"Frame"
		"fieldName"		"SpectatorGUI"
		"tall"			"480"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}
	"topbar"
	{
		"ControlName"	"Panel"
		"fieldName"		"topbar"
		"xpos"			"0"
		"ypos"			"0"
		"tall"			"52"
		"wide"			"640"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}
	"bottombarblank"
	{
		"ControlName"	"Panel"
		"fieldName"		"bottombarblank"
		"xpos"			"0"
		"ypos"			"428"
		"tall"			"55"		// this needs to match the size of BottomBar
		"wide"			"640"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}
	"playerlabel"
	{
		"ControlName"	"Label"
		"fieldName"		"playerlabel"
		"xpos"			"c-175"
		"ypos"			"441"
		"wide"			"350"
		"tall"			"26"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"font"			"SpectatorGUIPlayerLabel"
		"tabPosition"	"0"
		"textAlignment"	"center"
	}

	"DividerBar"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"DividerBar"
		"xpos"			"r94"
		"ypos"			"12"
		"wide"			"1"
		"tall"			"30"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"fillcolor"		"BorderBright"
		"labelText"		""
		"textAlignment"	"center"
	}
	"timerclock"
	{
		"ControlName"	"Label"
		"fieldName"		"timerclock"
		"xpos"			"r86"
		"ypos"			"24"
		"wide"			"15"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
		"labelText"		""
		"font"		"IconsSmall"
	}
	"timerlabel"
	{
		"ControlName"	"Label"
		"fieldName"		"timerlabel"
		"xpos"			"r72"
		"ypos"			"24"
		"wide"			"40"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
	}
	"extrainfo"                         // Map Label
	{
		"ControlName"	"Label"
		"fieldName"		"extrainfo"
		"xpos"			"r110"
		"ypos"			"12"
		"wide"			"150"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"font"			"SpectatorGUITitleLabel"
		"labelText"		""
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
	}
	"titlelabel"
	{
		"ControlName"	"Label"
		"fieldName"		"titlelabel"
		"xpos"			"16"
		"ypos"			"16"
		"wide"			"320"
		"tall"			"20"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"font"			"SpectatorGUITitleLabel"
		"labelText"		""
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
	}
	"statuslabel"
	{
		"ControlName"	"Label"
		"fieldName"		"statuslabel"
		"xpos"			"20"
		"ypos"			"12"
		"wide"			"150"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"font"			"SpectatorGUITitleLabel"
		"labelText"		"YOU ARE DEAD"
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
	}
	
	"hintlabel"
	{
		"ControlName"	"Label"
		"fieldName"		"hintlabel"
		"xpos"			"30"
		"ypos"			"30"
		"wide"			"150"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"font"			"SpectatorGUITitleLabel"
		"labelText"		"press space to jump"
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
	}
}