//
//  SchoolEmployees.swift
//  Hospital

//Lets now head over to the SchoolEmployees.swift file. We're going to create our three structures.
//(11) - Create a new struct called AdvisoryBoardMember which has two instance properties (both of which should be variables). One should be called name of type String. The other should be called vacationDays of type Int with a default value of 30. As well, implement the function wages() which takes in no argument and returns a Double. In your implementation of this function, you should return back the number 100_000.00 (or 100000.00, they are both the same thing).
//(12) Next is something that will show how powerful these protocols really are. Extend the AdvisoryBoardMember struct and adopt the following the following protocols in this extension.
//Payable
//TimeOff
//Do not implement any functions within this extension. You are just adopting the various protocols. The Payable protocol requires that we implement the wages() function, which we already did when we created our structure. But we also created a default implementation of this wages() function in the extension of our protocol. Because of how we defined it, if we were to call on wages() on an instance of AdvisoryBoardMember, it would jump to the implementation that we created in our declaration of the AdvisoryBoardMember class and return back 100_000.00, not 50_000.00.
//The TimeOff protocol asks us to conform to it by supplying a gettable / settable property named vacationDays, which we already did. It also asks to implement a function requestForVacation(_:) which we didn't do, nor do we have to. We provided a default implementation in our extension of the protocol, so there's nothing else we need to do here.

struct AdvisoryBoardMember {
    var name: String
    var vacationDays: Int = 30
    func wages() -> Double {
        return 100_000
    }
}
extension AdvisoryBoardMember: Employee {
    
}

//(13) - Create a new struct called Principal which has two instance properties (both of which should be variables). One is called name of type String. The other is called vacationDays of type Int with a default value of 20. As well, implement the wages() function which takes in no arguments and returns a Double. In your implementation, it should return back 80_000.00.
//(14) - Following the creation of that struct, extend the Principal struct and adopt the following protocols
//Payable
//TimeOff
//Reprimand
//Similar to what we just did, do NOT implement any functions in this extension, it will just be empty. Any instance of Principal now has all of the functionality that was supplied through the extensions on these various protocols for free.
//(15) - Create a struct called Teacher which has two instance properties (both should be variables). One is called name of type String. The other is called vacationDays of type Int with a default value of 15. Do not implement the wages() function.
//(16) - Create an extension on Teacher and have it adopt the following protocols
//Payable
//TimeOff
//Teach
//Do not implement anything in this extension, it should be blank.


struct Principal {
    var name: String
    var vacationDays: Int = 20
    func wages() -> Double {
        return 80_000
    }
}
extension Principal: Employee, Reprimand {
    
}
struct Teacher {
    var name: String
    var vacationDays: Int = 15
}
extension Teacher: Employee, Teach {
    
}





