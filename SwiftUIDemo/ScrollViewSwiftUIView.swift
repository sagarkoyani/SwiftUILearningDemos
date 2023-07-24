//
//  ScrollViewSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 13/06/23.
//

import SwiftUI

struct ScrollViewSwiftUIView: View {
    
    let colors: [Color] = [.red, .blue, .green, .orange, .purple,.yellow,.cyan,.black,.accentColor,.gray,.indigo]

    var body: some View {
        ScrollView(.vertical,showsIndicators:false){
    
            LazyVStack{
                ForEach(0..<100) { index in
                    ScrollView(.horizontal,showsIndicators:false){
                        LazyHStack(alignment: .center){
                            ForEach(0..<100) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(colors.randomElement()!)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10.0)
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
            
        }
        //.background(Color.gray)
    }
}

struct ScrollViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewSwiftUIView()
    }
}
