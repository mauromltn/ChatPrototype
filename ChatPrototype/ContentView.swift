import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
			  ChatBubble(text: "Knock, knock!", backgroundColor: .yellow)
			  ChatBubble(text: "Who's there?", backgroundColor: .teal)
			  ChatBubble(text: "Your friend!", backgroundColor: .yellow)
			  ChatBubble(text: "Come in!", backgroundColor: .teal)
        }
        .padding()
    }
}

struct ChatBubble: View {
	let text: String
	let backgroundColor: Color
	
	var body: some View {
		Text(text)
			.padding()
			.background(backgroundColor, in: RoundedRectangle(cornerRadius: 8))
			.shadow(color: .black.opacity(0.3), radius: 5, x: 3, y: 3)
	}
}

#Preview {
    ContentView()
}
