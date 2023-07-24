//
//  SliderSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct SliderSwiftUIView: View {
    @State var sliderValue : Double = 5
    @State var color : Color = .red
    var body: some View {
        VStack(spacing: 10){
            Text("SliderValue:- \(String(format: "%.2f", sliderValue))")
                .foregroundColor(color)
//            Slider(value: $sliderValue)
//                .accentColor(.red)
//            Slider(value: $sliderValue,in: 0...100)
//            Slider(value: $sliderValue,
//                   in: 0...100,
//                   step:5)
            Slider(value: $sliderValue,
                   in:0...100,
                   step:5,
                   onEditingChanged: { isChange in
                    color = isChange ? .green : .red
                   },
                   minimumValueLabel: Text("0"),
                   maximumValueLabel: Text("100"),
                   label:{
                    Text("Select from range")
                 })
                .accentColor(.red)
        }
        .padding()
    }
}

struct SliderSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SliderSwiftUIView()
    }
}
