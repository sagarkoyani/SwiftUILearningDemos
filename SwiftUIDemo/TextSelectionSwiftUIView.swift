//
//  TextSelectionSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct TextSelectionSwiftUIView: View {
    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled)
    }
}

struct TextSelectionSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionSwiftUIView()
    }
}
