package com.cupcake.game.logic.shapes {
	import com.cupcake.game.logic.HandShape;
	
	public class Scissors extends HandShape{
		
		
		public function Scissors(){
			
		}	
		
		override public function beats():Array 
		{
			return [Paper, Lizard];
		}
	}	
}
