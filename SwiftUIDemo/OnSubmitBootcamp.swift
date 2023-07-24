//
//  OnSubmitBootcamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 15/07/23.
//

import SwiftUI

struct OnSubmitBootcamp: View {

    @State var username : String = ""

    var body: some View {
        TextField("Enter Username", text: $username)
            .submitLabel(.search)
            .onSubmit {
                debugPrint("Did Enter Username.\(username)")
            } 
    }
}

struct OnSubmitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmitBootcamp()
    }
}
