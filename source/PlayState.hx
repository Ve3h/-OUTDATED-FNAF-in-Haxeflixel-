package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	var office:FlxSprite;

	override public function create()
	{
		FlxG.sound.playMusic('assets/sounds/Buzz_Fan_Florescent2.wav', 0.3, true);

		// adding office
		office = new FlxSprite();

		office.loadGraphic('assets/images/office/39.png');
		office.screenCenter(Y);

		add(office);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
