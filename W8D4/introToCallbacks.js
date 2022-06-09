class Clock {
    constructor() {
        this.hrs = Date().split(" ")[4].split(":")[0];
        this.mins = Date().split(" ")[4].split(":")[1];
        this.secs = Date().split(" ")[4].split(":")[2];
        setInterval(this._tick.bind(this), 1000);
      // 1. Create a Date object.
      // 2. Store the hours, minutes, and seconds.
      // 3. Call printTime.
      // 4. Schedule the tick at 1 second intervals.
    }
  
    printTime() {
        console.log(`${this.hrs}:${this.mins}:${this.secs}`);
      // Format the time in HH:MM:SS
      // Use console.log to print it.
    }
  
    _tick() {
        ++this.secs;
        if (this.secs === 60){
            this.secs = 0;
            this.mins++;
        }
        if (this.mins === 60){
            this.mins = 0;
            this.hrs++;
        }
        if (this.hrs === 24){
            this.hrs = 0;
        }
        this.printTime();
      // 1. Increment the time by one second.
      // 2. Call printTime.
    }
  }
  
  const clock = new Clock();