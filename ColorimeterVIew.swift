import SwiftUI

struct ColorimeterView: View {
    @State private var redSliderValue : Double = 100
    @State private var greenSliderValue : Double = 100
    @State private var blueSliderValue : Double = 100
    var body: some View {
            ColoredView(viewColor: Color(red: redSliderValue/255,
                                         green: greenSliderValue/255,
                                         blue: blueSliderValue/255))
        sliderView(sliderValue: $redSliderValue, sliderColor: .red)
        sliderView(sliderValue: $greenSliderValue, sliderColor: .green)
        sliderView(sliderValue: $blueSliderValue, sliderColor: .blue)
        Spacer()
    }
}

