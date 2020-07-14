//
//  GamemodeView.swift
//  Calculate!
//
//  Created by Robert on 16/05/20.
//  Copyright © 2020 Robert Hughes. All rights reserved.
//

import SwiftUI

struct GamemodeView: View {
    var body: some View {
        VStack {
            Text("Select your Gamemode")
                .font(.largeTitle)
            HStack {
                NavigationLink(destination: ZenView().navigationBarBackButtonHidden(true)) {
                    Text("Zen")
                        .foregroundColor(Color.blue)
                }
                .background(Image("Button"))
                .padding(.leading, 70.0)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Time\n Challenge")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 12))
                }
                .background(Image("Button"))
                .padding(.trailing, 70.0)
            }
            .padding(.top, 30.0)
        }
    }
}

struct GamemodeView_Previews: PreviewProvider {
    static var previews: some View {
        GamemodeView()
    }
}
