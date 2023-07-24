//
//  TextEditorSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct TextEditorSwiftUIView: View {
    @State var textEditorText = "Sample Text"
    @State var resultText = ""

    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing:30){
                    
                    TextEditor(text: $textEditorText)
                        .frame(height: 250)
                       // .foregroundColor(.white)
                        //.colorMultiply(.brown)
                        .cornerRadius(10)
                        .padding()
                        .background {
                            Color.brown.cornerRadius(10)
                        }

                    
                    Button {
                    resultText = textEditorText
                    } label: {
                        
                        Text("Submit")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)

                        //                        .background(.blue.cornerRadius(10))
                    }
                    Text(resultText)
                    Spacer()
                }
                .padding()
                .navigationTitle("Text editor Bootcamp")
                .background(Color.orange)
            }
          
        }

        
    }
}

struct TextEditorSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorSwiftUIView()
    }
}
