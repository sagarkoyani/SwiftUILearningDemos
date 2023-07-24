//
//  ContextSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct ContextSwiftUIView: View {
    
    @State var backgroundColor : Color = .blue
    
    var body: some View {
        VStack {
            VStack{
                Image(systemName: "house.fill")
                Text("Hello, World!")
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(10.0)
            .contextMenu {
                Button {
                    backgroundColor = .yellow
                } label: {
                    HStack{
                        Text("Like")
                        Image(systemName: "flame.fill")
                    }                }

                Button {
                    backgroundColor = .green
                } label: {
                    HStack{
                        Text("Share")
                        Image(systemName: "flame.fill")
                    }
                }
                
                Button {
                    backgroundColor = .red
                } label: {
                    HStack{
                        Text("Subscribe")
                        Image(systemName: "flame.fill")
                    }
                }
            }
            Spacer()
        }
        
        
        
    }
}

struct ContextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContextSwiftUIView()
    }
}
