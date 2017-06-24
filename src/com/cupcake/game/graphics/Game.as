package com.cupcake.game.graphics {
	
	import flash.display.MovieClip;	
	import flash.events.MouseEvent;
	
	public class Game extends MovieClip{
		
		public static var isIaVsIa:Boolean;
		public function Game(isIaVsIa:Boolean){
			Game.isIaVsIa = isIaVsIa;
			
			initGame();
		}	
		
		private var gameBG:MovieClip = new GameBG();
		private function initGame():void 
		{
			addChild(gameBG);
			
			if (isIaVsIa){
				var rand:int = int(Math.random() * 3) + 1;
				onPlay(rand);
			}
			
			gameBG.rock.addEventListener(MouseEvent.CLICK, rockSelected);
			gameBG.paper.addEventListener(MouseEvent.CLICK, paperSelected);
			gameBG.scissors.addEventListener(MouseEvent.CLICK, scissorsSelected);
		}
		
		private function rockSelected(e:MouseEvent):void 
		{
			onPlay(1);
		}
		
		private function paperSelected(e:MouseEvent):void 
		{
			onPlay(2);
		}
		
		private function scissorsSelected(e:MouseEvent):void 
		{
			onPlay(3);
		}
		
		private function onPlay(handPlayed:Number):void 
		{
			trace("play: " + handPlayed);
			
			gameBG.myPlay.visible = true;
			gameBG.myPlay.gotoAndStop(handPlayed);
			
			//HAND / RAND -- hahaa little inside joke about Iron Fist Series. 
			var rand:int = int(Math.random() * 3) + 1;
			gameBG.otherPlay.gotoAndStop(rand);
			gameBG.otherPlay.visible = true;
			
			checkPlay(handPlayed, rand);
		}
		
		private function checkPlay(handPlayed:Number, rand:int):void 
		{
			trace(handPlayed + " / " + rand);
			if (handPlayed == rand){
				//draw
				result("draw");
			}else if (handPlayed == 1 && rand == 2){
				//lost
				result("lost");
			}else if (handPlayed == 1 && rand == 3){
				//win
				result("win");
			}else if (handPlayed == 2 && rand == 3){
				//lost
				result("lost");
			}else if (handPlayed == 2 && rand == 1){
				//win
				result("win");
			}else if (handPlayed == 3 && rand == 1){
				//lost
				result("lost");
			}else if (handPlayed == 3 && rand == 2){
				//win
				result("win");
			}
		}
		
		private function result(res:String):void 
		{
			var endGameOverlay:EndGameOverlay = new EndGameOverlay();
			endGameOverlay.init(res);
			
			addChild(endGameOverlay);
			
		}
	}	
}
