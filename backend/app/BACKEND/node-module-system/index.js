

const firstModule = require('./first-module');

    console.log(firstModule.add(10, 23)); // 33
    // console.log(firstModule.subtract(5, 3)); // 2  
    // console.log(firstModule.divide(6, 2)); // 3  


    try {

        console.log('trying to divide by zero');

        let result = firstModule.divide(24, 0); // Error: Cannot divide by zero
        console.log(result);

    } catch (error) {
        console.error("caught error",error.message);
    }
















