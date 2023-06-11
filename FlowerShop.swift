
var historyFlowers : [String] = []
var whileCondition = true
class Flowers {
    var BouquetsName: String
    var FlowerType: String
    var Price: String
    var Rating: String
    var Description: String
    
    init() {
        BouquetsName = ""
        FlowerType = ""
        Price = ""
        Rating = ""
        Description = ""
    }
    
    init(BouquetsName:String , FlowerType:String , Price:String , Rating:String , Description:String) {
        self.BouquetsName = "Name of the Bouquet: " + BouquetsName
        self.FlowerType =   "Type of the Flower: " + FlowerType
        self.Price =        "Price           : " + Price
        self.Rating =       "Rating          : " + Rating
        self.Description =  "Description     : " + Description
    }
    
    func printFlowers( flowersDictionary : Dictionary<String, Flowers> , newestFlowerName :String) {
        print("\(flowersDictionary[newestFlowerName]!.FlowerType) \n\(flowersDictionary[newestFlowerName]!.BouquetsName) \n\(flowersDictionary[newestFlowerName]!.Description)")
    }
}

var allFlowers: Dictionary<String, Flowers> = [
    "Pink Roses": Flowers(BouquetsName: "Pink Roses", FlowerType: "Roses", Price: "18.20$", Rating: "4/5", Description: "Share your feelings with your loved ones with this meaningful gesture of pretty flowers"),
    "Blissful White": Flowers(BouquetsName: "Blissful White", FlowerType: "Lilies", Price: "20$", Rating: "4.6/5", Description: "This stunning hand boutique is the peaceful gift blend of white lilies and white roses"),
    "Pink Flamingo": Flowers(BouquetsName: "Pink Flamingo", FlowerType: "Tulips", Price: "30$", Rating: "4.9/5", Description: "Vendela Roses one of the most popular ivory cur roses"),
    "Simple Beauty": Flowers(BouquetsName: "Simple Beauty", FlowerType: "Hydrange", Price: "44$", Rating: "3/5", Description: "A cylinder vase that's arranged with blue hydrangea & white orchid")
]

print("\nWelcome to the Swift Flowers shop\n")

repeat {
    print("MENU")
    print("1. view Newest Flowers 🌸🌸🥳")
    print("2. Search in Categories")
    print("3. View all Flowers")
    print("4. View the History")
    print("5. Exit➡️")
    print("---------------------------------------------------")
    print("Select your choice!")

    if let userChoice = readLine() {
        switch userChoice {
        case "1":
            seeNewestFlowers()
        case "2":
            FlowersInCategories()
        case "3":
            AllFlowers()
        case "4":
            if historyFlowers.isEmpty {
                print("You haven't add any flowers yet.")
            } else {
                print(historyFlowers)
            }
        case "5":
            whileCondition = false
        default:
            print("Invalid choice❗️Please try again")
        }
    }
} while whileCondition

print("Thank you for choosing our store!")

func seeNewestFlowers() {
    let flower = Flowers()
    while true {
        let newestFlowers =
        """
        ---------------Newest Flowers------------------
        1. Blissful White
        2. Simple Beauty
        ---------------------------------------------------
        """

        print("\n")
        print(newestFlowers)
        print("Which Bouquet do you want to see❓ or choose -1 to return to menu")

        var newestFlowerChoice: String = ""
        if let input1 = readLine() {
            newestFlowerChoice = input1

            switch newestFlowerChoice {
            case "1":
                flower.printFlowers(flowersDictionary: allFlowers , newestFlowerName: "Blissful White")
                historyFlowers.append("Blissful White")

            case "2":
                flower.printFlowers(flowersDictionary: allFlowers, newestFlowerName: "Simple Beauty")
                historyFlowers.append("Simple Beauty")
            case "-1":
                return
            default:
                print("Invalid choice❗️Please try again")
            }
        }
    }
}

func FlowersInCategories() {
    while true {
        let FlowersCategories =
        """
        -------------⌜Flowers Categories⌝----------------
        1. Anniversary
        2. New Baby Born
        3. Graduation
        ---------------------------------------------------
        """
        print("\n")
        print(FlowersCategories)
        print("Which occasion do you want to see its Bouquets or choose -1 to return to menu")

        var flowersCategoryChoice = ""
        if let input = readLine() {
            flowersCategoryChoice = input

            switch flowersCategoryChoice {
            case "1":
                Anniversary()
            case "2":
                NewBabyBorn()
            case "-1":
                return
            default:
                print("Invalid choice! Please try again")
            }
        }
    }
}

func anniversary() {
    let flower = Flowers()
    let Anniversary =
    """
    ------------⌜Anniversary⌝--------------
    1. Pink Flamingo
    ---------------------------------------------------
    """
    print("\n")
    print(Anniversary) 
    print("Which bouquet do you want to see its information❓ or choose -1 to return to categories")

    var AnniversaryChoice = ""
    if let input = readLine() {
        AnniversaryChoice = input

        switch AnniversaryChoice {
        case "1":
            flower.printFlowers(flowersDictionary: allFlowers, newestFlowerName: "Pink Flamingo")
            historyFlowers.append("Pink Flamingo")
        case "-1":
            return
        default:
            print("Invalid choice❗️ please try again")  
            anniversary()
        }
    }
}
func NewBabyBorn(){
    let flower = Flowers()
    let    NewBabyBorn =
    """
    ------------⌜NewBabyBorn⌝--------------
    1. Blissful White
    ---------------------------------------------------
    """
    print("\n")
    print(NewBabyBorn) 
    print("Which bouquet do you want to see its information❓ or choose -1 to return to categories")

    var NewBabyBornChoice = ""
    if let input = readLine() {
        NewBabyBornChoice = input

        switch NewBabyBorn {
        case "1":
            flower.printFlowers(flowersDictionary: allFlowers, newestFlowerName: "Blissful White")
            historyFlowers.append("Pink Flamingo")
        case "-1":
            return
        default:
            print("Invalid choice❗️ please try again")  
            anniversary()
        }
    }
}
func Allflowers() {
    let flower = Flowers()
    print("All flowers :")
    for book in allFlowers {
        print(flower.key)
    }
    print("Which flower do you want to see its infromation❓ or choose -1 to return to menu")
    if let userInputforAllflowers = readLine() {
  
        if allFlowers.keys.contains(userInputforAllflowers) {
            flower.printFlowers(flowersDictionary: allFlowers , newestFlowerName: userInputforAllflowers)
        }
        else if userInputforAllflowers == "-1" {
            return
        }
        else {
            print("Invalid choice❗️ please try again")
            Allflowers() 
        }
              
    }
 
}
