//
//  ContentView.swift
//  I Am Rich
//
//  Created by evo on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.50, blue: 0.73)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I Am The Doctor")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                .foregroundStyle(Color.white)
                Image("evolinho")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                Text("The Evo Doctor")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
