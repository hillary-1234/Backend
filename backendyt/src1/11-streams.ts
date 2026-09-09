

import { Readable, Transform } from "node:stream"
import { pipeline } from "node:stream/promises"
const { Writable } = require('stream')








const readableStream = Readable.from([
    "hello",
    "from",
    "Node.js",
    "streams"
])



const upperCaseTranform = new Transform({
    transform(chunk, encoding, callback) {
        const text = chunk.toString()
        
        callback(null, text.toUpperCase())
    },
})


const writableStream = new Writable({
    write(chunk: any, encoding: BufferEncoding, callback: (error?: Error | null) => void) {
        console.log('received chunk', chunk.toString())

        callback()
    }
})



async function main(): Promise<void> {
    try {
        await pipeline(readableStream, upperCaseTranform, writableStream)

        console.log('stream completed')
    } catch (error) {
        const msg = error instanceof Error ? error.message : "unknown error"
        console.error("stream failed", msg)
    }
    
}


main()















































































