package  
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class Score extends FlxText
	{
		public var score:int;
		
		public function Score() 
		{
			score = 0;
			super(300, 200, 50);
			
		}
		
	}

}