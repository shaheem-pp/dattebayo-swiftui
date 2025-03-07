//
//  HomeView.swift
//  dattebayo
//
//  Created by Shaheem PP on 2025-03-07.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = NavigationCardViewModel() // Using ViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .center, spacing: 30.0) {
                    ForEach(viewModel.cards) { card in
                        NavigationLink(destination: DetailView(card: card)) {
                            NavigationCardView(card: card)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Dattebayo")
                            .font(.title) // You can adjust the font size here
                        Image("naruto") // Make sure the image name matches the asset
                            .resizable() // Allows resizing of the image
                            .scaledToFit() // Maintains aspect ratio
                            .frame(width: 24, height: 24) // Adjust size to match the text
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
