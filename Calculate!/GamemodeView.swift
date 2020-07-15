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
                    HStack {
                        Text("Zen").foregroundColor(Color.black)
                    }
                    .background(Image("Button").foregroundColor(Color.orange))
                }
                .padding(.leading, 70.0)
                Spacer()
                NavigationLink(destination: ZenView().navigationBarBackButtonHidden(true)) {
                    HStack {
                        Text("    Time\nChallenge").foregroundColor(Color.black)
                            .font(.footnote)
                    }
                    .background(Image("Button").foregroundColor(Color.orange))
                }
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
