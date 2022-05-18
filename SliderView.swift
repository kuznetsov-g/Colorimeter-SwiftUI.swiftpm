import SwiftUI

struct sliderView: View {
    @Binding var sliderValue: Double
    @State var textFieldValue = "100"
    let sliderColor: Color
    var body: some View {
        HStack{
            Text("0").foregroundColor(sliderColor)
            Slider(value: $sliderValue, in: 0...255, onEditingChanged: { _ in
                textFieldValue = String(Int(sliderValue))
            })
            .tint(sliderColor.opacity(sliderValue/255))
            //.opacity(sliderValue/255)
            
            Text("255").foregroundColor(sliderColor)
            TextField("0..", text: $textFieldValue)
                .frame(width: 50, height: 50)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    sliderValue = Double(self.textFieldValue)! 
                }
        }.padding()
    }
}
