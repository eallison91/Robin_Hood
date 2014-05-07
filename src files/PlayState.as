package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
		
	public class PlayState extends FlxState
	{
		public static const METER_SCALE:Number = 4; // pixels per meter
		public static const GRAVITY:Number = 9.8;
		public static const FRICTION:Number = 0.05; // coefficient of friction in flight
		public static const X_SCALE:uint = 600;
		public static const Y_SCALE:uint = 400;
	
		public var projectileTypes:Array;	
		
		private var projController:ProjectileController;

		private var score:Score;
		private var projectiles:FlxGroup;
		protected var buildings:Array;
		protected var arrows:FlxGroup;
		
		protected var reloadTime:Number = 50;
		protected var reloadState:Number;
		
		override public function create():void
		{
			projectileTypes = new Array(Boulder, Missile, Nuke);
			score = new Score();
			projectiles = new FlxGroup();
			arrows = new FlxGroup;
			buildings = new Array();
			projController = new ProjectileController(projectiles, this);
			reloadState = 0;
			add(projectiles);
			add(arrows);
			super.create();
		
		}
		
		override public function update():void {
			trace("updating");
			FlxG.bgColor = FlxG.WHITE;
			if (reloadState < reloadTime) {
				reloadState++;
			}
			if (reloadState >= reloadTime) {
				var arrow:Arrow = new Arrow(X_SCALE / 2, Y_SCALE - 5);
				arrows.add(arrow);
				arrow.shoot(3, -4 * METER_SCALE);
				reloadState = 0;
			}
			super.update();
		}


		public function processCollisionBuilding(projectile:Projectile, building:Building):void {
			//TODO
		}

		public function processCollisionArrow(projectile:Projectile, arrow:Arrow):void {
			//TODO
		}

	}
}
