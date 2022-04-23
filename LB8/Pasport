open System
open System.Text.RegularExpressions
open System.Diagnostics

// Define a function to construct a message to print
type Passport(first:string ,sur: string,last: string,ser:string, nomer: string,date: string) =
    //Проверка номера и серии
    let rec check_numb_ser (x:string, y:string)=
        let reg = new Regex(@"^([\d]+)$")
        if (y="serial") then
            match x with
            |x when x.Length <> 4 ->
                printfn"Слишком длинный или короткий! Введите заново"
                let x1 = Console.ReadLine();
                check_numb_ser (x1, y)
            |x when x.Length =4 && reg.IsMatch(x) -> x
            | _->
                printfn"Только цифры. Введите заново"
                check_numb_ser (x, y)
        else
            match x with
            |x when x.Length <> 6 ->
                printfn"Слишком длинный или короткий! Введите заново"
                let x1 = Console.ReadLine();
                check_numb_ser (x1, y)
            |x when x.Length =6 && reg.IsMatch(x) -> x
            | _->
                printfn"Только цифры. Введите заново"
                check_numb_ser (x, y)
    //проверка имени, фамилии и отчества
    let rec check_name x:string = 
        let reg = new Regex(@"^[a-zA-z]+$")
        match x with
        |x when reg.IsMatch(x) -> x
        |x -> printfn " Неверный ввод, только буквы! "; check_name (System.Console.ReadLine())
    
    let rec check_dateBirth (x:string) =
        let reg = new Regex(@"^(0[1-9]|[1-2][0-9]|3[0-1])[- /.](0[1-9]|1[0-1-2])[- /.](19|20)\d\d$")
        match x with
        |x when x.Length <> 0 && reg.IsMatch(x) -> x
        |x -> printfn "Введено неверно, придерживайтесь формата: dd.mm.yyyy"; check_dateBirth (System.Console.ReadLine())
    
     
   
   //параметры конструктора
    member this.Firstname:string  = first
    member this.Surname:string = sur
    member this.Lastname:string = last
    member this.nomber:string = nomer
    member this.seriya:string = ser
    member this.Date = date
    //вывод элементов:
    member this.Print() = printfn $"Паспорт:Фамилия: {this.Firstname}
    Имя:{this.Lastname}
    Отчество:{this.Lastname}
    дата рождения: {this.Date}
    Серия и Hомер:{this.seriya} {this.nomber}" 

    //сравнение по серии,номеру
    interface IComparable with
        member this.CompareTo(o:obj):int = 
        match o with
        | :? Passport as other -> if (this.seriya = other.seriya) && (this.nomber = other.nomber) then 1 else 0
        |_->0
    
[<AbstractClass>]
type CollectionDoc() = 
    abstract member searchDoc: Passport ->bool

type ArrayPassport (list_passport: Passport list)=
    inherit CollectionDoc()
    override this.searchDoc(Passport: Passport) =
        Array.exists(fun x ->x.Equals Passport)(Array.ofList list_passport)
 
type ListPassport (list_passport: Passport list)=
    inherit CollectionDoc()
    override this.searchDoc(Passport: Passport) =
        List.exists(fun x -> x.Equals Passport) list_passport

type SetPassport (list_passport: Passport list)=
    inherit CollectionDoc()
    override this.searchDoc(Passport: Passport) =
        Set.contains Passport (Set.ofList list_passport)

type BinneryPassport (list_passport: Passport list)=
    inherit CollectionDoc()
    let rec TreeSearch (list_passport: Passport list) (currentPassport : Passport) =
        match (List.length(list_passport)) with
        | 0->false
        | x->
             let S = x/2
             match  Convert.ToInt32(currentPassport.Equals(list_passport.[S])) |> sign with
             |1->true
             |0-> TreeSearch list_passport.[..S-1] currentPassport
             |_->TreeSearch list_passport.[S+1..] currentPassport
    override this.searchDoc(Passport: Passport) = 
        TreeSearch (List.sortBy(fun (x:Passport)->(x.seriya,x.nomber))list_passport) Passport

let new_Passport () =    
    printfn "Введите ФИО человека"
    let Firstname = System.Console.ReadLine();
    let Surname = System.Console.ReadLine();
    let Lastname = System.Console.ReadLine();
    printfn "Введите дату Рождения dd.mm.yyyy"
    let date = System.Console.ReadLine();
    printfn "Введите серию и номер паспорта(серия 4 цифры. номер 6 цифр) "
    let s =System.Console.ReadLine()
    let nomb = System.Console.ReadLine();
    let passport = Passport(Firstname,Surname,Lastname,s,nomb,date)
    passport

let rec createListPassport n = 
    match n with
    |0->[]
    |_-> 
        let head = new_Passport ()
        let Tail = createListPassport (n-1)
        head::Tail


[<EntryPoint>]
let main argv =
   let passport_3 = new_Passport ()
   passport_3.Print
   let Listpass = (createListPassport 3 @ [passport_3] @ createListPassport 1)
   let arr = ArrayPassport(Listpass)
   let List = ListPassport(Listpass)
   let Set = SetPassport(Listpass)
   let bin = BinneryPassport(Listpass)


   let time = System.Diagnostics.Stopwatch.StartNew()
   printfn $"arr:{arr.searchDoc passport_3}"
   time.Stop()
   printfn $"result arr{time.Elapsed.TotalMilliseconds }"
   time.Reset()
   
   time.Start()
   printfn $"arr:{List.searchDoc passport_3}"
   time.Stop()
   printfn $"result arr{time.Elapsed.TotalMilliseconds }"
   time.Reset()

   time.Start()
   printfn $"arr:{Set.searchDoc passport_3}"
   time.Stop()
   printfn $"result arr{time.Elapsed.TotalMilliseconds }"
   time.Reset()

   time.Start()
   printfn $"arr:{bin.searchDoc passport_3}"
   time.Stop()
   printfn $"result arr{time.Elapsed.TotalMilliseconds }"
   time.Reset()
   0 // return an integer exit code
