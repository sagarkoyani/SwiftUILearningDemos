//
//  InitializersSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 12/06/23.
//

import SwiftUI

struct InitializersSwiftUIView: View {
    let backgroundColor : Color
    let textColor : Color
    let count : Int
    let title : String
    let fruit : Fruits
    
    enum Fruits : String {
        case Apple = "Apple"
        case Mango = "Mango"
        case Banana = "Banana"
    }
    
    init(count: Int,fruit: Fruits) {
        self.count = count
        self.fruit = fruit
        
        switch fruit{
            
        case .Apple:
            self.backgroundColor = .red
            self.textColor = .white

        case .Mango:
            self.backgroundColor = .orange
            self.textColor = .white
        
        case .Banana:
            self.backgroundColor = .yellow
            self.textColor = .black
        
        }
        
        self.title = fruit.rawValue
        
    }
    
    var body: some View {
       
        VStack(spacing:12){
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .foregroundColor(textColor)

            Text("\(title)")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

struct InitializersSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {

        VStack {
            InitializersSwiftUIView(count: 5, fruit: .Apple)
            InitializersSwiftUIView(count: 15, fruit: .Mango)
            InitializersSwiftUIView(count: 25, fruit: .Banana)

        }
    }
}
