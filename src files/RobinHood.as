package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class RobinHood extends FlxGame 
	{
		
		public function RobinHood() 
		{
			super(PlayState.X_SCALE, PlayState.Y_SCALE, StartMenuState);
			//FlxG.logger = new Logger("robin_hood", 105, "ff3fe2e3edf7537b45cf898378a17816", 1, 1);
		}
		
	}

}
