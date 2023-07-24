//
//  SpacerSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 09/06/23.
//

import SwiftUI

struct SpacerSwiftUIView: View {
    var body: some View {

        HStack{
            Rectangle()
                .frame(width: 70.0,
                       height: 70.0)
            Spacer(minLength: 130)
            Rectangle()
                .frame(width: 70.0,
                       height: 70.0)
        }.overlay(content: {
            VStack{
                Rectangle()
                    .frame(width: 70.0,
                           height: 70.0)
                Spacer(minLength: 50)
                Rectangle()
                    .frame(width: 70.0,
                           height: 70.0)
                Spacer(minLength: 50)
                Rectangle()
                    .frame(width: 70.0,
                           height: 70.0)
            }
            .padding()
            .background(Color.orange)

        })
        .padding()
        .background(Color.green.opacity(0.8))
    }
}

struct SpacerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerSwiftUIView()
    }
}
