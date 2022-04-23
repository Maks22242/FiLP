open System
open System.Text.RegularExpressions

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
    
    

[<EntryPoint>]
let main argv =
   printfn "Введите ФИО человека"
   let Firstname = System.Console.ReadLine();
   let Surname = System.Console.ReadLine();
   let Lastname = System.Console.ReadLine();
   printfn "Введите дату Рождения dd.mm.yyyy"
   let date = System.Console.ReadLine();
   printfn "Введите серию и номер паспорта(серия 4 цифры. номер 6 цифр) "
   let s =System.Console.ReadLine()
   let nomb = System.Console.ReadLine();

   let passport_1 = Passport(Firstname,Surname,Lastname,s,nomb,date)

   printfn "Введите ФИО человека"
   let Firstname = System.Console.ReadLine();
   let Surname = System.Console.ReadLine();
   let Lastname = System.Console.ReadLine();
   printfn "Введите дату Рождения dd.mm.yyyy"
   let date = System.Console.ReadLine();
   printfn "Введите серию и номер паспорта(серия 4 цифры. номер 6 цифр) "
   let s =System.Console.ReadLine();
   let nomb = System.Console.ReadLine();

   let passport_2 = Passport(Firstname,Surname,Lastname,s,nomb,date)
   let pass = passport_1:> IComparable
   printfn $"Сравнение двух паспартов по серии и номеру: {pass.CompareTo passport_2}"
   0 // return an integer exit code
