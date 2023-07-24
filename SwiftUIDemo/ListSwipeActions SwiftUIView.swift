//
//  ListSwipeActions SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct ListSwipeActions_SwiftUIView: View {
    
    @State var fruits = ["Apples","Bananas","Peach","Orange","Cupcake"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .padding()
                    .swipeActions(edge:.trailing,
                                  allowsFullSwipe: true) {
                        
                        Button("Archive"){
//                            debugPrint("Archive \($0)")
                        }.tint(.brown)
                        
                        Button("Save") {
//                            debugPrint("Archive \($0)")
                        }.tint(.blue)
                        
                        Button("Delete") {
//                            debugPrint("Archive \($0)")
                        }.tint(.red)
                    }
                                  
                    .swipeActions(edge:.leading,
                                                allowsFullSwipe: true) {
                                      
                                      Button("Archive"){
              //                            debugPrint("Archive \($0)")
                                      }.tint(.brown)
                                      
                                      Button("Save") {
              //                            debugPrint("Archive \($0)")
                                      }.tint(.blue)
                                      
                                      Button("Delete") {
              //                            debugPrint("Archive \($0)")
                                      }.tint(.red)
                                  }
                
            }
        }
    }
}

struct ListSwipeActions_SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActions_SwiftUIView()
    }
}
