


import path from "node:path"
import fs, { fstat, stat, Stats } from 'node:fs'
import { callbackify } from "node:util"

const DEMO_FOLDER_PATH = path.join(process.cwd(), 'file-system', 'fs-demo')

const SYNC_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'sync-note.txt')

const CALLBACK_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'callback-note.txt')

const PROMISE_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'promise-note.txt')

const INSPO_FILE_PATH = path.join(DEMO_FOLDER_PATH, 'inspo-note.ts')






type FileResult = {
    style: string
    fileName: string
    content:string
    sizeInBytes: number
}


function ensureDemoFolderExits(): void {
    if(!fs.existsSync(DEMO_FOLDER_PATH)){
        fs.mkdirSync(DEMO_FOLDER_PATH, {recursive: true})
    }
}








function runSyncExample(): FileResult {
    fs.writeFileSync(SYNC_FILE_PATH, "created using sunc fs", 'utf-8')

    fs.appendFileSync(SYNC_FILE_PATH, "Appended using sunc fs", 'utf-8')

    const content = fs.readFileSync(SYNC_FILE_PATH, 'utf-8')

    const stats = fs.statSync(SYNC_FILE_PATH)

    return{
        style: 'sync',
        content,
        fileName: path.basename(SYNC_FILE_PATH),
        sizeInBytes: stats.size
    }
}


function runCallbackExample(): Promise<FileResult> {

    return new Promise((resolve, reject) => {
        fs.writeFile(
            CALLBACK_FILE_PATH,
            "created using callback fs",
            "utf-8",
            (writeError) => {
                if(writeError) {
                    reject(writeError)
                    return
                }

                fs.appendFile(
                    CALLBACK_FILE_PATH,
                    "appended using callback fs", 
                    "utf-8",
                    (appendError) =>{
                        if (appendError) {
                            reject(appendError)   

                        return

                        }

                    fs.readFile(CALLBACK_FILE_PATH, "utf-8", (readError, content) =>{

                        if(readError){
                            reject(readError)
                            
                            return
                    }

                        fs.stat(CALLBACK_FILE_PATH,(statError, stats) => {
                            if(statError){
                                reject(statError)

                                return
                            }

                            resolve({
                                style : 'callback',
                                content,
                                sizeInBytes: stats.size,
                                fileName: path.basename(CALLBACK_FILE_PATH)
                            })
                        })
                    })
                }
                )
            }
        )
        
    })

}









async function main(): Promise<void>{
    try{

        ensureDemoFolderExits()
        const syncResult = runSyncExample()

        const callBackResult = await runCallbackExample()

        console.log(syncResult, callBackResult);
        

    } catch(error) {
        const message = error instanceof Error ? error.message : "unknown"
        console.error("file system error", message)
    }
}


main()














