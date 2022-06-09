// class Clock {
//     constructor() {
//         this.hrs = Date().split(" ")[4].split(":")[0];
//         this.mins = Date().split(" ")[4].split(":")[1];
//         this.secs = Date().split(" ")[4].split(":")[2];
//         setInterval(this._tick.bind(this), 1000);
//       // 1. Create a Date object.
//       // 2. Store the hours, minutes, and seconds.
//       // 3. Call printTime.
//       // 4. Schedule the tick at 1 second intervals.
//     }
  
//     printTime() {
//         console.log(`${this.hrs}:${this.mins}:${this.secs}`);
//       // Format the time in HH:MM:SS
//       // Use console.log to print it.
//     }
  
//     _tick() {
//         ++this.secs;
//         if (this.secs === 60){
//             this.secs = 0;
//             this.mins++;
//         }
//         if (this.mins === 60){
//             this.mins = 0;
//             this.hrs++;
//         }
//         if (this.hrs === 24){
//             this.hrs = 0;
//         }
//         this.printTime();
//       // 1. Increment the time by one second.
//       // 2. Call printTime.
//     }
//   }
  
// //  const clock = new Clock();

// const readline = require("readline");

// const reader = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });

// function addNumbers(sum = 0, numsLeft, completionCallback) {
//   if (numsLeft > 0) {
//     reader.question("Enter a number ", function (num) {
//       sum += parseInt(num);
//       addNumbers(sum, --numsLeft, completionCallback);
//       if (numsLeft === 0) {
//         reader.close();
//       };
//     });
//   } else {
//     completionCallback(sum);
//   };
// }

// addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));
// Alan's change

Function.prototype.myBind = function(context){
    // this = context;
    return () => this.call(context);
}
class Lamp {
    constructor() {
      this.name = "a lamp";
    }
  }
  
  const turnOn = function() {
    console.log("Turning on " + this.name);
  };
  
  const lamp = new Lamp();
  
  //turnOn(); // should not work the way we want it to
  
  const boundTurnOn = turnOn.bind(lamp);
  const myBoundTurnOn = turnOn.myBind(lamp);
  
  boundTurnOn(); // should say "Turning on a lamp"
  myBoundTurnOn(); // should say "Turning on a lamp"