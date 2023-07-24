//
//  StateBootCamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 14/06/23.
//

import SwiftUI

struct StateBootCamp: View {
    @State var backgroundColor : Color = .green
    @State var labelTitle : String = "Hello World"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            bodyCode
        }
    }
    
    var bodyCode: some View {
        
        VStack(spacing:20) {
            Text(self.labelTitle)
                .font(.largeTitle)
            
            HStack {
                Button {
                    onClickRed()
                } label: {
                    Text("Red")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(15)
                }
                Button {
                    onClickGreen()
                } label: {
                    Text("Green")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(15)
                }
            }
            Spacer()
            
            
        }
    }
    
    func onClickRed(){
        self.backgroundColor = .red
        labelTitle = "Red Clicked"
    }
    
    func onClickGreen(){
        self.backgroundColor = .green
        labelTitle = "Green Clicked"
    }
    
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
