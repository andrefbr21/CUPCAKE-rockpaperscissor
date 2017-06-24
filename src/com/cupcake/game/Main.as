package com.cupcake.game {
	
	import com.cupcake.game.graphics.MainMenu;
	import flash.display.MovieClip;	
	
	public class Main extends MovieClip{
		public function Main(){
			//initialize app interface			
			addChild(new MainMenu());
		}	
	}	
}
