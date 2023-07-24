//
//  ButtonStylesSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct ButtonStylesSwiftUIView: View {
    var body: some View {
        VStack {
            Button("Hello, World!") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Hello, World!") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button("Hello, World!") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)
            .controlSize(.mini)
            
            Button("Hello, World!") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.small)
            
            Button("Hello, World!") {
                
            }
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20.0))
            

            
        }

    }
}

struct ButtonStylesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesSwiftUIView()
    }
}
