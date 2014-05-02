package  
{
	import flash.errors.StackOverflowError;
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Controller 
	{
		public static final var METER_SCALE:Number = 4; // pixels per meter
		public static final var GRAVITY:Number = 9.8;
		public static final var FRICTION:Number = 0.05; //coefficient of friction in flight
		public static final var X_SCALE:uint = 600;
		public static final var Y_SCALE:uint = 400;
		
		
		private var score:Score;
		private var projectiles:Array;
		private var arrows:Array;
		private var buildings:Array;
		
		public function Controller() 
		{
			score = new Score();
		}
	}
}