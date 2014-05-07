package  
{
	/**
	 * ...
	 * @author Eleanor Allison
	 */
	public class Nuke extends Projectile 
	{
		[Embed(source = 'assets/nuke.png')] private var nukeImg:Class;
		
		public function Nuke(callback:Function, buildings:Array, x:Number, y:Number, vX:Number, vY:Number) 
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