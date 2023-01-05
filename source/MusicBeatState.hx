package;

import Controls.Control;
import Conductor.BPMChangeEvent;
import flixel.FlxG;
import flixel.addons.ui.FlxUIState;
import flixel.math.FlxRect;
import flixel.util.FlxTimer;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxGradient;
import flixel.FlxState;

class MusicBeatState extends FlxUIState
{
	private var lastBeat:Float = 0;
	private var lastStep:Float = 0;

	private var curStep:Int = 0;
	private var curBeat:Int = 0;
	private var controls(get, never):Controls;

	inline function get_controls():Controls
		return PlayerSettings.player1.controls;

	public function getAllControlsB():{normal: Array<Bool>, r: Array<Bool>, p: Array<Bool>} {
		var normal:Array<Bool> = [
			controls.B1,
			controls.B2,
			controls.B3,
			controls.B4,
			controls.B5,
			controls.B6,
			controls.B7,
			controls.B8,
			controls.B9,
			controls.B10,
			controls.B11,
			controls.B12,
			controls.B13,
			controls.B14,
			controls.B15,
			controls.B16,
			controls.B17,
			controls.B18,
			controls.B19,
			controls.B20,
			controls.B21,
			controls.B22,
			controls.B23,
			controls.B24,
			controls.B25
		];
		var r:Array<Bool> = [
			controls.B1_R,
			controls.B2_R,
			controls.B3_R,
			controls.B4_R,
			controls.B5_R,
			controls.B6_R,
			controls.B7_R,
			controls.B8_R,
			controls.B9_R,
			controls.B10_R,
			controls.B11_R,
			controls.B12_R,
			controls.B13_R,
			controls.B14_R,
			controls.B15_R,
			controls.B16_R,
			controls.B17_R,
			controls.B18_R,
			controls.B19_R,
			controls.B20_R,
			controls.B21_R,
			controls.B22_R,
			controls.B23_R,
			controls.B24_R,
			controls.B25_R
		];
		var p = [
			controls.B1_P,
			controls.B2_P,
			controls.B3_P,
			controls.B4_P,
			controls.B5_P,
			controls.B6_P,
			controls.B7_P,
			controls.B8_P,
			controls.B9_P,
			controls.B10_P,
			controls.B11_P,
			controls.B12_P,
			controls.B13_P,
			controls.B14_P,
			controls.B15_P,
			controls.B16_P,
			controls.B17_P,
			controls.B18_P,
			controls.B19_P,
			controls.B20_P,
			controls.B21_P,
			controls.B22_P,
			controls.B23_P,
			controls.B24_P,
			controls.B25_P
		];

		return {normal: normal, r: r, p: p};
	}
	public function getAllControlsA():{normal: Array<Bool>, r: Array<Bool>, p: Array<Bool>} {
		var normal:Array<Bool> = [
			controls.A1,
			controls.A2,
			controls.A3,
			controls.A4,
			controls.A5,
			controls.A6,
			controls.A7,
			/*controls.A8,
			controls.A9,
			controls.A10,
			controls.A11,
			controls.A12,
			controls.A13,
			controls.A14,
			controls.A15,
			controls.A16,
			controls.A17,
			controls.A18,
			controls.A19,
			controls.A20,
			controls.A21,
			controls.A22,
			controls.A23,
			controls.A24,
			controls.A25*/
		];
		var r:Array<Bool> = [
			controls.A1_R,
			controls.A2_R,
			controls.A3_R,
			controls.A4_R,
			controls.A5_R,
			controls.A6_R,
			controls.A7_R,
			/*controls.A8_R,
			controls.A9_R,
			controls.A10_R,
			controls.A11_R,
			controls.A12_R,
			controls.A13_R,
			controls.A14_R,
			controls.A15_R,
			controls.A16_R,
			controls.A17_R,
			controls.A18_R,
			controls.A19_R,
			controls.A20_R,
			controls.A21_R,
			controls.A22_R,
			controls.A23_R,
			controls.A24_R,
			controls.A25_R*/
		];
		var p = [
			controls.A1_P,
			controls.A2_P,
			controls.A3_P,
			controls.A4_P,
			controls.A5_P,
			controls.A6_P,
			controls.A7_P,
			/*controls.A8_P,
			controls.A9_P,
			controls.A10_P,
			controls.A11_P,
			controls.A12_P,
			controls.A13_P,
			controls.A14_P,
			controls.A15_P,
			controls.A16_P,
			controls.A17_P,
			controls.A18_P,
			controls.A19_P,
			controls.A20_P,
			controls.A21_P,
			controls.A22_P,
			controls.A23_P,
			controls.A24_P,
			controls.A25_P*/
		];

		return {normal: normal, r: r, p: p};
	}

	override function create() {
		#if MODS_ALLOWED
		if(!ClientPrefs.imagesPersist) {
			Paths.customImagesLoaded.clear();
		}
		#end
		super.create();

		// Custom made Trans out
		if(!FlxTransitionableState.skipNextTransOut) {
			openSubState(new CustomFadeTransition(1, true));
		}
		FlxTransitionableState.skipNextTransOut = false;
	}

	override function update(elapsed:Float)
	{
		//everyStep();
		var oldStep:Int = curStep;

		updateCurStep();
		updateBeat();

		if (oldStep != curStep && curStep > 0)
			stepHit();

		super.update(elapsed);
	}

	private function updateBeat():Void
	{
		curBeat = Math.floor(curStep / 4);
	}

	private function updateCurStep():Void
	{
		var lastChange:BPMChangeEvent = {
			stepTime: 0,
			songTime: 0,
			bpm: 0
		}
		for (i in 0...Conductor.bpmChangeMap.length)
		{
			if (Conductor.songPosition >= Conductor.bpmChangeMap[i].songTime)
				lastChange = Conductor.bpmChangeMap[i];
		}

		curStep = lastChange.stepTime + Math.floor(((Conductor.songPosition - ClientPrefs.noteOffset) - lastChange.songTime) / Conductor.stepCrochet);
	}

	public static function switchState(nextState:FlxState) {
		// Custom made Trans in
		var curState:Dynamic = FlxG.state;
		var leState:MusicBeatState = curState;
		if(!FlxTransitionableState.skipNextTransIn) {
			leState.openSubState(new CustomFadeTransition(0.7, false));
			if(nextState == FlxG.state) {
				CustomFadeTransition.finishCallback = function() {
					FlxG.resetState();
				};
				//trace('resetted');
			} else {
				CustomFadeTransition.finishCallback = function() {
					FlxG.switchState(nextState);
				};
				//trace('changed state');
			}
			return;
		}
		FlxTransitionableState.skipNextTransIn = false;
		FlxG.switchState(nextState);
	}

	public static function resetState() {
		MusicBeatState.switchState(FlxG.state);
	}

	public static function getState():MusicBeatState {
		var curState:Dynamic = FlxG.state;
		var leState:MusicBeatState = curState;
		return leState;
	}

	public function stepHit():Void
	{
		if (curStep % 4 == 0)
			beatHit();
	}

	public function beatHit():Void
	{
		//do literally nothing dumbass
	}
}
