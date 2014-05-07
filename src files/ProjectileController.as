package  
{
	import org.flixel.FlxGroup;

	/**
	 * ...
	 * @author Eleanor Allison
	 * @author Jake Sanders
	 */
	public class ProjectileController
	{
		
		private var playState:PlayState;
		private var level:int;
		private var frequency:int;
		private var projectiles:FlxGroup;

		public function ProjectileController(projectiles:FlxGroup, playState:PlayState) {
			this.projectiles = projectiles;
			this.playState = playState;
			//TODO
		}
		
		public function startRound(level:int, frequency:int):void {
			this.level = level;
			this.frequency = frequency;
			//TODO
		}

		private function launch(projectileType:int):void {
			
		}
			
	}
}
