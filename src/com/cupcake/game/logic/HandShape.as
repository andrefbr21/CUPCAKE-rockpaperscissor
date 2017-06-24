package com.cupcake.game.logic {
	import com.cupcake.game.graphics.Game;
	import com.cupcake.game.logic.shapes.Lizard;
	import com.cupcake.game.logic.shapes.Paper;
	import com.cupcake.game.logic.shapes.Rock;
	import com.cupcake.game.logic.shapes.Scissors;
	import com.cupcake.game.logic.shapes.Spock;
	
	public class HandShape{		
		
		public function HandShape(){
			
		}	
		
		public function beats():Array{
			return [];
		}
		
		public static function getShapeTypes():Array{
			//add new shapes here, easily extensible.		
			if (Game.enableSpockLizardGame) return [new Rock(), new Paper(), new Scissors(), new Spock(), new Lizard()];			
			else return [new Rock(), new Paper(), new Scissors()];			
		}
	}	
}
