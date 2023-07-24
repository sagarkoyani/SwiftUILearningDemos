//
//  ForLoopSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 12/06/23.
//

import SwiftUI

struct ForLoopSwiftUIView: View {
    var body: some View {
        VStack{
            ForEach(0..<3) { index in
                Circle()
                    .background(Color.green)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
            }
        }
        .background(Color.orange)
        .frame(width: 100,height: 400)
        .shadow(color: Color.black.opacity(0.5),radius: 2,x: 0,y:0)
        .overlay {
            HStack{
                ForEach(0..<3) { index in
                    Circle()
                        .background(Color.green)
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                }
            }
            .background(Color.orange)
            .frame(width: 400,height: 100)
        }

    }
}

struct ForLoopSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForLoopSwiftUIView()
    }
}
