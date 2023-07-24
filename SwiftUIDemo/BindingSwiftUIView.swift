//
//  BindingSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 16/06/23.
//

import SwiftUI

struct BindingSwiftUIView: View {
    @State var backColor : Color = .green
    @State var title : String = "Title"
    
    var body: some View {
        ZStack {
            backColor.ignoresSafeArea()
            VStack{
                ButtonView(
                    backColor: $backColor,
                    title: $title
                )

            }
        }
    }
}

struct BindingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BindingSwiftUIView()
    }
}

struct ButtonView: View {
   @Binding var backColor : Color
   @Binding var title : String

    var body: some View {
        
        VStack{
            Text(title)
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 40.0))
                .bold()
            Button {
                backColor = backColor == .red ? .green:.red
                title = title == "Red" ? "Green" : "Red"
            } label: {
                Text("Login")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

        }
    }
}
