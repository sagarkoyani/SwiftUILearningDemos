//
//  StepperSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct StepperSwiftUIView: View {
    @State var stepperValue : Int = 10
    @State var widthIncrement : Int = 0
    
    var body: some View {
        VStack{
            Stepper("Stepper Count:- \(stepperValue) ",
                    value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 100 + CGFloat(widthIncrement),height: 100)
                .foregroundColor(.blue)
            
            Stepper("Stepper 2", onIncrement: {
                withAnimation(.easeInOut) {
                    widthIncrement += 10
                }
            }, onDecrement: {
                withAnimation(.easeInOut) {
                    widthIncrement -= 10
                }
                
            })
        }.padding()
    }
}

struct StepperSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepperSwiftUIView()
    }
}
