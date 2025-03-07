import SwiftUI

struct CharacterDetailView: View {
    let card: NavigationCardModel
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ZStack {
                    // Background with Blurred Image
                    Image(card.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: 350)
                        .blur(radius: 20)
                        .clipped() // Clip the image to prevent overflow

                    Color.black.opacity(0.4)
                        .ignoresSafeArea(edges: .top) // Dark overlay to make the content more visible

                    // Content inside VStack
                    VStack {
                        Spacer()
                        // Image inside the VStack
                        Image(card.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width - 150, height: geometry.size.height / 4) // Adjust size for image
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        
                        Text(card.title)
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 350)
                .ignoresSafeArea(edges: [.top, .leading, .trailing])
                
                VStack {
                    Text("Other content goes here!")
                        .font(.title)
                        .padding()
                    // Add more content as needed
                }
                .padding(.top, 20) // Adjust the space between ZStack and the next content
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    CharacterDetailView(card: NavigationCardModel(imageName: "characters", title: "Characters"))
}
