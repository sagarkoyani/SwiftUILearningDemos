//
//  OnTapGestureBootCamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 28/06/23.
//

import SwiftUI

struct OnTapGestureBootCamp: View {
    @State var isSelected : Bool =  false
    
    var body: some View {
        VStack (spacing: 40.0){
            Text("Hello, World!")
            RoundedRectangle(cornerRadius: 10.0)
                .frame(height: 200)
                .padding()
                .foregroundColor(isSelected ? .green:.red)
            Button("Tap to change") {
                isSelected.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Second way via Tap Gesture")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding()
    }
}

struct OnTapGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGestureBootCamp()
    }
}
