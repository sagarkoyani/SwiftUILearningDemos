//
//  TransitionSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 19/06/23.
//

import SwiftUI

struct TransitionSwiftUIView: View {
   @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView{
                RoundedRectangle(cornerRadius: 30.0)
                    .frame(height: UIScreen.main.bounds.height*0.5)
                    .background(Color.black)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
            
        }
    }
}

struct TransitionSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionSwiftUIView()
    }
}
