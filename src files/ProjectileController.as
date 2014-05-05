package  
{
	import flash.errors.StackOverflowError;
	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class ProjectileController
	{
		
		private Controller controller;
		private int level;
		private int frequency;

		public function ProjectileController(Controller controller) {
			this.controller = controller;
			//TODO
		}
		
		public function startRound(int level, int frequency) {
			this.level = level;
			this.frequency = frequency;
			//TODO
		}
	}
}
