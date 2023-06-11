var whileCondition = true

class Flowers {
    var bouquetsName: String
    var flowerType: String
    var price: String
    var rating: String
    var description: String
    
    init() {
        bouquetsName = ""
        flowerType = ""
        price = ""
        rating = ""
        description = ""
    }
    
    init(bouquetsName: String, flowerType: String, price: String, rating: String, description: String) {
        self.bouquetsName = "Name of the Bouquet: " + bouquetsName
        self.flowerType = "Type of the Flower: " + flowerType
        self.price = "Price: " + price
        self.rating = "Rating: " + rating
        self.description = "Description: " + description
    }
    
    func printFlowers() {
        print("\(self.flowerType)\n\(self.bouquetsName)\n\(self.description)")
    }
}

var allFlowers: [String: Flowers] = [
    "Pink Roses": Flowers(bouquetsName: "Pink Roses", flowerType: "Roses", price: "18.20$", rating: "4/5", description: "Share your feelings with your loved ones with this meaningful gesture of pretty flowers"),
    "Blissful White": Flowers(bouquetsName: "Blissful White", flowerType: "Lilies", price: "20$", rating: "4.6/5", description: "This stunning hand boutique is the peaceful gift blend of white lilies and white roses"),
    "Pink Flamingo": Flowers(bouquetsName: "Pink Flamingo", flowerType: "Tulips", price: "30$", rating: "4.9/5", description: "Vendela Roses one of the most popular ivory cur roses"),
    "Simple Beauty": Flowers(bouquetsName: "Simple Beauty", flowerType: "Hydrange", price: "44$", rating: "3/5", description: "A cylinder vase that's arranged with blue hydrangea & white orchid")
]

print("\n Welcome to our Flowers application shop \n")

repeat {
    print("MENU")
    print("1. View Newest Flowers 🌸🌸🥳")
    print("2. Search in Categories")
    print("3. View All Flowers")
    print("4. Exit ➡️")
    print("---------------------------------------------------")
    print("Select your choice!")

    if let userChoice = readLine() {
        switch userChoice {
        case "1":
            seeNewestFlowers()
        case "2":
            flowersInCategories()
        case "3":
            viewAllFlowers()
        case "4":
            whileCondition = false
        default:
            print("Invalid choice! Please try again.")
        }
    }
} while whileCondition

print("Thank you for choosing our store!")

func seeNewestFlowers() {
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
        print("Which bouquet do you want to see❓ or choose -1 to return to menu")

        var newestFlowerChoice: String = ""
        if let input1 = readLine() {
            newestFlowerChoice = input1

            switch newestFlowerChoice {
            case "1":
                let bouquet = allFlowers["Blissful White"]
                bouquet?.printFlowers()

            case "2":
                let bouquet = allFlowers["Simple Beauty"]
                bouquet?.printFlowers()
            case "-1":
                return
            default:
                print("Invalid choice! Please try again.")
            }
        }
    }
}

func flowersInCategories() {
    while true {
        let flowersCategories =
        """
        -------------⌜Flowers Categories⌝----------------
        1. Anniversary
        2. New Baby Born
        3. Graduation
        ---------------------------------------------------
        """
        print("\n")
        print(flowersCategories)
        print("Which occasion do you want to see its Bouquets or choose -1 to continue to the main menu")

        var occasionChoice: String = ""
        if let input = readLine() {
            occasionChoice = input

            switch occasionChoice {
            case "1":
                print("\n---------------------------------------------------")
                print("Anniversary Bouquets")
                print("1. Pink Roses")
                print("2. Blissful White")
                print("---------------------------------------------------")
            case "2":
                print("\n---------------------------------------------------")
                print("New Baby Born Bouquets")
                print("1. Pink Flamingo")
                print("2. Simple Beauty")
            case "3":
                print("\n---------------------------------------------------")
                print("Graduation Bouquets")
                print("1. Simple Beauty")
                print("---------------------------------------------------")
            case "-1":
                return
            default:
                print("Invalid choice! Please try again.")
            }
        }
    }
}

func viewAllFlowers() {
    print("\n---------------------------------------------------")
    print("All Bouquets")
    for (name, bouquet) in allFlowers {
        print("\n\(name):\n\(bouquet.description)\n")
    }
}
