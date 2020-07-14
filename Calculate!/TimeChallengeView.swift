//
//  TimeChallengeView.swift
//  Calculate!
//
//  Created by Robert on 16/05/20.
//  Copyright © 2020 Robert Hughes. All rights reserved.
//

import SwiftUI

struct TimeChallengeView: View {
    
    @State var targetNumber = Int.random(in: 1...10)
    @State var userNumber = Int.random(in: 1...20)
       
    func unmatch() {
        while userNumber == targetNumber {
            userNumber = Int.random(in: 1...10)
        }
    }
       
    @State var alertShow = false
    @State var optionOne = Int.random(in: 2...5)
    @State var optionTwo = Int.random(in: 2...5)
    @State var optionThree = Int.random(in: 2...5)
    @State var optionFour = Int.random(in: 2...5)
       
    func resetNumbers() {
        optionOne = Int.random(in: 2...5)
        optionTwo = Int.random(in: 2...5)
        optionThree = Int.random(in: 2...5)
        optionFour = Int.random(in: 2...5)
        targetNumber = Int.random(in: 1...10)
        userNumber = Int.random(in: 1...20)
        unmatch()
    }
       
    func checkNumbers() {
        if userNumber == targetNumber {
            alertShow = true
        }else {
            alertShow = false
        }
    }
       
       
       /*
       let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
       */
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {self.resetNumbers()}) {
                    Image("StartOverIcon").resizable()
                        .padding(.leading, 30.0)
                        .aspectRatio(2, contentMode: .fit)
                        .frame(width: 60.0, height: 60.0)

                }
                Spacer()
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                    Text("🏠")
                        .font(.title)
                        .padding(.trailing, 30.0)
                        
                }
            }
            Spacer()
            Text("Try and Get to the Number:")
                    .font(.title)
            Text("\(targetNumber)")
            
            Spacer()
            Text("\(userNumber)")
                .font(.largeTitle)
                .alert(isPresented: $alertShow) {
                    () -> Alert in
                    return Alert(title: Text("You Won!"), message: Text("Congrats You Won The Game!"), dismissButton: .default(Text("New Round")) {
                        self.resetNumbers()
                        })
                }
            Spacer()
            HStack {
                Button(action: {
                    self.userNumber += self.optionOne
                    self.checkNumbers()
                }) {
                    Text("+\(optionOne)")
                }
                .background(Image("Button"))
                .padding(.leading, 80.0)
                Spacer()
                Button(action: {
                    self.userNumber -= self.optionTwo
                    self.checkNumbers()
                }) {
                    Text("-\(optionTwo)")
                }
                .background(Image("Button"))
                .padding(.trailing, 80.0)
            }
            .font(.title)
            .padding(.bottom, 80.0)
            HStack {
                Button(action: {
                    self.userNumber += self.optionThree
                    self.checkNumbers()
                }) {
                    Text("+\(optionThree)")
                }
                .background(Image("Button"))
                .padding(.leading, 80.0)
                Spacer()
                Button(action: {
                    self.userNumber -= self.optionFour
                    self.checkNumbers()
                }) {
                    Text("-\(optionFour)")
                }
                .background(Image("Button"))
                .padding(.trailing, 80.0)
            }
            .font(.title)
            .padding(.bottom, 50.0)
        }
        .onAppear(perform: unmatch)
    }
}

struct TimeChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeChallengeView()
    }
}
