//
//  PopOverSwiftUIVIew.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 19/06/23.
//

import SwiftUI

struct PopOverSwiftUIVIew: View {
   @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                showNewScreen.toggle()
            } label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .background(.white)
                    .cornerRadius(20.0)
                    .buttonBorderShape(.capsule)
                    
            }
            
            //Method 1 :- Sheet and fullscreen cover
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //Method 2 :- Transition // Recommended. We can customize.
            
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }.zIndex(2.0)
            
            //Method - 3 Animation Offset
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y:showNewScreen ? 0:UIScreen.main.bounds.size.height)
                .animation(.spring())
            
            
        }
    }
}

struct NewScreen : View {
    
    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack(alignment: .top, content: {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            Button {
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.orange)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .font(.largeTitle)
            }

            
        })
    }
}

struct PopOverSwiftUIVIew_Previews: PreviewProvider {
    static var previews: some View {
        PopOverSwiftUIVIew()
    }
}
