package;

import flixel.FlxCamera.FlxCameraFollowStyle;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;
import lime.ui.MouseCursor;
import openfl.ui.Mouse;

class PlayState extends FlxState
{
	var office:FlxSprite;
	var mousespr:FlxSprite;
	var cursor:FlxSprite;

	override public function create()
	{
		FlxG.sound.playMusic('assets/sounds/Buzz_Fan_Florescent2.wav', 0.3, true);

		// adding office
		office = new FlxSprite();

		office.loadGraphic('assets/images/office/39.png');
		office.screenCenter(Y);

		add(office);
		/*
			mousespr = new FlxSprite(942, 0);
			mousespr.makeGraphic(879, 720, FlxColor.GRAY);
			add(mousespr);
			mousespr.alpha = 0.1;
		 */

		cursor = new FlxSprite();
		cursor.makeGraphic(50, 50, FlxColor.GRAY);
		add(cursor);
		super.create();
		FlxG.camera.zoom = -1;
	}

	override public function update(elapsed:Float)
	{
		cursor.x = FlxG.mouse.x;
		cursor.y = FlxG.mouse.y;

		FlxG.camera.follow(cursor, FlxCameraFollowStyle.LOCKON);
		// trace(FlxG.mouse.x, FlxG.mouse.y);
		super.update(elapsed);
	}
}
