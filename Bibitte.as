package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class Bibitte extends MovieClip {

		public function Bibitte() {
			// constructor code
			addEventListener(Event.ADDED_TO_STAGE, init)
		}
		
		private function init(e:Event){
			x = stage.stageWidth/(Math.floor(Math.random()*5)+1); // «génère» l'illusion de chemins variés
			y = stage.stageHeight/2; //aligne la bibitte
			rotation = Math.floor(Math.random()*360);
			removeEventListener(Event.ADDED_TO_STAGE, init)
			addEventListener(MouseEvent.CLICK, tuer)
		}
		
		private function tuer(e:Event){
			removeEventListener(MouseEvent.CLICK, tuer)
			stop(); //la bibitte arrête de courir!
			cycleBibitte_mc.gotoAndPlay("meurt"); //la bibitte est écrasée
			MovieClip(parent).ajouterPoint();
		}
		
		public function disparaitre(){
			MovieClip(parent).oublierBibitte(this);
		}
	}
	
}
