//
//  NavigationCardViewModel.swift
//  dattebayo
//
//  Created by Shaheem PP on 2025-03-07.
//


import SwiftUI

class NavigationCardViewModel: ObservableObject {
    @Published var cards: [NavigationCardModel] = [
        NavigationCardModel(imageName: "characters", title: "CHARACTERS"),
        NavigationCardModel(imageName: "clans", title: "CLANS"),
        NavigationCardModel(imageName: "teams", title: "TEAMS"),
        NavigationCardModel(imageName: "villages", title: "VILLAGES"),
        NavigationCardModel(imageName: "kekkei-genkai", title: "KEKKEI GENKAI"),
        NavigationCardModel(imageName: "tailed-beasts", title: "TAILED BEASTS"),
        NavigationCardModel(imageName: "akatsuki", title: "AKATSUKI"),
    ]
}
