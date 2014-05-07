package  
{
	/**
	 * ...
	 * @author Eleanor Allison
	 */
	public class Missile extends Projectile 
	{
		[Embed(source = 'assets/missile.png')] private var missileImg:Class;
		
		public function Missile(callback:Function, buildings:Array, x:Number, y:Number, vX:Number, vY:Number) 
		{
			super(callback, buildings, x, y, vX, vY);
		}
		
		override public function update():void {
			x += vX;
			y += vY;
			super.update();
		}
		
	}

}