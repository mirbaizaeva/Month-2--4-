import Foundation
class Pensioner{
    var name: String
    var surname: String
    var currentPensionAmount: Int
    var numberOfYearInPension: Int
    
    init(name: String, surname: String, currentPensionAmount: Int, numberOfYearInPension: Int) {
        self.name = name
        self.surname = surname
        self.currentPensionAmount = currentPensionAmount
        self.numberOfYearInPension = numberOfYearInPension
    }
    func showInfo(){
        print("_\(name) \(surname) \nТекущая сумма пенсии: \(currentPensionAmount), Количество лет на пенсии: \(numberOfYearInPension)")
    }
}
class SocialFund{
    private var pensioners = [Pensioner]()
    
    func addPensioners(pensioner: Pensioner){
        pensioners.append(pensioner)
    }
    private func increaseOfPension(person: Pensioner){
            if person.numberOfYearInPension > 5{
            person.currentPensionAmount += 1000
            }
      }
    func distributionOfPension(_ model: Pensioner){
        increaseOfPension(person: model)
            print("_\(model.name) \(model.surname) \nCумма пенсии: \(model.currentPensionAmount)")
        }
}
    
var pensioner1 = Pensioner(name: "Aigul", surname: "Alymbekov", currentPensionAmount: 3000, numberOfYearInPension: 20)
var pensioner2 = Pensioner(name: "Oma", surname: "Bahapov", currentPensionAmount: 4500, numberOfYearInPension: 25)
var pensioner3 = Pensioner(name: "Baktybek", surname: "Janybekov", currentPensionAmount: 2500, numberOfYearInPension: 15)
var pensioner4 = Pensioner(name: "Asel", surname: "Bahapova", currentPensionAmount: 5000, numberOfYearInPension: 23)
var pensioner5 = Pensioner(name: "Aigul", surname: "Alymbekov", currentPensionAmount: 4000, numberOfYearInPension: 18)

var pns = SocialFund()
pns.addPensioners(pensioner: pensioner1)
pns.addPensioners(pensioner: pensioner2)
pns.addPensioners(pensioner: pensioner3)
pns.addPensioners(pensioner: pensioner4)
pns.addPensioners(pensioner: pensioner5)

pns.distributionOfPension(pensioner1)
print("")
pns.distributionOfPension(pensioner2)
print("")
pns.distributionOfPension(pensioner3)
print("")
pns.distributionOfPension(pensioner4)
print("")
pns.distributionOfPension(pensioner5)
