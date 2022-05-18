import SwiftUI

struct ColoredView: View {
    var viewColor : Color = .red
    var body: some View {
        Rectangle()
            .foregroundColor(viewColor)
            .frame(width: 350, height: 250)
            .padding()
            .overlay(Rectangle().stroke(lineWidth: 4))
                }
}
