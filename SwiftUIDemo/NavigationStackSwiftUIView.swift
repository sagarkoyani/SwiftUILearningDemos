//
//  NavigationStackSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 15/07/23.
//

import SwiftUI

struct NavigationStackSwiftUIView: View {
    @State var fruits: [String] = ["Apple","Banana","Orange","Cupcake"]
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 40){
                    Text("Hello, World!")
                  
                    ForEach(0..<10) { index in
                        NavigationLink(value: index) {
                            Text("Click Me \(index)")
                                .padding()
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(12.0)
                        }
                    }
                    
                  /*  ForEach(0..<10) { index in
                        NavigationLink(destination: {
                            MySecondScreen(value: index)
                        }, label: {
                            Text("Click Me \(index)")
                                .padding()
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(12.0)
                        })
                    }*/
                }
            }
            
            .navigationTitle("Nav BootCamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
        }
    }
}

struct MySecondScreen:View {
    
    let value:Int
    
    init(value: Int) {
        debugPrint("Init second screen")
        self.value = value
    }
    
    var body: some View{
        Text("Screen \(self.value)")
    }
}

struct NavigationStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackSwiftUIView()
    }
}
