//
//  Spacer2SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 09/06/23.
//

import SwiftUI

struct Spacer2SwiftUIView: View {
    var body: some View {
        VStack {
            HStack(spacing: nil){
                Image(systemName: "xmark")
                    .frame(width: 40,height: 50)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                Spacer()
                Text("BMI Calculator")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "bell")
                    .frame(width: 40,height: 50)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                
            }
            .background(Color.orange)
            Spacer()
            ZStack{
                Rectangle()
                    .fill(Color.accentColor)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 100.0,
                        alignment: .leading)
                HStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 50, height: 50, alignment: .leading)
                        .padding(.leading,7)
                    Spacer(minLength: 13)
                    RoundedRectangle(cornerRadius: 8, style: .circular)
                        .fill(Color.white)
                        .frame(height: 70)
                }

            }
            Spacer()
                .frame(width: 10.0)
                .background(Color.red)

            HStack(spacing: nil){
                Image(systemName: "xmark")
                    .frame(width: 40,height: 40)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "xmark")
                    .frame(width: 40,height: 40)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "xmark")
                    .frame(width: 40,height: 40)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "xmark")
                    .frame(width: 40,height: 40)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                Spacer()

                Image(systemName: "bell")
                    .frame(width: 40,height: 40)
                    .font(.system(size: 30))
                    .background(.blue)
                    .foregroundColor(.white)
                
            }
            .background(Color.orange)
        }
        
        .background(Color.white)
    }
}

struct Spacer2SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Spacer2SwiftUIView()
    }
}
