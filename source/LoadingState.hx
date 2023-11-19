package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxTimer;

class LoadingState extends FlxState
{
	var loadsprite:FlxSprite;

	override public function create()
	{
		FlxG.sound.pause();

		loadsprite = new FlxSprite(0, 0);
		loadsprite.loadGraphic('assets/images/loading/482.png');
		loadsprite.x = 1221;
		loadsprite.y = 670;
		add(loadsprite);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		var stateChanger:FlxTimer = new FlxTimer().start(7, changeState);

		super.update(elapsed);
	}
}

private function changeState(stateChanger:FlxTimer)
{
	FlxG.switchState(new PlayState());
}
