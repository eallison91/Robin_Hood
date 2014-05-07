package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Arrow extends FlxSprite  
	{
		[Embed(source = 'assets/arrow.png')] private var arrowImg:Class;
		
		protected var vX:Number;
		protected var vY:Number;
		
		public function Arrow(x:Number, y:Number) 
		{
			super();
			this.x = x;
			this.y = y;
			loadGraphic(arrowImg, false, false, 5, 20, false);
		}
	
		public function shoot(vX:Number, vY:Number):void
		{
			this.vX = vX;
			this.vY = vY;
			angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
		}
		
		override public function update():void {
			trace("x: ", x);
			trace("y: ", y);
			trace("vX: ", vX);
			trace("vY: ", vY);
			x += vX;
			y += vY;
			vX *= (1 - PlayState.FRICTION);
			vY += PlayState.GRAVITY * PlayState.METER_SCALE * (1 - PlayState.FRICTION);
			angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
			super.update();
		}
	}

}