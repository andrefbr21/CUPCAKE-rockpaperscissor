package com.cupcake.game.logic.shapes {
	import com.cupcake.game.logic.HandShape;
	
	public class Paper extends HandShape{
		
		
		public function Paper(){
			
		}	
		
		override public function beats():Array 
		{
			return [Rock, Spock];
		}
	}	
}
