//
//  NavigationCardView.swift
//  dattebayo
//
//  Created by Shaheem PP on 2025-03-07.
//


import SwiftUI

struct NavigationCardView: View {
    let card: NavigationCardModel // Accepts a dynamic card
    var body: some View {
        
        ZStack {
            // Background Image
            Image(card.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // Dark Overlay
            Color.black.opacity(0.5)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            // Text at Bottom Right
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(card.title)
                        .font(.custom("LuckiestGuy-Regular", size: 36))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .padding(.trailing, 15)
                        .padding(.bottom, 10)
                }
            }
        }
        .frame(width: 350, height: 120)
        .shadow(radius: 4)
    }
}

#Preview {
    NavigationCardView(card: NavigationCardModel(imageName: "akatsuki", title: "AKATSUKI"))
}
