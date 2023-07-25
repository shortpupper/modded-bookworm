import flash.external.ExternalInterface;

// Call JavaScript function to set the score in localStorage
function setScore(a:int):void {
    if (ExternalInterface.available) {
        ExternalInterface.call("setScore", a);
    }
}

// Test the communication and saving of the score
var score:int = 2;
setScore(score);

// You can also receive data from JavaScript if needed
function getScoreFromLocalStorage():void {
    if (ExternalInterface.available) {
        var jsScore:String = ExternalInterface.call("localStorage.getItem", "score");
        var scoreFromLocalStorage:int = int(jsScore);
        trace("Score from localStorage: " + scoreFromLocalStorage);
    }
}

getScoreFromLocalStorage();
