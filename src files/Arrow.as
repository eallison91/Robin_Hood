package  
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Arrow extends FlxSprite implements Projectile 
	{
		
		public function Arrow(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
		}
		
		/* INTERFACE Projectile */
		
		public function launch(vX:Number, vY:Number):void 
		{
			this.vX = vX;
			this.vY = vY;
			this.angle = Math.acos(vX / Math.sqrt(Math.pow(vX, 2) + Math.pow(vY, 2)));
		}
		
		
	}

}