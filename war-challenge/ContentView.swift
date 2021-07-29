//
//  ContentView.swift
//  war-challenge
//
//  Created by Taylor Gibson on 7/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack(){
            
            Image("background")
                .ignoresSafeArea()
            
                VStack(){
                    Spacer()
                    Image("logo")
                    Spacer()
                    
            HStack(){
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
                    Spacer()
                    Button(action: {
                        
                        // Generate a random number 2 - 14
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        // Update the cards
                        playerCard = "card" + String(playerRand)
                        cpuCard = "card" + String(cpuRand)
                        // Update the score
                        
                        if playerRand > cpuRand {
                            playerScore += 1
                        }
                        else if playerRand < cpuRand {
                            cpuScore += 1

                        } else if playerRand == cpuRand {
                            playerScore -= 1
                            cpuScore -= 1
                        }
                        
                    }
                    , label: {
                        Image("dealbutton")

                    })
                    
                    Spacer()
                    HStack(){
                        Spacer()
                        VStack(){
                        Text("Player")
                            Text(String(playerScore))
                            .padding(10)
                        }
                        
                Spacer()
                                                
                    VStack(){
                        Text("CPU ")
                            Text(String(cpuScore))
                            .padding(10)
                        }
                Spacer()
                            
                        
                        }
                        
                Spacer()
                    }
                    
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                    
                }
            }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
