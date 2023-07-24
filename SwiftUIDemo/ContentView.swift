//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
//                .background(Color.red)
                .padding(.bottom,5)
            Text("This is second line that is subheading or we can say description label we can say so stay tuned with us. ")
//                .background(Color.blue)
        }
        .padding()
        .background(Color.white)
        .shadow(color:Color.black.opacity(0.2),
                radius: 80,
                x: -1,
                y: 10)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
