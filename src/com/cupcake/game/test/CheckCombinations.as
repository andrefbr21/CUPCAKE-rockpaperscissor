package com.cupcake.game.test {
	import com.cupcake.game.graphics.Game;
	import com.cupcake.game.logic.shapes.Lizard;
	import com.cupcake.game.logic.shapes.Paper;
	import com.cupcake.game.logic.shapes.Rock;
	import com.cupcake.game.logic.shapes.Scissors;
	import com.cupcake.game.logic.shapes.Spock;
	
	public class CheckCombinations{		
		
		public function CheckCombinations(){
			var rock:Rock = new Rock();
			var paper:Paper = new Paper();
			var scissors:Scissors = new Scissors();
			
			//assert
			trace(check(rock, paper) == "lost");
			trace(check(paper, paper) == "draw");
			trace(check(scissors, paper) == "win");
			trace(check(rock, scissors) == "win");
		}		
		
		private function check(selectedHand, otherHand):String{
			var res:String = "lost";
			if (selectedHand is Object(otherHand).constructor){
				res = "draw";
				return res;
			}
			
			var beats:Array = selectedHand.beats();
			for (var i:uint = 0; i < beats.length; i++) {				
				if (otherHand is beats[i]) res = "win";				
			}
			
			return res;
		}
	}	
}
