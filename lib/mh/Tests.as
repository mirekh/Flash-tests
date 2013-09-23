package lib.mh {
	import fl.events.*
	import flash.display.*
	/*
	 * Unit test library AS3.
	 * @author: MIRSOFT,mh
	 * @copyright 2012(c)MIRSOFT Use, change code is free under GPL.
	 * */
	
	public class Tests extends Sprite{
		//-v-
		var stringTrue:String = "░T, ";
		var stringFalse:String = "█F, ";
		//...░▒█■
		//-c-
		public function Tests() {
			trace("class [Tests] executed.");
		}
		
		//-m-

		/*OK
		 * Bada czy wartość jest 'true'
		 * */
		public function assertTrue(p:*, kom:String = ""):void {
			if ((p is Boolean)&&(p==true)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
			/*if((p.constructor == Boolean)&&(p==true)){ 
				Show("True (+): "+kom); 
			}else {
				Show("False (-): "+kom); 
			}*/
		}
		
		/*OK
		 * Bada czy wartość jest 'false'
		 * */
		public function assertFalse(p:*, kom:String = ""):void {
			if ((p is Boolean)&&(p==false)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy a==b
		 * Porównanie wg tego samego typu.
		 * */
		public function assertEquals(a:*,b:*, kom:String = ""):void {
			if ((a.constructor == b.constructor)&&(a==b)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy a!=b (różne)
		 * Porównanie wg tego samego typu.
		 * */
		public function assertNotEquals(a:*,b:*, kom:String = ""):void {
			if ((a.constructor == b.constructor)&&(a!=b)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy a<b
		 * Porównanie wg tego samego typu, również typy String - potrafi odróżnić 
		 * tekst krótszy od dłuższego.
		 * */
		public function assertLessThan(a:*, b:*, kom:String = ""):void {
			if ((a.constructor == b.constructor)&&(a<b)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy a>b
		 * Porównanie wg tego samego typu, również typy String - potrafi odróżnić 
		 * tekst krótszy od dłuższego.
		 * */
		public function assertMoreThan(a:*,b:*, kom:String = ""):void {
			if ((a.constructor == b.constructor)&&(a>b)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość równa 'null'
		 * */
		public function assertNull(p:*, kom:String = ""):void {
			if ((p === null)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość różna od 'null'
		 * */
		public function assertNotNull(p:*, kom:String = ""):void {
			if ((p === null)) { 
				Show(this.stringFalse + kom);
			}else {
				Show(this.stringTrue + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość równa 'undefined'
		 * */
		public function assertUndefined(p:*, kom:String = ""):void {
			if ((p === undefined)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość różna od 'undefined'
		 * */
		public function assertNotUndefined(p:*, kom:String = ""):void {
			if ((p === undefined)) { 
				Show(this.stringFalse + kom);
			}else {
				Show(this.stringTrue + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość jest liczbą (typu Numeric)
		 * */
		public function assertNumber(p:*, kom:String = ""):void {
			if ((p is Number)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy wartość jest tekstowa.
		 * */
		public function assertString(p:*, kom:String = ""):void {
			if ((p is String)) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		

		/*OK
		 * Bada czy tekst A zawiera w sobie tekst z B.
		 * */
		public function assertContains(a:*, b:*, kom:String = ""):void {
			var aa:String;
			var n:Number;
			if ((a is String)&&(b is String)) {
				//a & b is string
				if (a.length > 0 && b.length > 0) { 
					n = a.indexOf(b, 0);
					if (n >= 0) {
						Show(this.stringTrue + kom);
					}else{
						Show("1"+this.stringFalse + kom);
					}
				}else {
					Show("2"+this.stringFalse + kom);
				}
			}else {
				//a or b is not string
				Show("3"+this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Bada czy obiekt jest tablicą
		 * */
		public function assertArray(p:*, kom:String = ""):void {
			if (p is Array) { 
				Show(this.stringTrue + kom);
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/*OK
		 * Sprawdza czy w tablicy (prostej) jest wartość 'w'
		 * */
		public function assertInArray(tab:Array, w:*, kom:String = ""):void {
			var tab:Array;
			var idx:Number = tab.indexOf(w, 0);
			if (tab is Array) { 
				if (idx === -1) {
					//nie ma
					Show(this.stringFalse + kom);
				}else {
					//jest
					Show(this.stringTrue +"(idx:"+idx+") "+ kom);
				}
			}else {
				Show(this.stringFalse + kom);
			}
		}
		
		/**DEV
		 * Compare two arrays. If they are equal return OK-message.
		 * @param	Array arr1 - First array.
		 * @param	Array arr2 - Second array.
		 */
		public function assertIsEqualArrays(arr1:Array, arr2:Array, kom:String):void {
			if ((!arr1 || !arr2) || arr1.length != arr2.length) return false;
			for (var i:Number = 0; i < arr1.length; i++) {
				if (arr1[i] !== arr2[i]) {
					Show(this.stringFalse + kom);
				}
			}
			Show(this.stringTrue + kom);
		}

		
		
		/*OK
		 * Display message on the screen (trace window).
		 * */
		public function Show(kom) {
			trace(kom);
		}
	}
	
	
}

/*
//-----------------------------------------
//----------------- STUFF -----------------
//-----------------------------------------

Object.toString()

XMLList(expression:Object):XMLList
Converts an object to an XMLList object.

XML(expression:Object):XML
Converts an object to an XML object.
			
//-----------------------------------------


function DisplayCircles() {
	for (var i:int = 0; i < 10; i++) {
		var newCircle:BlueCircle = new BlueCircle();
		this.addChild(newCircle);

		newCircle.x = Math.random()*300;
		newCircle.y = Math.random()*200;
		newCircle.alpha = .2+Math.random()*.5;

		var scale:Number = .3+Math.random()*2;
		newCircle.scaleX = newCircle.scaleY = scale;
	}
}
DisplayCircles();
//-----------------------------------------
*/