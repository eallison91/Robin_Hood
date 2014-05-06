package  
{
	import org.flixel.FlxSprite;
	
	/**
	 * An "abstract Actionscript class."
	 * 
	 * The class itself should not ever be instantiated; however, a runtime 
	 * error will not occur until a call to launch(), since Constructor 
	 * functionality is intended to be inherited.
	 * 
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Projectile extends FlxSprite
	{
		protected var callback:Function;
		protected var buildings:Array;
		protected var vX:Number;
		protected var vY:Number;
		
		protected var colliding:Number;
		
		public function Projectile(callback:Function, buildings:Array, x:Number, y:Number) {
			this.callback = callback;
			this.buildings = buildings;
			super(x, y, graphic);
		}
		
		/**
		 * OVERRIDE THIS.
		 * 
		 * @param	vX
		 * @param	vY
		 */
		public function launch(vX:Number, vY:Number):void {
			throw new Error("Cannot instantiate Projectile base class.");
		}
		
		override public function update():void {
			//TODO if in a collision, render according to stage (update graphic or just lag?)
			//     and increment variable else just update position.
	}	
}
