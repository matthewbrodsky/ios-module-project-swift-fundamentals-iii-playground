// Swift Fundamentals III Module Project

  //  $1 USD to $1.38 CAD
  //  $1 USD to $21.92 MXN

enum Currency {
    case USD
    case CAD
    case MXN
}

let usToCad = 1.38
let usToMxn = 21.92

var currency = Currency.MXN

func convert(_ dollars: Double) -> Double {
    var newCurrency: Double = 0
    
    if currency == .CAD {
        newCurrency = dollars * usToCad
    }
    else if currency == .MXN {
        newCurrency = dollars * usToMxn
    }
    return newCurrency
}

let conversion = convert(5)
print(conversion)

func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
        return nil
    }
    let convertedAmount = convert(unwrappedAmount)
    return String(convertedAmount)
}

convert(amountString: "20")
