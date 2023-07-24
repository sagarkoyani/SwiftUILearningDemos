//
//  BadgeSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct BadgeSwiftUIView: View {
    var body: some View {
        /*List{
            Text("Hello, World!")
                .badge("New Items")
            Text("Hello, World!")
                .badge("New Items")
        }*/
        TabView {
            Color.red
            .tabItem{
                Image(systemName: "heart.fill")
                Text("Home")
            }.badge(5)
            
            Color.green
            .tabItem{
                Image(systemName: "bell.fill")
                Text("Notification")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BadgeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSwiftUIView()
    }
}
