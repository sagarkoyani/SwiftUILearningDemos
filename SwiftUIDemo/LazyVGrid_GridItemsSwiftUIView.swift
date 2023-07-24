//
//  LazyVGridSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 13/06/23.
//

import SwiftUI

struct LazyVGridSwiftUIView: View {
    let columns = [
//        GridItem(.adaptive(minimum: 10.0,maximum: 100),spacing: nil,alignment: nil), // Adjust by self
        GridItem(.flexible(),spacing: nil,alignment: nil), // Adjust flexible
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),

        //        GridItem(.fixed(50),spacing: nil,alignment: nil) // ocupie fixed 50 px width.

    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.gray)
                .frame(height: 400)
            LazyVGrid(columns: columns) {
                ForEach(0..<30) { index in
                    Rectangle()
                        .fill(Color.orange)
                        .frame(height: 120)
                }}
        
        }
    }
}

struct LazyVGridSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridSwiftUIView()
    }
}
