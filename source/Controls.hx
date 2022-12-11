package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';
	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';
	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';
	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';
	var B10 = 'b10';
	var B11 = 'b11';
	var B12 = 'b12';
	var B13 = 'b13';
	var B14 = 'b14';
	var B15 = 'b15';
	var B16 = 'b16';
	var B17 = 'b17';
	var B18 = 'b18';
	var B19 = 'b12';
	var B20 = 'b20';
	var B21 = 'b21';
	var B22 = 'b22';
	var B23 = 'b23';
	var B24 = 'b24';
	var B25 = 'b25';
	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';
	var B10_P = 'b10-press';
	var B11_P = 'b11-press';
	var B12_P = 'b12-press';
	var B13_P = 'b13-press';
	var B14_P = 'b14-press';
	var B15_P = 'b15-press';
	var B16_P = 'b16-press';
	var B17_P = 'b17-press';
	var B18_P = 'b18-press';
	var B19_P = 'b19-press';
	var B20_P = 'b20-press';
	var B21_P = 'b21-press';
	var B22_P = 'b22-press';
	var B23_P = 'b23-press';
	var B24_P = 'b24-press';
	var B25_P = 'b25-press';
	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';
	var B10_R = 'b10-release';
	var B11_R = 'b11-release';
	var B12_R = 'b12-release';
	var B13_R = 'b13-release';
	var B14_R = 'b14-release';
	var B15_R = 'b15-release';
	var B16_R = 'b16-release';
	var B17_R = 'b17-release';
	var B18_R = 'b18-release';
	var B19_R = 'b19-release';
	var B20_R = 'b20-release';
	var B21_R = 'b21-release';
	var B22_R = 'b22-release';
	var B23_R = 'b23-release';
	var B24_R = 'b24-release';
	var B25_R = 'b25-release';
}

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;

	A1;
	A2;
	A3;
	A4;
	A5;
	A6;
	A7;
	B1;
	B2;
	B3;
	B4;
	B5;
	B6;
	B7;
	B8;
	B9;
	B10;
	B11;
	B12;
	B13;
	B14;
	B15;
	B16;
	B17;
	B18;
	B19;
	B20;
	B21;
	B22;
	B23;
	B24;
	B25;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);

	var _a1 = new FlxActionDigital(Action.A1);
	var _a2 = new FlxActionDigital(Action.A2);
	var _a3 = new FlxActionDigital(Action.A3);
	var _a4 = new FlxActionDigital(Action.A4);
	var _a5 = new FlxActionDigital(Action.A5);
	var _a6 = new FlxActionDigital(Action.A6);
	var _a7 = new FlxActionDigital(Action.A7);

	var _a1P = new FlxActionDigital(Action.A1_P);
	var _a2P = new FlxActionDigital(Action.A2_P);
	var _a3P = new FlxActionDigital(Action.A3_P);
	var _a4P = new FlxActionDigital(Action.A4_P);
	var _a5P = new FlxActionDigital(Action.A5_P);
	var _a6P = new FlxActionDigital(Action.A6_P);
	var _a7P = new FlxActionDigital(Action.A7_P);

	var _a1R = new FlxActionDigital(Action.A1_R);
	var _a2R = new FlxActionDigital(Action.A2_R);
	var _a3R = new FlxActionDigital(Action.A3_R);
	var _a4R = new FlxActionDigital(Action.A4_R);
	var _a5R = new FlxActionDigital(Action.A5_R);
	var _a6R = new FlxActionDigital(Action.A6_R);
	var _a7R = new FlxActionDigital(Action.A7_R);

	var _b1 = new FlxActionDigital(Action.B1);
	var _b2 = new FlxActionDigital(Action.B2);
	var _b3 = new FlxActionDigital(Action.B3);
	var _b4 = new FlxActionDigital(Action.B4);
	var _b5 = new FlxActionDigital(Action.B5);
	var _b6 = new FlxActionDigital(Action.B6);
	var _b7 = new FlxActionDigital(Action.B7);
	var _b8 = new FlxActionDigital(Action.B8);
	var _b9 = new FlxActionDigital(Action.B9);
	var _b10 = new FlxActionDigital(Action.B10);
	var _b11 = new FlxActionDigital(Action.B11);
	var _b12 = new FlxActionDigital(Action.B12);
	var _b13 = new FlxActionDigital(Action.B13);
	var _b14 = new FlxActionDigital(Action.B14);
	var _b15 = new FlxActionDigital(Action.B15);
	var _b16 = new FlxActionDigital(Action.B16);
	var _b17 = new FlxActionDigital(Action.B17);
	var _b18 = new FlxActionDigital(Action.B18);
	var _b19 = new FlxActionDigital(Action.B19);
	var _b20 = new FlxActionDigital(Action.B20);
	var _b21 = new FlxActionDigital(Action.B21);
	var _b22 = new FlxActionDigital(Action.B22);
	var _b23 = new FlxActionDigital(Action.B23);
	var _b24 = new FlxActionDigital(Action.B24);
	var _b25 = new FlxActionDigital(Action.B25);

	// var _b26 = new FlxActionDigital(Action.B26);
	var _b1P = new FlxActionDigital(Action.B1_P);
	var _b2P = new FlxActionDigital(Action.B2_P);
	var _b3P = new FlxActionDigital(Action.B3_P);
	var _b4P = new FlxActionDigital(Action.B4_P);
	var _b5P = new FlxActionDigital(Action.B5_P);
	var _b6P = new FlxActionDigital(Action.B6_P);
	var _b7P = new FlxActionDigital(Action.B7_P);
	var _b8P = new FlxActionDigital(Action.B8_P);
	var _b9P = new FlxActionDigital(Action.B9_P);
	var _b10P = new FlxActionDigital(Action.B10_P);
	var _b11P = new FlxActionDigital(Action.B11_P);
	var _b12P = new FlxActionDigital(Action.B12_P);
	var _b13P = new FlxActionDigital(Action.B13_P);
	var _b14P = new FlxActionDigital(Action.B14_P);
	var _b15P = new FlxActionDigital(Action.B15_P);
	var _b16P = new FlxActionDigital(Action.B16_P);
	var _b17P = new FlxActionDigital(Action.B17_P);
	var _b18P = new FlxActionDigital(Action.B18_P);
	var _b19P = new FlxActionDigital(Action.B19_P);
	var _b20P = new FlxActionDigital(Action.B20_P);
	var _b21P = new FlxActionDigital(Action.B21_P);
	var _b22P = new FlxActionDigital(Action.B22_P);
	var _b23P = new FlxActionDigital(Action.B23_P);
	var _b24P = new FlxActionDigital(Action.B24_P);
	var _b25P = new FlxActionDigital(Action.B25_P);

	var _b1R = new FlxActionDigital(Action.B1_R);
	var _b2R = new FlxActionDigital(Action.B2_R);
	var _b3R = new FlxActionDigital(Action.B3_R);
	var _b4R = new FlxActionDigital(Action.B4_R);
	var _b5R = new FlxActionDigital(Action.B5_R);
	var _b6R = new FlxActionDigital(Action.B6_R);
	var _b7R = new FlxActionDigital(Action.B7_R);
	var _b8R = new FlxActionDigital(Action.B8_R);
	var _b9R = new FlxActionDigital(Action.B9_R);
	var _b10R = new FlxActionDigital(Action.B10_R);
	var _b11R = new FlxActionDigital(Action.B11_R);
	var _b12R = new FlxActionDigital(Action.B12_R);
	var _b13R = new FlxActionDigital(Action.B13_R);
	var _b14R = new FlxActionDigital(Action.B14_R);
	var _b15R = new FlxActionDigital(Action.B15_R);
	var _b16R = new FlxActionDigital(Action.B16_R);
	var _b17R = new FlxActionDigital(Action.B17_R);
	var _b18R = new FlxActionDigital(Action.B18_R);
	var _b19R = new FlxActionDigital(Action.B19_R);
	var _b20R = new FlxActionDigital(Action.B20_R);
	var _b21R = new FlxActionDigital(Action.B21_R);
	var _b22R = new FlxActionDigital(Action.B22_R);
	var _b23R = new FlxActionDigital(Action.B23_R);
	var _b24R = new FlxActionDigital(Action.B24_R);
	var _b25R = new FlxActionDigital(Action.B25_R);

	var byName:Map<String, FlxActionDigital> = [];

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var A1(get, never):Bool;

	inline function get_A1()
	{
		return _a1.check();
	}

	public var A2(get, never):Bool;

	inline function get_A2()
	{
		return _a2.check();
	}

	public var A3(get, never):Bool;

	inline function get_A3()
	{
		return _a3.check();
	}

	public var A4(get, never):Bool;

	inline function get_A4()
	{
		return _a4.check();
	}

	public var A5(get, never):Bool;

	inline function get_A5()
	{
		return _a5.check();
	}

	public var A6(get, never):Bool;

	inline function get_A6()
	{
		return _a6.check();
	}

	public var A7(get, never):Bool;

	inline function get_A7()
	{
		return _a7.check();
	}

	public var A1_P(get, never):Bool;

	inline function get_A1_P()
	{
		return _a1P.check();
	}

	public var A2_P(get, never):Bool;

	inline function get_A2_P()
	{
		return _a2P.check();
	}

	public var A3_P(get, never):Bool;

	inline function get_A3_P()
	{
		return _a3P.check();
	}

	public var A4_P(get, never):Bool;

	inline function get_A4_P()
	{
		return _a4P.check();
	}

	public var A5_P(get, never):Bool;

	inline function get_A5_P()
	{
		return _a5P.check();
	}

	public var A6_P(get, never):Bool;

	inline function get_A6_P()
	{
		return _a6P.check();
	}

	public var A7_P(get, never):Bool;

	inline function get_A7_P()
	{
		return _a7P.check();
	}

	public var A1_R(get, never):Bool;

	inline function get_A1_R()
	{
		return _a1R.check();
	}

	public var A2_R(get, never):Bool;

	inline function get_A2_R()
	{
		return _a2R.check();
	}

	public var A3_R(get, never):Bool;

	inline function get_A3_R()
	{
		return _a3R.check();
	}

	public var A4_R(get, never):Bool;

	inline function get_A4_R()
	{
		return _a4R.check();
	}

	public var A5_R(get, never):Bool;

	inline function get_A5_R()
	{
		return _a5R.check();
	}

	public var A6_R(get, never):Bool;

	inline function get_A6_R()
	{
		return _a6R.check();
	}

	public var A7_R(get, never):Bool;

	inline function get_A7_R()
	{
		return _a7R.check();
	}

	public var B1(get, never):Bool;

	inline function get_B1()
	{
		return _b1.check();
	}

	public var B2(get, never):Bool;

	inline function get_B2()
	{
		return _b2.check();
	}

	public var B3(get, never):Bool;

	inline function get_B3()
	{
		return _b3.check();
	}

	public var B4(get, never):Bool;

	inline function get_B4()
	{
		return _b4.check();
	}

	public var B5(get, never):Bool;

	inline function get_B5()
	{
		return _b5.check();
	}

	public var B6(get, never):Bool;

	inline function get_B6()
	{
		return _b6.check();
	}

	public var B7(get, never):Bool;

	inline function get_B7()
	{
		return _b7.check();
	}

	public var B8(get, never):Bool;

	inline function get_B8()
	{
		return _b8.check();
	}

	public var B9(get, never):Bool;

	inline function get_B9()
	{
		return _b9.check();
	}

	public var B10(get, never):Bool;

	inline function get_B10()
	{
		return _b10.check();
	}

	public var B11(get, never):Bool;

	inline function get_B11()
	{
		return _b11.check();
	}

	public var B12(get, never):Bool;

	inline function get_B12()
	{
		return _b12.check();
	}

	public var B13(get, never):Bool;

	inline function get_B13()
	{
		return _b13.check();
	}

	public var B14(get, never):Bool;

	inline function get_B14()
	{
		return _b14.check();
	}

	public var B15(get, never):Bool;

	inline function get_B15()
	{
		return _b15.check();
	}

	public var B16(get, never):Bool;

	inline function get_B16()
	{
		return _b16.check();
	}

	public var B17(get, never):Bool;

	inline function get_B17()
	{
		return _b17.check();
	}

	public var B18(get, never):Bool;

	inline function get_B18()
	{
		return _b18.check();
	}

	public var B19(get, never):Bool;

	inline function get_B19()
	{
		return _b19.check();
	}

	public var B20(get, never):Bool;

	inline function get_B20()
	{
		return _b20.check();
	}

	public var B21(get, never):Bool;

	inline function get_B21()
	{
		return _b21.check();
	}

	public var B22(get, never):Bool;

	inline function get_B22()
	{
		return _b22.check();
	}

	public var B23(get, never):Bool;

	inline function get_B23()
	{
		return _b23.check();
	}

	public var B24(get, never):Bool;

	inline function get_B24()
	{
		return _b24.check();
	}

	public var B25(get, never):Bool;

	inline function get_B25()
	{
		return _b25.check();
	}

	public var B1_P(get, never):Bool;

	inline function get_B1_P()
	{
		return _b1P.check();
	}

	public var B2_P(get, never):Bool;

	inline function get_B2_P()
	{
		return _b2P.check();
	}

	public var B3_P(get, never):Bool;

	inline function get_B3_P()
	{
		return _b3P.check();
	}

	public var B4_P(get, never):Bool;

	inline function get_B4_P()
	{
		return _b4P.check();
	}

	public var B5_P(get, never):Bool;

	inline function get_B5_P()
	{
		return _b5P.check();
	}

	public var B6_P(get, never):Bool;

	inline function get_B6_P()
	{
		return _b6P.check();
	}

	public var B7_P(get, never):Bool;

	inline function get_B7_P()
	{
		return _b7P.check();
	}

	public var B8_P(get, never):Bool;

	inline function get_B8_P()
	{
		return _b8P.check();
	}

	public var B9_P(get, never):Bool;

	inline function get_B9_P()
	{
		return _b9P.check();
	}

	public var B10_P(get, never):Bool;

	inline function get_B10_P()
	{
		return _b10P.check();
	}

	public var B11_P(get, never):Bool;

	inline function get_B11_P()
	{
		return _b11P.check();
	}

	public var B12_P(get, never):Bool;

	inline function get_B12_P()
	{
		return _b12P.check();
	}

	public var B13_P(get, never):Bool;

	inline function get_B13_P()
	{
		return _b13P.check();
	}

	public var B14_P(get, never):Bool;

	inline function get_B14_P()
	{
		return _b14P.check();
	}

	public var B15_P(get, never):Bool;

	inline function get_B15_P()
	{
		return _b15P.check();
	}

	public var B16_P(get, never):Bool;

	inline function get_B16_P()
	{
		return _b16P.check();
	}

	public var B17_P(get, never):Bool;

	inline function get_B17_P()
	{
		return _b17P.check();
	}

	public var B18_P(get, never):Bool;

	inline function get_B18_P()
	{
		return _b18P.check();
	}

	public var B19_P(get, never):Bool;

	inline function get_B19_P()
	{
		return _b19P.check();
	}

	public var B20_P(get, never):Bool;

	inline function get_B20_P()
	{
		return _b20P.check();
	}

	public var B21_P(get, never):Bool;

	inline function get_B21_P()
	{
		return _b21P.check();
	}

	public var B22_P(get, never):Bool;

	inline function get_B22_P()
	{
		return _b22P.check();
	}

	public var B23_P(get, never):Bool;

	inline function get_B23_P()
	{
		return _b23P.check();
	}

	public var B24_P(get, never):Bool;

	inline function get_B24_P()
	{
		return _b24P.check();
	}

	public var B25_P(get, never):Bool;

	inline function get_B25_P()
	{
		return _b25P.check();
	}

	public var B1_R(get, never):Bool;

	inline function get_B1_R()
	{
		return _b1R.check();
	}

	public var B2_R(get, never):Bool;

	inline function get_B2_R()
	{
		return _b2R.check();
	}

	public var B3_R(get, never):Bool;

	inline function get_B3_R()
	{
		return _b3R.check();
	}

	public var B4_R(get, never):Bool;

	inline function get_B4_R()
	{
		return _b4R.check();
	}

	public var B5_R(get, never):Bool;

	inline function get_B5_R()
	{
		return _b5R.check();
	}

	public var B6_R(get, never):Bool;

	inline function get_B6_R()
	{
		return _b6R.check();
	}

	public var B7_R(get, never):Bool;

	inline function get_B7_R()
	{
		return _b7R.check();
	}

	public var B8_R(get, never):Bool;

	inline function get_B8_R()
	{
		return _b8R.check();
	}

	public var B9_R(get, never):Bool;

	inline function get_B9_R()
	{
		return _b9R.check();
	}

	public var B10_R(get, never):Bool;

	inline function get_B10_R()
	{
		return _b10R.check();
	}

	public var B11_R(get, never):Bool;

	inline function get_B11_R()
	{
		return _b11R.check();
	}

	public var B12_R(get, never):Bool;

	inline function get_B12_R()
	{
		return _b12R.check();
	}

	public var B13_R(get, never):Bool;

	inline function get_B13_R()
	{
		return _b13R.check();
	}

	public var B14_R(get, never):Bool;

	inline function get_B14_R()
	{
		return _b14R.check();
	}

	public var B15_R(get, never):Bool;

	inline function get_B15_R()
	{
		return _b15R.check();
	}

	public var B16_R(get, never):Bool;

	inline function get_B16_R()
	{
		return _b16R.check();
	}

	public var B17_R(get, never):Bool;

	inline function get_B17_R()
	{
		return _b17R.check();
	}

	public var B18_R(get, never):Bool;

	inline function get_B18_R()
	{
		return _b18R.check();
	}

	public var B19_R(get, never):Bool;

	inline function get_B19_R()
	{
		return _b19R.check();
	}

	public var B20_R(get, never):Bool;

	inline function get_B20_R()
	{
		return _b20R.check();
	}

	public var B21_R(get, never):Bool;

	inline function get_B21_R()
	{
		return _b21R.check();
	}

	public var B22_R(get, never):Bool;

	inline function get_B22_R()
	{
		return _b22R.check();
	}

	public var B23_R(get, never):Bool;

	inline function get_B23_R()
	{
		return _b23R.check();
	}

	public var B24_R(get, never):Bool;

	inline function get_B24_R()
	{
		return _b24R.check();
	}

	public var B25_R(get, never):Bool;

	inline function get_B25_R()
	{
		return _b25R.check();
	}

	public function new(name, scheme = None)
	{
		super(name);

		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);

		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);
		add(_b10);
		add(_b11);
		add(_b12);
		add(_b13);
		add(_b14);
		add(_b15);
		add(_b16);
		add(_b17);
		add(_b18);
		add(_b19);
		add(_b20);
		add(_b21);
		add(_b22);
		add(_b23);
		add(_b24);
		add(_b25);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);
		add(_b10P);
		add(_b11P);
		add(_b12P);
		add(_b13P);
		add(_b14P);
		add(_b15P);
		add(_b16P);
		add(_b17P);
		add(_b18P);
		add(_b19P);
		add(_b20P);
		add(_b21P);
		add(_b22P);
		add(_b23P);
		add(_b24P);
		add(_b25P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);
		add(_b10R);
		add(_b11R);
		add(_b12R);
		add(_b13R);
		add(_b14R);
		add(_b15R);
		add(_b16R);
		add(_b17R);
		add(_b18R);
		add(_b19R);
		add(_b20R);
		add(_b21R);
		add(_b22R);
		add(_b23R);
		add(_b24R);
		add(_b25R);

		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;

			case A1: _a1;
			case A2: _a2;
			case A3: _a3;
			case A4: _a4;
			case A5: _a5;
			case A6: _a6;
			case A7: _a7;

			case B1: _b1;
			case B2: _b2;
			case B3: _b3;
			case B4: _b4;
			case B5: _b5;
			case B6: _b6;
			case B7: _b7;
			case B8: _b8;
			case B9: _b9;
			case B10: _b10;
			case B11: _b11;
			case B12: _b12;
			case B13: _b13;
			case B14: _b14;
			case B15: _b15;
			case B16: _b16;
			case B17: _b17;
			case B18: _b18;
			case B19: _b19;
			case B20: _b20;
			case B21: _b21;
			case B22: _b22;
			case B23: _b23;
			case B24: _b24;
			case B25: _b25;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);

			case A1:
				func(_a1, PRESSED);
				func(_a1P, JUST_PRESSED);
				func(_a1R, JUST_RELEASED);
			case A2:
				func(_a2, PRESSED);
				func(_a2P, JUST_PRESSED);
				func(_a2R, JUST_RELEASED);
			case A3:
				func(_a3, PRESSED);
				func(_a3P, JUST_PRESSED);
				func(_a3R, JUST_RELEASED);
			case A4:
				func(_a4, PRESSED);
				func(_a4P, JUST_PRESSED);
				func(_a4R, JUST_RELEASED);
			case A5:
				func(_a5, PRESSED);
				func(_a5P, JUST_PRESSED);
				func(_a5R, JUST_RELEASED);
			case A6:
				func(_a6, PRESSED);
				func(_a6P, JUST_PRESSED);
				func(_a6R, JUST_RELEASED);
			case A7:
				func(_a7, PRESSED);
				func(_a7P, JUST_PRESSED);
				func(_a7R, JUST_RELEASED);

			case B1:
				func(_b1, PRESSED);
				func(_b1P, JUST_PRESSED);
				func(_b1R, JUST_RELEASED);
			case B2:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B3:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B4:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B5:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B6:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B7:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B8:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B9:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);
			case B10:
				func(_b10, PRESSED);
				func(_b10P, JUST_PRESSED);
				func(_b10R, JUST_RELEASED);
			case B11:
				func(_b11, PRESSED);
				func(_b11P, JUST_PRESSED);
				func(_b11R, JUST_RELEASED);
			case B12:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B13:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B14:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B15:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B16:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B17:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B18:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B19:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}

		switch (device)
		{
			case null:
				// add all
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length)
		{
			if (i == NONE)
				copyKeys.remove(i);
		}

		inline forEachBound(control, (action, state) -> addKeys(action, copyKeys, state));
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length)
		{
			if (i == NONE)
				copyKeys.remove(i);
		}

		inline forEachBound(control, (action, _) -> removeKeys(action, copyKeys));
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if (key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;

		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [X, BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
			// inline bindKeys(Control.RESET, []);
			case Duo(true):
				inline bindKeys(Control.UI_UP, [W]);
				inline bindKeys(Control.UI_DOWN, [S]);
				inline bindKeys(Control.UI_LEFT, [A]);
				inline bindKeys(Control.UI_RIGHT, [D]);
				inline bindKeys(Control.NOTE_UP, [W]);
				inline bindKeys(Control.NOTE_DOWN, [S]);
				inline bindKeys(Control.NOTE_LEFT, [A]);
				inline bindKeys(Control.NOTE_RIGHT, [D]);
				inline bindKeys(Control.ACCEPT, [G, Z]);
				inline bindKeys(Control.BACK, [H, X]);
				inline bindKeys(Control.PAUSE, [ONE]);
			// inline bindKeys(Control.RESET, [R]);
			case Duo(false):
				inline bindKeys(Control.UI_UP, [FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
			// inline bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		for (control => buttons in buttonMap)
		inline bindButtons(control, id, buttons);
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		for (control => buttons in buttonMap)
		inline bindButtons(control, id, buttons);
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}
