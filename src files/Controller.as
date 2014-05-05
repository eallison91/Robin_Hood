package  
{
	import flash.errors.StackOverflowError;
	import Logger;
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Controller 
	{
		public static final var METER_SCALE:Number = 4; // pixels per meter
		public static final var GRAVITY:Number = 9.8;
		public static final var FRICTION:Number = 0.05; // coefficient of friction in flight
		public static final var X_SCALE:uint = 600;
		public static final var Y_SCALE:uint = 400;
	
		public var projectileTypes:Array;	
		
		private var projController:ProjectileController;
		private var score:Score;
		private var projectiles:Array;
		private var arrows:Array;
		private var buildings:Array;
		private var logger:Logger;
		
		public function Controller()
		{
			projectileTypes = new Array(Boulder, Missile, Nuke);
			projController = new ProjectileController(this);
			score = new Score();
			projectiles = new Array();
			arrows = new Array();
			buildings = new Array();
			logger = new Logger("robin_hood", 105, "ff3fe2e3edf7537b45cf898378a17816", 1, 1);
		}

		public function processCollision(projectile:Projectile, building:Building):void {
			//TODO
		}

		public function processCollision(projectile:Projectile, arrow:Arrow):void {
			//TODO
		}
	}
}
