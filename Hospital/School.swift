//
//  School.swift
//  Hospital

//(1) - In the School.swift file, create a protocol called Payable that has one function requirement. The name of the function should be wages(). It takes in no arguments but returns back a Double.
//(2) - Below where you created the Payable protocol, create an extension on the Payable protocol and implement the wages() function. In your implementation, it should just return back 50_000.00. Notice how I used an underbar here, this can act as a comma (as if you were writing it in on paper), it doesn't do anything in code. It just makes your code more readable instead of having to see a bunch of zeros next to each other.
//(3) - Still in the same file (School.swift), create another protocol called TimeOff which includes a property named vacationDays of type Int that will be both gettable and settable. It should include a function called requestForVacation(_:) which takes in one argument named days of type Int and returns a Bool.
//(4) - Below this TimeOff protocol, create an extension on the TimeOff protocol where we will provide some default implementation to the requestForVacation(_:) function. In our implementation of the requestForVacation(_:) function, you should return true if and only if there are enough vacationDays to satisfy the request. If the vacationDays is equal to 9 and requestForVacation(10) is called by that instance (which will be our structure later on), then it should return false.

protocol Payable {
    func wages() -> Double
}
extension Payable {
    func wages() -> Double {
        return 50_000
    }
}
protocol TimeOff {
    var vacationDays: Int  { get set }
    func requestForVacation(_ days: Int) -> Bool
}
extension TimeOff {
    func requestForVacation(_ days: Int) -> Bool {
        if vacationDays >= days {
            return true
        }
        return false
    }
}

//(5) - Lets create an enum. This enum is called Punishment and should have three cases. severe, light and medium.
//(6) - Create a protocol called Reprimand which requires that there be two functions. The first function is called disciplineStudent(_:) which takes in one argument called scale of type Punishment and returns a String. The second function is called callParentDeliveringMessage(_:) which takes in one argument called scale of type Punishment and returns a String.
//(7) - Create an extension on the Reprimand protocol and provide default implementation for the two functions required by this protocol. In your implementation of the disciplineStudent(_:) function it should switch on the scale argument and return the following String based upon that case:
//If the case is .severe - "We are expelling you from the school!"
//
//If the case is .light - "You're to go back to class, don't do it again."
//
//If the case is .medium - "Why would you think that's a good idea?! You're going to detention."
//In your implementation of the callParentDeliveringMessage(_:) method, it should switch on the scale argument and return the following String based upon that case:
//If the case is .severe - "Your child has been expelled from the school."
//
//If the case is .light - "Your child thought it was funny to put gum in Amy's hair."
//
//If the case is .medium - "Your child has become a terror in the classroom."

enum Punishment {
    case severe
    case light
    case medium
}
protocol Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String
    func callParentDeliveringMessage(_ scale: Punishment) -> String
}
extension Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from the school!"
        case .light:
            return "You're to go back to class, don't do it again."
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        }
    }
    func callParentDeliveringMessage(_ scale: Punishment) -> String {
        switch scale {
        case .severe:
            return "Your child has been expelled from the school."
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        case .medium:
            return "Your child has become a terror in the classroom."
        }
    }
}

//(8) - Create an enum called Subject which has three cases. math, science and english.
//(9) - Create a protocol called Teach which requires that there be one function. That one function should be called teachSubject(_:) which takes in one argument called subject of type Subject. It will return a String.
//(10) - Create an extension on Teach and provide a default implementation of the teachSubject(_:) function.
//In your implementation, you should switch on the subject argument and return the following String based upon the specific case.
//If the case is .math - "Take out your math books please."
//
//If the case is .science - "Time to learn the best subject of all! Science!!"
//
//If the case is .english - "To read or not to read. Everyone take out your english books."

enum Subject {
    case math
    case science
    case english
}
protocol Teach {
    func teachSubject(_ subject: Subject) -> String
}
extension Teach {
    func teachSubject(_ subject: Subject) -> String {
        switch subject {
        case .math:
            return "Take out your math books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyone take out your english books."
        }
    }
}

//(17) - There's one more neat thing you can do here. If you notice something, each struct here shares the Payable and TimeOff protocol. Those seem to be something inherit to every single employee. Well, we can create an Employee protocol which adopts the Payable & TimeOff protocols. Crazy stuff, lets do it.
//Going back to the School.swift file, lets type this in:
//protocol Employee: Payable, TimeOff { }
//So anyone that adopts this Employee protocol must also conform to the Payable and TimeOff protocols as well! So we can now go back to our SchoolEmployees.swift file and take out where each struct is adopting the Payable and TimeOff protocol and replace it with the Employee protocol (which now accounts for both of those).
//You can test out your code in the ViewController.swift file, writing code in the viewDidLoad() function.
//ALSO!, there are two test files which are making sure you implement everything correctly. You can look at these tests in the ProtocolTests.swift file and the SchoolEmployeeTests.swift file.
protocol Employee: Payable, TimeOff {
    
}



