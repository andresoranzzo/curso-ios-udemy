//
//  InfoView.swift
//  AngelaCard
//
//  Created by evo on 21/08/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundStyle(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundStyle(Color(red: 0.16, green: 0.50, blue: 0.73))
                    Text(text)
                        .foregroundStyle(.black)

                }
            )
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits) // Pq ainda ta tela cheia?
}
