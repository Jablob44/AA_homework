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

// Function.prototype.myBind = function(context){
//     // this = context;
//     return () => this.call(context);
// }
// class Lamp {
//     constructor() {
//       this.name = "a lamp";
//     }
//   }
//   
//   const turnOn = function() {
//     console.log("Turning on " + this.name);
//   };
//   
//   const lamp = new Lamp();
//   
//   //turnOn(); // should not work the way we want it to
//   
//   const boundTurnOn = turnOn.bind(lamp);
//   const myBoundTurnOn = turnOn.myBind(lamp);
//   
//   boundTurnOn(); // should say "Turning on a lamp"
//   myBoundTurnOn(); // should say "Turning on a lamp"

const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Write this first.
function askIfGreaterThan(el1, el2, callback) {
  // Prompt user to tell us whether el1 > el2; pass true back to the
  // callback if true; else false.
  console.log(`Is ${el1} > ${el2}? `);
  reader.question("Enter yes or no ", function(input) {
    if (input.toLowerCase() === "yes") {
      callback(true);
    } else {
      callback(false);
    }
    //reader.close();
  });
}

// Once you're done testing askIfGreaterThan with dummy arguments, write this.
function innerBubbleSortLoop(arr, i, madeAnySwaps = false, outerBubbleSortLoop) {
  // Do an "async loop":
  // 1. If (i == arr.length - 1), call outerBubbleSortLoop, letting it
  //    know whether any swap was made.
  // 2. Else, use `askIfGreaterThan` to compare `arr[i]` and `arr[i +
  //    1]`. Swap if necessary. Call `innerBubbleSortLoop` again to
  //    continue the inner loop. You'll want to increment i for the
  //    next call, and possibly switch madeAnySwaps if you did swap.
  // let madeAnySwaps = false;

  if (i === arr.length - 1) {
    console.log(outerBubbleSortLoop);
    outerBubbleSortLoop(madeAnySwaps);
    return;
  } else {
    askIfGreaterThan(arr[i], arr[i + 1], function (arg) {
      console.log(i);
      if (arg === true) {
        const temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
        madeAnySwaps = true;
        console.log(arr);
      } else {
        console.log(arr);
      };
      innerBubbleSortLoop(arr, ++i, madeAnySwaps, outerBubbleSortLoop);
    });
  }
}

// Once you're done testing innerBubbleSortLoop, write outerBubbleSortLoop.
// Once you're done testing outerBubbleSortLoop, write absurdBubbleSort.

function absurdBubbleSort(arr, sortCompletionCallback) {
  console.log("Hey");
  function outerBubbleSortLoop(madeAnySwaps) {
    // Begin an inner loop if you made any swaps. Otherwise, call
    // `sortCompletionCallback`.
    //for (let i = 0; i < arr.length - 1; i++) {
    //  innerBubbleSortLoop(arr, i, madeAnySwaps, () => {});
    //}
      console.log("HEY");
    if (madeAnySwaps === true) {
      console.log("YOU");
      innerBubbleSortLoop(arr, 0, false, outerBubbleSortLoop);
      console.log(":(");
    }
    if (madeAnySwaps === false) {
      sortCompletionCallback(arr);
      reader.close();
    }
  }
  outerBubbleSortLoop(true);
  // Kick the first outer loop off, starting `madeAnySwaps` as true.
}

absurdBubbleSort([3, 2, 1], function(arr) {
  console.log("Sorted array: " + JSON.stringify(arr));
  reader.close();
});

// askIfGreaterThan(8, 10, (arg) => console.log(arg));
const arr = [5, 3, 4];
//innerBubbleSortLoop(arr, 0, false, () => {});

//absurdBubbleSort(arr, () => {});
