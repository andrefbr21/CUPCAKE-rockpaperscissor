package com.cupcake.game.logic.shapes {
	import com.cupcake.game.logic.HandShape;
	
	public class Rock extends HandShape{				
		public function Rock(){
			
		}	
		
		override public function beats():Array 
		{
			return [Scissors, Lizard];
		}
	}	
}
