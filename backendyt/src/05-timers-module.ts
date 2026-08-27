import { log } from "console";
import { error } from "node:console";

import { setTimeout as sleep } from "node:timers/promises";

function runSetTimeoutExample(): void{
        console.log('1. setTimeout example started');
        
        setTimeout(() =>{
            console.log('2. this runs after 1 second');
            
        },1000)
        console.log("3. this runs immediately. node doesnt have to wait");
        
}

function runClearTimeoutExample(): void{
    const timerId = setTimeout(() => {
        console.log('this message will mot run');
        
    },2000)

    clearTimeout( timerId)
    console.log("4. clearTimer cancelled the 2 seconds timer ");
    
}





// SET INTERVAL 

function runSetIntervalExample(): void{
    let count = 0

    const intervalId = setInterval(() => {
        count++

        console.log(`5. interval tick: ${count}`);

        if (count === 3) {
            clearInterval(intervalId)
            console.log("6. setInterval stopped ");
            
        }
        
    }, 1000)
}

function runSetImmediateExample(): void{
    setImmediate(() => {
        console.log("7. set immediate callback");
        
    })

    console.log("8. synchronous code after setImmediate")
}

async function runPromiseTimerExample(): Promise<void>{
    console.log("9. waiting for promise based timer ");
    
    await sleep(1500)

    console.log("10.  promised based timer finished after 1.5 seconds");
    
}




function runTimeDemo(): void {
    runSetTimeoutExample()
    runSetTimeoutExample()
    runSetIntervalExample()
    runSetImmediateExample()
}


runTimeDemo()


runPromiseTimerExample().catch((error: unknown) => {
    console.error("timer based demo fail", error)
})

















































