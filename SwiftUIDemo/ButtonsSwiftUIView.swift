//
//  ButtonsSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 14/06/23.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    @State var title:String = "This is my Title"
    @State var button1title:String = "Button 1"
    @State var button2title:String = "Button 2"
    
    var body: some View {
        VStack(spacing:20) {
            Text(self.title)
            Button(button1title) {
                self.button1title = self.button1title + " clicked."
            }.accentColor(.red)
            
            Button {
                self.button2title = self.button2title + " clicked."
            } label: {
                Text(self.button2title)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Button {
                self.button2title = self.button2title + " clicked."
            } label: {
                Circle()
                    .frame(width: 100,height: 100)
                    .overlay {
                        Text(self.button2title)
                            .foregroundColor(Color.white)
                        .font(.headline)
                    }
            }
            
        }
    }
}

struct ButtonsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSwiftUIView()
    }
}
