//
//  OnAppearBootcamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 28/06/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText : String = "Start text."
    @State var count : Int = 0

    var body: some View {
        
        NavigationView{
            ScrollView{
                Text(myText)

                LazyVStack{
                    ForEach(0..<50){ index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count = index
                            }
                        
                    }
                }
                
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                    myText = "this is new text"
                }
            })
            
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            
             
            .navigationTitle("On Appear : \(count)")
        }
        
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
