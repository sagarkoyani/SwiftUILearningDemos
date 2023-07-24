//
//  SafeAreaSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 13/06/23.
//

import SwiftUI

struct SafeAreaSwiftUIView: View {
    let colors: [Color] = [.red, .blue, .green, .orange, .purple,.yellow,.cyan,.black,.accentColor,.gray,.indigo]

    var body: some View {
        VStack {
            Text("BMI Calculator")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
//                .ignoresSafeArea()
            ScrollView(showsIndicators:false){
                VStack{
                    ForEach(0..<40) { index in
                        Rectangle()
                            .frame(
                                maxWidth: .infinity,
                                minHeight: 200)
                            .foregroundColor(colors.randomElement()!)
                            .overlay {
                                VStack(spacing:10.0){
                                    Text("\(index)")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .frame(maxWidth: .infinity)
                                    Text("One")
                                        .foregroundColor(.white)
                                        .font(.largeTitle)
                                        .frame(maxWidth: .infinity)

                                }

                            }

                    }

                }
                .background(Color.white)
            }
            .background(Color.white)
            .ignoresSafeArea()
           
                        
            
            
//            Spacer()
//                .frame(width: 10)
//                .background(Color.yellow)
        }
            
    }
}

struct SafeAreaSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaSwiftUIView()
    }
}
