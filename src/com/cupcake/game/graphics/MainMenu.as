package com.cupcake.game.graphics {
	
	import flash.display.MovieClip;	
	import flash.events.MouseEvent;
	
	public class MainMenu extends MovieClip{
		public function MainMenu(){
			trace("??")
			init();
		}	
		
		private function init():void 
		{	
			trace("aff")
			
			trace(playerVsComputerBtn);
			
			playerVsComputerBtn.addEventListener(MouseEvent.CLICK, onPlayerVsComputer);
			
			computerVsComputerBtn.addEventListener(MouseEvent.CLICK, onComputerVsComputer);
		}				
		
		private function onPlayerVsComputer(e:MouseEvent):void 
		{
			trace("??");
			addChild(new Game(false));
		}
		
		private function onComputerVsComputer(e:MouseEvent):void 
		{
			addChild(new Game(true));
		}
	}	
}
