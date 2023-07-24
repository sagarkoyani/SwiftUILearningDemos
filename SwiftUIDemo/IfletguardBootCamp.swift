//
//  IfletguardBootCamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 28/06/23.
//

import SwiftUI

struct IfletguardBootCamp: View {
    
    @State var displayText : String?
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("Optional Unwrapping Test")
                if let displayText = displayText{
                    Text(displayText)
                }
            }
            .navigationTitle("Optional Unwrap Test")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                    displayText = "Now It has value"
                }
            }
        }
        
        
    }
        
}

struct IfletguardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfletguardBootCamp()
    }
}
