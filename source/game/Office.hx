package game;

import flixel.FlxSprite;

class Office extends FlxSprite
{
	public function new(x:Float = 0, y:Float = 0)
	{
		makeGraphic(300, 200);
		super(x, y);
	}
}
