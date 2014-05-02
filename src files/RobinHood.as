package  
{
	import org.flixel.FlxGame;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 */
	public class RobinHood extends FlxGame 
	{
		private var controller:Controller = new Controller();
		
		public function RobinHood() 
		{
			super(controller.X_SCALE, controller.Y_SCALE, StartMenuState, 60, 30, false);
		}
		
	}

}