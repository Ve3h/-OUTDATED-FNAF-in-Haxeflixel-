package;

import flixel.FlxSprite;
import flixel.FlxState;

class MenuState extends FlxState
{
	var freddy:FlxSprite;
	// var static :FlxSprite; for some reason this doesnt work.
	var statical:FlxSprite;
	var tittle:FlxSprite;

	override public function create()
	{
		// adding freddy
		freddy = new FlxSprite(0, 0);

		freddy.loadGraphic('assets/images/mainmenu/431.png');
		freddy.screenCenter();

		add(freddy);

		// adding static
		statical = new FlxSprite(0, 0);

		statical.loadGraphic('assets/images/mainmenu/static.png', true);
		statical.animation.add('static', [0, 1, 2, 3, 4, 5, 6,], 18, true);
		statical.animation.play('static', true);

		statical.screenCenter();
		statical.alpha = 0.2;
		statical.setGraphicSize(1280, 720);

		add(statical);

		// adding text
		tittle = new FlxSprite(0, 0);

		tittle.loadGraphic('assets/images/mainmenu/444.png');
		tittle.screenCenter(Y);
		tittle.x = 100;

		add(tittle);
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
