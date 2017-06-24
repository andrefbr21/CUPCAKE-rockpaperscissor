package com.cupcake.game.logic.shapes {
	import com.cupcake.game.logic.HandShape;
	
	public class Spock extends HandShape{
			
		public function Spock(){
			
		}	
		
		override public function beats():Array 
		{
			return [Rock, Scissors];
		}
	}	
}
