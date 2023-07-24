//
//  SheetsSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 19/06/23.
//

import SwiftUI

struct SheetsSwiftUIView: View {
    
   @State var showSheet : Bool = false
   @State var showSheet1 : Bool = false

    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Sheet 1")
                        .foregroundColor(.green)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        .font(.largeTitle)
                }
                
                Button {
                    showSheet1.toggle()
                } label: {
                    Text("Sheet 2")
                        .foregroundColor(.green)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        .font(.largeTitle)
                }
    //            .fullScreenCover(isPresented: $showSheet) {
    //                ThirdScreen()
    //            }
                .sheet(isPresented: $showSheet) {
                    SecondScreen()
                }
                
                .sheet(isPresented: $showSheet1) {
                    ThirdScreen()
                }
                
            }
        }
        
    }
}

struct SecondScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .top, content: {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                //showSheet.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .font(.largeTitle)
            }

            
        })
    }
}

struct ThirdScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .top, content: {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                //showSheet.toggle()
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

struct SheetsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsSwiftUIView()
//        SecondScreen()
    }
}
