//-------------- "Main.as" --------------------------
import lib.mh.Tests;

//start
var a:Tests = new Tests();

/*OK
trace('-------1--------');
a.assertTrue(true, '1: ma być true (+)');
a.assertTrue('true', '2:ma być false (-)');
a.assertTrue(1, '3:ma być false (-)');
a.assertTrue(0, '4:ma być false (-)');
a.assertTrue(false, '5:ma być false (-)');
trace('------2---------');
a.assertFalse(true, '2.1: ma być false (-)');
a.assertFalse('true', '2.2:ma być false (-)');
a.assertFalse(1, '2.3:ma być false (-)');
a.assertFalse(0, '2.4:ma być false (-)');
a.assertFalse(false, '2.5:ma być true (+)');
trace('------3---------');
a.assertEquals(true, true, '3.1:(+)');
a.assertEquals(false, false, '3.2:(+)');
a.assertEquals(true, false, '3.3.1:(-)');
a.assertEquals(false,true, '3.3.2:(-)');
a.assertEquals('true','true', '3.4:(+)');
a.assertEquals('true','false', '3.5:(-)');
a.assertEquals('false','false', '3.6:(+)');
a.assertEquals(1,0, '3.7:(-)');
a.assertEquals(0,1, '3.8:(-)');
a.assertEquals(0,0, '3.9:(+)');
a.assertEquals(45,45, '3.10:(+)');
a.assertEquals(1, 1, '3.11:(+)');
trace('-------4--------');
a.assertNotEquals(true, true, '4.1:(-)');
a.assertNotEquals(false, false, '4.2:(-)');
a.assertNotEquals(true, false, '4.4.1:(+)');
a.assertNotEquals(false,true, '4.4.2:(+)');
a.assertNotEquals('true','true', '4.4:(-)');
a.assertNotEquals('true','false', '4.5:(+)');
a.assertNotEquals('false','false', '4.6:(-)');
a.assertNotEquals(1,0, '4.7:(+)');
a.assertNotEquals(0,1, '4.8:(+)');
a.assertNotEquals(0,0, '4.9:(-)');
a.assertNotEquals(45,45, '4.10:(-)');
a.assertNotEquals(1, 1, '4.11:(-)');
trace('------5---------');
a.assertLessThan(true, true, '1:(-)');
a.assertLessThan(false, false, '2:(-)');
a.assertLessThan(true, false, '3:(-)');
a.assertLessThan(false,true, '4:(+)');
a.assertLessThan('true','true', '5:(-)');
a.assertLessThan('true','false', '6:(-)');
a.assertLessThan('false','false', '7:(-)');
a.assertLessThan('false','true', '7b:(+)');
a.assertLessThan(1,0, '8:(-)');
a.assertLessThan(0,1, '9:(+)');
a.assertLessThan(0,13, '10:(+)');
a.assertLessThan(0,0, '11:(-)');
a.assertLessThan(45,45, '12:(-)');
a.assertLessThan("asd", "sadsadsada", '13:(+)');
a.assertLessThan("sadsadsada", "asd",  '14:(-)');
trace('------6---------');
a.assertMoreThan(true, true, '1:(-)');
a.assertMoreThan(false, false, '2:(-)');
a.assertMoreThan(true, false, '3:(+)');
a.assertMoreThan(false,true, '4:(-)');
a.assertMoreThan('true','true', '5:(-)');
a.assertMoreThan('true','false', '6:(+)');
a.assertMoreThan("true","false", '7:(+)');
a.assertMoreThan("false","true", '9:(-)');
a.assertMoreThan("false","true", '10:(-)');
a.assertMoreThan('false','false', '11:(-)');
a.assertMoreThan(1,0, '12:(+)');
a.assertMoreThan(0,1, '13:(-)');
a.assertMoreThan(0,13, '14:(-)');
a.assertMoreThan(0,0, '15:(-)');
a.assertMoreThan(45,45, '16:(-)');
a.assertMoreThan("asd", "sadsadsada", '17:(-)');
a.assertMoreThan("sadsadsada", "asd",  '18:(+)');
trace('-------7--------');
a.assertNull("false", '1:(-)');
a.assertNull('false', '2:(-)');
a.assertNull(1, '3:(-)');
a.assertNull(0, '4:(-)');
a.assertNull(null, '5:(+)');
a.assertNull(undefined, '6:(+)');
trace('-------8--------');
a.assertNotNull("false", '1:(-)');
a.assertNotNull('false', '2:(-)');
a.assertNotNull(1, '3:(-)');
a.assertNotNull(0, '4:(-)');
a.assertNotNull(null, '5:(+)');
a.assertNotNull(undefined, '6:(+)');
trace('--------9-------');
a.assertUndefined("false", '1:(-)');
a.assertUndefined('false', '2:(-)');
a.assertUndefined(1, '3:(-)');
a.assertUndefined(0, '4:(-)');
a.assertUndefined(null, '5:(-)');
a.assertUndefined(undefined, '6:(+)');
trace('--------10-------');
a.assertNotUndefined("false", '1:(+)');
a.assertNotUndefined('false', '2:(+)');
a.assertNotUndefined(1, '3:(+)');
a.assertNotUndefined(0, '4:(+)');
a.assertNotUndefined(null, '5:(+)');
a.assertNotUndefined(undefined, '6:(-)');
trace('--------11-------');
a.assertNumber("false", '1:(-)');
a.assertNumber('false', '2:(-)');
a.assertNumber(1, '3:(+)');
a.assertNumber(0, '4:(+)');
a.assertNumber(null, '5:(-)');
a.assertNumber(undefined, '6:(-)');
trace('-------12--------');
a.assertString("false", '1:(+)');
a.assertString('false', '2:(-)');
a.assertString(1, '3:(-)');
a.assertString(0, '4:(-)');
a.assertString(null, '5:(-)');
a.assertString(undefined, '6:(-)');
a.assertString("undefined", '7:(+)');
*/
/*
trace('--------13-------');
a.assertContains("true","false", '1:(-)');
a.assertContains("false","true", '2:(-)');
a.assertContains("false","true", '3:(-)');
a.assertContains('false','false', '4:(+)');
a.assertContains(1,0, '5:(-)');
a.assertContains(0,1, '6:(-)');
a.assertContains(0,13, '7:(-)');
a.assertContains(0,0, '8:(-)');
a.assertContains(45,45, '9:(-)');
a.assertContains("sadsadbb[bsa]da", "bsa", '10:(+)');
a.assertContains("sadsadsada", "asd",  '11:(-)');
a.assertContains("sada dasadisad adl", "sadi", '12:(+)');
*/
trace('-------14--------');
var an:Array = new Array(1,2,3,3,2,4,32,43);
var at:Array = new Array("1", "2", "secs", "hgjbfg", "sfdg", "fdsgvdr", "aescfsa", "43haxhfahx");
var ab:Array = new Array(true,false);
var ae:Array = new Array();
a.assertArray(ae,'1:(+) to jest tablica pusta');
a.assertArray(an,'2:(+) to jest tablica liczb');
a.assertArray(at,'3:(+) to jest tablica txt');
a.assertArray(0,'4:(-) to NIE jest tablica');
a.assertArray(false,'5:(-) to NIE jest tablica');
a.assertArray(true,'6:(-) to NIE jest tablica');
a.assertArray("true",'7:(-) to NIE jest tablica');
a.assertArray(an+at,'8:(-) to NIE jest tablica');
trace('-------15--------');
a.assertInArray(an,3,'1:(+)');
a.assertInArray(an,31,'2:(-)');
a.assertInArray(at,"sec",'3:(-)');
a.assertInArray(at,"secs",'4:(+)');
a.assertInArray(ab,true,'5:(+)');
trace('---------------');


/*
//---example OK---//
//is invoked with three arguments; (1)the value of an item, (2)the index of an item, and (3)the Array object
function myCall(element:*, index:Number, arr:Array):void {
	trace(element.toString()+"--- length: "+arr.length);
}
var dd:Array = new Array(1,2,3,3,2,4,32,43);
an.forEach(myCall);
*/




