//
//  FocusedSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 10/07/23.
//

import SwiftUI

struct FocusedSwiftUIView: View {
    
    enum OnboardingFields {
        case username
        case password
    }
    
    @State var username : String = ""
    @State var password : String = ""
    @FocusState var usernameInFocused : Bool
    @FocusState var passwordInFocused : Bool
    @FocusState var fieldInFocus : OnboardingFields?
    
    var body: some View {
        
        VStack(spacing: 20) {
            Spacer()
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField("Enter Username", text: $username)
//                .focused($usernameInFocused)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10.0)
            
            TextField("Enter Password", text: $password)
//                .focused($passwordInFocused)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10.0)
            
            Button("Sign UP 🔥") {
                let usernameisValid = !username.isEmpty
                
                let passwordisValid = !password.isEmpty
            
                if usernameisValid && passwordisValid {
                    debugPrint("Sign Up")
                }else if usernameisValid {
//                    usernameInFocused = false
//                    passwordInFocused = true
                    fieldInFocus = .username
                }else {
//                    usernameInFocused = true
//                    passwordInFocused = false
                    fieldInFocus = .password
                }
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(12)
            
            Spacer()
            Spacer()
        }
        .padding()
        
    }
}

struct FocusedSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FocusedSwiftUIView()
    }
}
