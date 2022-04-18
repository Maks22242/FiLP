open System

let readArray n =
    let rec read n arr = 
        match n with 
        |0 ->arr
        |_->
            let newEl=Console.ReadLine()
            let newArr = Array.append arr [|newEl|]
            read (n-1) newArr
    read n [||]

let writeArray arr = 
    printfn "%A" arr


[<EntryPoint>]
let main argv = 
    let n = Console.ReadLine() |> Convert.ToInt32
    let reversArr = (readArray n) |> Array.rev 
    writeArray reversArr

    0
