/// @description Insert description here
// You can write your code in this editor

var event1 = new EventInfo(obj1, gms2ESTestHandler1);
var event2 = new EventInfo(obj1, gms2ESTestHandler2);
var event3 = new EventInfo(obj2, gms2ESTestHandler1);
var event4 = new EventInfo(obj2, gms2ESTestHandler2);
gms2ESAddEventListener("test1", event1);
gms2ESAddEventListener("test1", event2);
gms2ESAddEventListener("test2", event3);
gms2ESAddEventListener("test2", event4);
