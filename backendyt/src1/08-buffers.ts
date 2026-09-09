import { captureRejectionSymbol } from "stream";





const textBuffer = Buffer.from("Node")

const textBuffers = Buffer.from("NODE")

console.log(textBuffer);

console.log(textBuffers);


console.log(textBuffer.toString('utf-8'));

const engBuffer = Buffer.from("Hello") 

const engBuffers = Buffer.from("HELLO") 

const engBufferv = Buffer.from("Hell0") 

console.log(engBuffer.length);


console.log(engBuffer, engBuffers, engBufferv);



const fixedBuffer = Buffer.alloc(5)

console.log("empty fixed buffer", fixedBuffer);

fixedBuffer.write("API")

console.log("fixed buffer after write", fixedBuffer);
console.log("fixed buffer as text", fixedBuffer.toString("utf-8"));



const chunks = [
    Buffer.from("Hello "),
    Buffer.from("Node "),
    Buffer.from("JS")
]

const combineBuffer = Buffer.concat(chunks)


console.log(combineBuffer, combineBuffer.toString("utf-8"));


























































































