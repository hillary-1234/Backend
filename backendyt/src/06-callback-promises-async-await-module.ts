import { log } from "console"



type User ={
    id: number
    name: string
    role: "user" | "super-admin"

}



const users : User[] =[
    {
        id: 1,
        name: "sangam",
        role: "super-admin",
    },
     {
        id: 2,
        name: "john",
        role: "user",
    },
     {
        id: 3,
        name: "roman",
        role: "user",
    },
]


function findUserWithCallback(
    userId: number,
    callback: (error: Error | null, user?: User)=> void
    ): void {
        setTimeout(()=> {

            const user = users.find(currentUser => currentUser.id === userId)

            if(!user){
                callback(new Error(`user with id ${userId} was not found`))
                return
            }

            callback(null, user)

        },500)
    }
    


findUserWithCallback(3, (error, user)=> {
    if (error){
        console.log('callback error', error.message)
        return
    }

        console.log('callback result', user?.id, user?.name, user?.role);
        

})


function fetchUserWithPromise (userId: number): Promise<User> {
    
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            const user = users.find((currentUser) => currentUser)

        },1000)
    })
}


















































































































