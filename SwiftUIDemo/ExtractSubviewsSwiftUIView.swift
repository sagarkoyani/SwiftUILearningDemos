//
//  ExtractSubviewsSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 15/06/23.
//

import SwiftUI

struct ExtractSubviewsSwiftUIView: View {
    var body: some View {
        ZStack {
            Color.white

            
            VStack(spacing:30){
                ExtractedView(count: 10, name: "Apple", color: .red.opacity(0.5))
                ExtractedView(count: 20, name: "Orange", color: .orange)
                ExtractedView(count: 30, name: "Banana", color: .yellow)
                ExtractedView(count: 40, name: "Tomato", color: .red.opacity(0.7))

            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
        
    }
    
}

struct ExtractSubviewsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsSwiftUIView()
    }
}

struct ExtractedView: View {
    let count : Int
    let name : String
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
                .bold()
                .foregroundColor(Color.white)
            Text(name)
                .bold()
                .foregroundColor(Color.white)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        .shadow(radius: 10.0,x: 0,y: 3)
    }
}
