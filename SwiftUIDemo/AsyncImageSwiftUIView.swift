//
//  AsyncImageSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct AsyncImageSwiftUIView: View {
    let imageURL = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: imageURL,
                   content: { returnImage in
            returnImage
                .resizable()
            //                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
        },
                   placeholder: {
                    ProgressView()
                    })
            

    }
}

struct AsyncImageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageSwiftUIView()
    }
}
