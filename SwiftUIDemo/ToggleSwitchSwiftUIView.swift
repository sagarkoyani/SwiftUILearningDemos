//
//  ToggleSwitchSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct ToggleSwitchSwiftUIView: View {
    @State var toggleIsON : Bool = true
    
    var body: some View {
        VStack{
            Toggle(isOn: $toggleIsON) {
                Text("Turn on light")
            }
            .toggleStyle(.switch).tint(Color.red)
            
            Text(toggleIsON ? "Toggle is ON":"Toggle is OFF")
            Spacer()
        }
        .padding()
       
        
    }
}

struct ToggleSwitchSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSwitchSwiftUIView()
    }
}
