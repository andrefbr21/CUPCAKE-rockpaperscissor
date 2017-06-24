package com.cupcake.game.graphics {
	
	import flash.display.MovieClip;		
	import flash.events.MouseEvent;
	public class EndGameOverlay extends MovieClip{
		public function EndGameOverlay(){
			
		}	
		
		public function init(result:String){
			playAgain.addEventListener(MouseEvent.CLICK, onPlayAgain);
			
			switch(result){
				case "win":{
					if (Game.isIaVsIa) resultText.text = "COMPUTER 1 WON";
					else resultText.text = "PLAYER WON";
					break;
				}
				
				case "lost":{
					if (Game.isIaVsIa) resultText.text = "COMPUTER 2 WON";
					else resultText.text = "COMPUTER WON";
					break;
				}
				
				case "draw":{
					resultText.text = "DRAW GAME";
					break;	
				}
			}
		}
		
		private function onPlayAgain(e:MouseEvent):void 
		{
			this.parent.parent.removeChild(this.parent);
		}
	}	
}
