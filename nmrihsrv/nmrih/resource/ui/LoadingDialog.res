"Resource/UI/LoadingDialog.res"
{
	"LoadingDialog"
	{
		"ControlName"	"Panel"
		"fieldName"	"LoadingDialog"
		"xpos"		"0"
		"ypos"		"0"
		"wide"		"f0"
		"tall"		"480"
		"visible"	"1"
		"enabled"	"1"
		"bgcolor_override"	"46 43 42 255"
	}
	
	"LoadingImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"LoadingImage"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"480"
		"visible"		"1"
		"enabled"		"1"
		"image"			""
		"scaleImage"		"1"
	}

	"StatusLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"StatusLabel"
		"font"			"LoadingText"
		"textAlignment"		"center"
		//"xpos"			"128" // HARDCODED OH CRAP
		"ypos"			"452"
		"zpos"			"12"
		"wide"			"f272"
		"tall"			"30"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"wrap"			"1"
	}
	
	"LoadingProgress"
	{
		"ControlName"		"ProgressBar"
		"fieldName"		"LoadingProgress"
		"xpos"		"r200"
		"ypos"		"466"
		"zpos"		"12"
		"wide"		"160"
		"tall"		"8"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
	}
	
	"VACImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"VACImage"
		"xpos"		"r28"
		"ypos"		"458"
		"zpos"		"12"
		"wide"		"32"
		"tall"		"32"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"border"		""
		"scaleimage"	"1"
		"image"		"resource/icon_vac"
	}
	
	"HintLabel"
	{
		"ControlName"		"Label"
		"fieldName"		"HintLabel"
		"font"			"LoadingHintText"
		"textAlignment"		"center"
		"xpos"			"35"
		"ypos"			"2"
		"zpos"			"12"
		"wide"			"f272"
		"tall"			"30"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"wrap"			"1"
	}
	
	"HintImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"HintImage"
		"xpos"			"10"
		"ypos"			"8"
		"zpos"			"12"
		"wide"		"16"
		"tall"		"16"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"border"		""
		"scaleimage"	"1"
		"image"		"hints/hint_generic"
	}
}
