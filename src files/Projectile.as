package  
{
	
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public interface Projectile 
	{
		protected var vX:Number;
		protected var vY:Number;
		
		public function launch(vX:Number, vY:Number):void;
	}
	
}