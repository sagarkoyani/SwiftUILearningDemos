//
//  ColorPickerSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct ColorPickerSwiftUIView: View { // Allow users to pick color.
    @State var backgroundColor : Color = .white
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            ColorPicker(selection: $backgroundColor,
                        supportsOpacity: true) {
                Text("Select Color")
                    .foregroundColor(.white)
                    .font(.headline)
            }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(50)
        }
        
    }
}

struct ColorPickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerSwiftUIView()
    }
}
