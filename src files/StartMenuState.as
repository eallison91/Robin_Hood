package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
		
	public class StartMenuState extends FlxState
	{
		private var startButton:FlxButton;
		
		override public function create():void
		{
			FlxG.mouse.show();
			startButton = new FlxButton(245, 350, "start game", startGame);

			startButton.label.size = 10;
			add(startButton);
		}
		
		override public function update():void {
			FlxG.bgColor = FlxG.BLACK;
			super.update();
		}
		
		private function startGame():void {
			FlxG.mouse.hide();
			FlxG.switchState(new PlayState());
		}
	}
}