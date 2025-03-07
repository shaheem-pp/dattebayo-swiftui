import SwiftUI

struct DetailView: View {
    let card: NavigationCardModel
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ZStack {
                    // Background with Blurred Image
                    Image(card.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: max(geometry.size.width, 1), height: max(350, 1)) // Ensure valid positive values
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
                            .frame(width: max(geometry.size.width - 150, 1), height: max(geometry.size.height / 4, 1)) // Ensure valid positive values
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                        
                        Text(card.title)
                            .font(.custom("LuckiestGuy-Regular", size: 36))
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
    DetailView(card: NavigationCardModel(imageName: "characters", title: "Characters"))
}
