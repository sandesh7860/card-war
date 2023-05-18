//
//  ContentView.swift
//  Card War Gme
//
//  Created by San Dy on 14/05/2023.
//

import SwiftUI



struct ContentView: View {
    
    @State var playerCard = "card9"
    @State var cpuCard = "card12"
    
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
//    var Tie = "tie"
    
    
    var body: some View {
        
        ZStack{
            
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                //                Image("button")
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 1.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 1.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        
        
        //Randomize the player cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue{
            
            // Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        // Tie
        else if cpuCardValue == playerCardValue {
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
