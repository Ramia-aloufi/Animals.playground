import UIKit
class Animal{
    let name:String
    var health:Int
    
    init(name:String){
        self.name = name
        self.health = 100
    }
    
    func displayHealth()->Int {
        return health
    }
    
}

class Cat:Animal{

    override init(name: String) {
        super.init(name: name)
        health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run() {
        print("Running!")
        health -= 10
    }
}

class Cheetah:Cat{

    override func run() {
        if health != 0 {
       print("Running Fast!")
        health -= 50
        }else{
            print("need more health!")
        }
    }
    func sleep()  {
        if super.health < 200 {
            health += 50
        }
    }
}

class Lion:Cat{
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
        self.health -= 50
    }
}



var aCheetah = Cheetah(name: "aCheetah")
aCheetah.run()
aCheetah.run()
aCheetah.run()
aCheetah.run()

print("\n")

var aLion = Lion(name: "aLion")
aLion.run()
aLion.run()
aLion.run()
aLion.growl()

