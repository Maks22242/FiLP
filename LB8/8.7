open System
// Define a function to construct a message to print
type Passport(first:string ,sur: string,last: string,ser:int, nomer: int,date: string) =
    //параметры конструктора
    member this.Firstname:string  = first
    member this.Surname:string = sur
    member this.Lastname:string = last
    member this.nomber:int = nomer
    member this.seriya:int = ser
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
   printfn "Введите серию и номер паспорта(серия 4 цифры. номер 6 цифр) "
   let s =System.Convert.ToInt32(System.Console.ReadLine());
   let nomb = System.Convert.ToInt32(System.Console.ReadLine());
   printfn "Введите дату"
   let date = System.Console.ReadLine();

   let passport_1 = Passport(Firstname,Surname,Lastname,s,nomb,date)

   printfn "Введите ФИО человека"
   let Firstname = System.Console.ReadLine();
   let Surname = System.Console.ReadLine();
   let Lastname = System.Console.ReadLine();
   printfn "Введите серию и номер паспорта(серия 4 цифры. номер 6 цифр) "
   let s =System.Convert.ToInt32(System.Console.ReadLine());
   let nomb = System.Convert.ToInt32(System.Console.ReadLine());
   printfn "Введите дату"
   let date = System.Console.ReadLine();

   let passport_2 = Passport(Firstname,Surname,Lastname,s,nomb,date)
   let pass = passport_1:> IComparable
   printfn $"Сравнение двух паспартов по серии и номеру: {pass.CompareTo passport_2}"
   0 // return an integer exit code
