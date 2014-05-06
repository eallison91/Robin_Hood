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
		[Embed(source = 'arrow.png')] private var arrowImg:Class;
		
		public function Arrow(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(arrowImg, false, false, 7, 20);
		}
		
		/* INTERFACE Projectile */
		
		public function launch(vX:Number, vY:Number):void
		{
			this.vX = vX;
			this.vY = vY;
			angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
		}
		
		override public function update():void {
			x += vX;
			y += vY;
			vX *= (1 - FRICTION);
			vY += Controller.GRAVITY * Controller.METER_SCALE * (1 - Controller.FRICTION);
			angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
			super.update();
		}
	}

}