//
//  IfelseSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 16/06/23.
//

import SwiftUI

struct IfelseSwiftUIView: View {
    @State var isCircle : Bool = false
    @State var isRectangle : Bool = false
    @State var isLoading : Bool = false
// SWift UI is great for reactive changes work like a pro 
    var body: some View {
        VStack {
            
            if isLoading {
                ProgressView()
            }
            
            Button("Circle:\(isCircle.description)") {
                isCircle.toggle()
                isLoaderCheck()
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            
            if isCircle {
               Circle()
                    .fill(.green)
                    .frame(width: 200,height: 200)
            }
            
            Button("Rectangle:\(isRectangle.description)") {
                isRectangle.toggle()
                isLoaderCheck()
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            
            if isRectangle {
               Rectangle()
                    .fill(.green)
                    .frame(width: 200,height: 200)
            }
            
            
            Spacer()
        }

    }
    
    func isLoaderCheck(){
         isLoading = isCircle && isRectangle
    }
}

struct IfelseSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        IfelseSwiftUIView()
    }
}
