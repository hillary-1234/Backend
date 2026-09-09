import EventEmitter from "node:events";




const appEvents = new EventEmitter()


type UserRegisterPayload = {
    id: number
    email: string
}


appEvents.on("user:registered", (user: UserRegisterPayload)=> {
    console.log(`email listener: welcome email sent to this user ${user.email}`);
    
})



appEvents.on("user:registered", (user: UserRegisterPayload)=> {
    console.log(`log listener: user ${user.id} and email ${user.email}`);
    
})



appEvents.once("app.started", ()=> {
    console.log("once listener: app started");
    
})



function registerUser(): void {
    const user = {
        id: 1,
        email: 'samgiosfjaijad@gmail.com'
    }

    console.log("user saved")


    appEvents.emit("user:registered", user) 

    appEvents.emit("app.started") 
    appEvents.emit("app.started") 



    console.log("register user: event listeners completed ");
    
}



registerUser()

































































































