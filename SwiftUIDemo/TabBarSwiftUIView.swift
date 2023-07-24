//
//  TabBarSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct TabBarSwiftUIView: View {
    @State var selectedTab : Int = 0
    let icons : [String] = [
    "heart.fill","globe","house.fill","person.fill"
    ]
    
    var body: some View {
        TabView{
            ForEach(icons,id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(colors: [Color.red,.blue], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(width: 250,height: 200)
        .tabViewStyle(.page)
        
        
//        TabView(selection:$selectedTab) {
//
//            HomeView(selectedTabIndex: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                         }
//                .tag(0)
//
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//
//                }
//                .tag(1)
//
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct TabBarSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarSwiftUIView()
    }
}

struct HomeView: View {
    @Binding var selectedTabIndex : Int
    
    var body: some View {
        ZStack{
            Color.red.edgesIgnoringSafeArea([.top])
           
            VStack{
                Text("Home Tab")
                    .font(.title)
                    .foregroundColor(.white)
                Button {
                    selectedTabIndex = 2
                } label: {
                    Text("Go to profile")
                        .padding()
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(10)
                        .font(.title3)
                }
            }
            

        }
    }
}
