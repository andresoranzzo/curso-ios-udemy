//
//  ContentView.swift
//  AngelaCard
//
//  Created by evo on 20/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.50, blue: 0.73).edgesIgnoringSafeArea(.all)
            VStack {
                Button.init(<#T##titleKey: LocalizedStringKey##LocalizedStringKey#>, role: ., action: <#T##() -> Void#>)
                Image("angela")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180.0, height: 180.0)
                    .clipShape(Circle()) // Pq ele corta em cima e embaixo?
                    .overlay(
                        Circle().stroke(.white, lineWidth: 10)
                    )
                Text("Angela")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+55 19 91234 5678", imageName: "phone.fill")
                InfoView(text: "angela@email.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
