//
//  ContentView.swift
//  Calculate!
//
//  Created by Robert on 15/05/20.
//  Copyright © 2020 Robert Hughes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showTest: Bool = false
    
    var body: some View {
        VStack {
            
            Text("Calculate!")
                .font(.largeTitle)
                .padding(.top, 20.0)
            
            NavigationLink(destination: GamemodeView().navigationBarBackButtonHidden(true)) {
                Text("Play")
                    .font(.title)
                    .padding(.top, 150.0)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
