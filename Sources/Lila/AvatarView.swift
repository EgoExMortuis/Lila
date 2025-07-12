import SwiftUI

struct AvatarView: View {
    var emotion: Emotion
    @State private var isBlinking = false
    @State private var scale: CGFloat = 1.0
    @State private var rotation: Double = 0.0

    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 2)
            )
            .opacity(isBlinking ? 0.5 : 1.0)
            .scaleEffect(scale)
            .rotationEffect(.degrees(rotation))
            .onAppear {
                applyEmotion()
            }
            .onChange(of: emotion) { _ in
                applyEmotion()
            }
            .animation(.easeInOut(duration: 0.2), value: isBlinking)
            .animation(.easeInOut(duration: 0.2), value: scale)
            .animation(.easeInOut(duration: 0.2), value: rotation)
    }

    private func applyEmotion() {
        switch emotion {
        case .blink:
            isBlinking = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                isBlinking = false
            }
        case .happy:
            scale = 1.1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                scale = 1.0
            }
        case .sad:
            rotation = -5
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                rotation = 0
            }
        case .neutral:
            break
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(emotion: .neutral)
    }
}
