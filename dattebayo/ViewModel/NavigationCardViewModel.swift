import SwiftUI

class NavigationCardViewModel: ObservableObject {
    @Published var cards: [NavigationCardModel] = [
        NavigationCardModel(imageName: "akatsuki", title: "AKATSUKI"),
        NavigationCardModel(imageName: "naruto", title: "NARUTO"),
        NavigationCardModel(imageName: "sasuke", title: "SASUKE"),
        NavigationCardModel(imageName: "itachi", title: "ITACHI")
    ]
}