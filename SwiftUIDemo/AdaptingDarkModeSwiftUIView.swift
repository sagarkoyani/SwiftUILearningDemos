//
//  AdaptingDarkModeSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 27/06/23.
//

import SwiftUI

struct AdaptingDarkModeSwiftUIView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var toggleIsON : Bool = true

    var body: some View {
        NavigationView{
            ScrollView{
                Toggle(isOn: $toggleIsON) {
                    Text("Turn on light")
                }
                .toggleStyle(.switch).tint(Color.red)
                .padding()
                
                VStack(spacing: 20.0) {
                        
                    Text("This is Primary")
                        .foregroundColor(.primary)
                    Text("This is secondary")
                        .foregroundColor(.secondary)
                    Text("This is White")
                        .foregroundColor(.white)
                    Text("This is Black")
                        .foregroundColor(.black)

                    Text("This is Globally adaptive!")
                        .foregroundColor(.black)
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 300,height: 200)
                        .foregroundColor(Color("AdaptiveColor"))
                }
            }
            .navigationTitle("Dark mode BootCamp")
        }
    }
}

struct AdaptingDarkModeSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AdaptingDarkModeSwiftUIView()
                .preferredColorScheme(.light)
            AdaptingDarkModeSwiftUIView()
                .preferredColorScheme(.dark)
        }
    }
}
