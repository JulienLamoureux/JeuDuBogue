package {
	
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class Main extends MovieClip {
		var monTimer:Timer = new Timer(500);
		var vies:int;
		
		public function Main() {
			// constructor code
			trace("allo");
			//créer un timer pour ajouter des bogues aux 2 secondes
			vies = 10;
			monTimer.addEventListener(TimerEvent.TIMER, ajouterBibitte);
			monTimer.start();
			
		}
		
		public function ajouterBibitte(e:TimerEvent):void{
			//trace("c'est le temps d'ajouter une bibitte");
			var uneBibitte:MovieClip = new Bibitte();
			addChild(uneBibitte);
			if(stage.frameRate<=60){stage.frameRate += 2};
			//trace(stage.frameRate);
		}
		public function oublierBibitte(laBibitte:MovieClip):void{
			removeChild(laBibitte);
		}
		
		public function ajouterPoint():void{
			//trace("c'est le temps d'ajouter un point");
			tableau_mc.txtPoints.text=Number(tableau_mc.txtPoints.text)+1;   
		}
		public function enleverVie():void{
			//trace("c'est le temps d'enlever une vie, s'il en reste...");
			if(vies >=1){
				vies--;
				tableau_mc.txtVies.text=vies; 
				if(vies==0){terminerPartie();}
			}
		}
		public function terminerPartie():void{
			monTimer.stop();
			var messageFin:MovieClip = new GameOver();
			addChild(messageFin);
		}
		
		
	}
	
}
