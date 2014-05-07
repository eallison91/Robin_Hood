package  
{
	/**
	 * ...
	 * @author Eleanor Allison
	 */
	public class Boulder extends Projectile 
	{
		[Embed(source = 'assets/boulder.png')] private var boulderImg:Class;
	
		public function Boulder(callback:Function, buildings:Array, x:Number, y:Number, vX:Number, vY:Number) 
		{
			super(callback, buildings, x, y, vX, vY);
		}
		
		override public function update():void {
			x += vX;
			y += vY;
			vX *= (1 - PlayState.FRICTION);
			vY += PlayState.GRAVITY * PlayState.METER_SCALE * (1 - PlayState.FRICTION);
			angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
			super.update();
		}
		
		
	}

}