package  
{
	import org.flixel.FlxSprite;
	
	/**
	 * An "abstract Actionscript class."
	 * 
	 * The class itself should not ever be instantiated directly.
	 * However, in order to achieve constructor and update base functionality,
	 * it remains possible. DON'T INSTANTIATE IT.
	 * 
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Projectile extends FlxSprite
	{
		public static const COLLISION_DURATION:Number = 5;
		
		protected var callback:Function;
		protected var buildings:Array;
		protected var vX:Number;
		protected var vY:Number;
		
		protected var colliding:Number;
		
		public function Projectile(callback:Function, buildings:Array, x:Number, y:Number, vX:Number, vY:Number) {
			this.callback = callback;
			this.buildings = buildings;
			this.vX = vX;
			this.vY = vY;
			colliding = 0;
			super(x, y);
		}
		
		override public function update():void {
			//TODO if in a collision, render according to stage (update graphic or just lag?)
			//     and increment variable else just update position.
		}
	}	
}
