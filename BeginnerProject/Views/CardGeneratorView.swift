import SwiftUI

struct Card {
    
    // This property stores the number of the card (1 to 13)
    var number = 1
    
    // This property stores the number representation of the suit (0 to 3)
    var suit = 0
}

struct CardGeneratorView: View {
    
    // This is to store our generated Card instances
    @State var deck = [Card]()
    
    // This array contains the string representation of suits
    var suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
    
    // This array is for storing a string representation of previously generated number/suit combos
    @State var generatedLog = [String]()
    
    // This is the message for the label
    @State var message = ""
    
    var body: some View {
        
        VStack(spacing: 10.0) {
            
            // The label
            Text(message)
            
            HStack(spacing: 10.0) {
                
                Button("Add Card") {
                    addCard()
                }
                
                Button("Draw a Card") {
                    drawCard()
                }
            }
        }
    }
    
    func addCard() {
        
        // Generate random number and suit
        let randNumber = Int.random(in: 1...13)
        let randSuit = Int.random(in: 0...3)
        
        // Create card instance and set properties
        var newCard = Card()
        newCard.number = randNumber
        newCard.suit = randSuit
        
        // Create a string representing this number/suit combination
        let numberSuitString = String(newCard.number) + "/" + String(newCard.suit)
        
        // Check if this combo exists in our log
        if generatedLog.contains(numberSuitString) {
            
            // This card already exists, change message
            message = "Generated duplicate card."
        }
        else {
            // Couldn't find the combo in our log, so this card is new
            
            // Add this to our deck array
            deck.append(newCard)
            
            // Add the number/suit combo to the log
            generatedLog.append(numberSuitString)
            
            // Get the card and suit names
            let cardName = getCardName(newCard.number)
            let suitName = suits[newCard.suit]
            
            // Change the message
            message = "Generated a \(cardName) of \(suitName)"
        }
        
        
        
        
    }
    
    func drawCard() {
        
        // If there are no cards in the deck, display an error
        if deck.count == 0 {
            message = "No cards in the deck."
        }
        else {
            // You could use the randomElement method
            // let randomCard = deck.randomElement()
            
            // Or we can get a random index in the range of the array
            let randIndex = Int.random(in: 0...deck.count-1)
            
            // Get the card instance at the random index
            let randomCard = deck[randIndex]
            
            // Get the card number and suit names
            let cardName = getCardName(randomCard.number)
            let suitName = suits[randomCard.suit]
            
            // Change the message
            message = "Drew a \(cardName) of \(suitName)"
        }
    
    }
    
    // This method will return the name of the card given a number
    func getCardName(_ cardNumber:Int) -> String {
        
        // If you know how to use Swift Switch statements, you could use that. Otherwise, use an If statement.
        if cardNumber == 1 {
            return "Ace"
        }
        else if cardNumber == 11 {
            return "Jack"
        }
        else if cardNumber == 12 {
            return "Queen"
        }
        else if cardNumber == 13 {
            return "King"
        }
        else {
            return String(cardNumber)
        }
    }
}

struct CardGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        CardGeneratorView()
    }
}
