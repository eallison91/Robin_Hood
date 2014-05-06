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
		
		private var controller:Controller;
		private var level:int;
		private var frequency:int;

		public function ProjectileController(controller:Controller) {
			this.controller = controller;
			//TODO
		}
		
		public function startRound(level:int, frequency:int) {
			this.level = level;
			this.frequency = frequency;
			//TODO
		}

		public function launch(int projectileType) {
			
	}
}
