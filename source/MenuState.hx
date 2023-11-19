package;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
// import flixel.input.keyboard.FlxKeys;
import lime.system.System;

class MenuState extends FlxState
{
	var freddy:FlxSprite;
	// var static :FlxSprite; for some reason this doesnt work.
	var statical:FlxSprite;
	var tittle:FlxSprite;
	var newgame:FlxSprite;
	var continuee:FlxSprite;
	var selector:FlxSprite;
	var object:FlxObject;

	override public function create()
	{
		FlxG.sound.playMusic('assets/sounds/darkness music.wav', 0.8, true);

		// adding freddy
		freddy = new FlxSprite(0, 0);

		freddy.loadGraphic('assets/images/mainmenu/431.png');
		freddy.screenCenter();

		add(freddy);

		// adding text
		tittle = new FlxSprite(0, 0);

		tittle.loadGraphic('assets/images/mainmenu/444.png');
		tittle.x = 59;
		tittle.y = 92;
		// tittle.setGraphicSize(500, 400);

		add(tittle);

		// adding selector
		selector = new FlxSprite(0, 0);

		selector.loadGraphic('assets/images/mainmenu/450.png');
		selector.x = 10;
		selector.y = 383;

		add(selector);
		selector.visible = false;

		// adding newgame
		newgame = new FlxSprite(0, 0);
		newgame.loadGraphic('assets/images/mainmenu/448.png');
		newgame.x = 59;
		newgame.y = 379;
		add(newgame);
		// adding continue

		continuee = new FlxSprite(0, 0);
		continuee.loadGraphic('assets/images/mainmenu/449.png');
		continuee.x = 59;
		continuee.y = 453;

		add(continuee);

		// adding static
		statical = new FlxSprite(0, 0);

		statical.loadGraphic('assets/images/mainmenu/static.png', true);
		statical.animation.add('static', [0, 1, 2, 3, 4, 5, 6], 18, true);
		statical.animation.play('static', true);

		statical.screenCenter();
		statical.alpha = 0.2;
		statical.setGraphicSize(1280, 720);

		add(statical);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ESCAPE)
		{
			System.exit(0);
			trace('bye');
		}

		// selecting thinggys
		if (FlxG.mouse.overlaps(newgame, camera))
		{
			selector.visible = true;
			selector.y = 383;
			// FlxG.sound.play('assets/sounds/blip3.wav'); need to fix
			// trace('IT');
		}
		else if (FlxG.mouse.overlaps(continuee, camera))
		{
			selector.visible = true;
			selector.y = 459;
			// FlxG.sound.play('assets/sounds/blip3.wav'); need to fix
			// trace('WORKS');
		}
		else
			selector.visible = false;

		// Changing states
		if (FlxG.mouse.pressed && FlxG.mouse.overlaps(newgame, camera))
		{
			FlxG.switchState(new LoadingState());
			FlxG.sound.play('assets/sounds/blip3.wav');
		}
		else if (FlxG.mouse.pressed && FlxG.mouse.overlaps(continuee, camera))
		{
			FlxG.switchState(new LoadingState());
			FlxG.sound.play('assets/sounds/blip3.wav');
		}

		super.update(elapsed);
	}
}
