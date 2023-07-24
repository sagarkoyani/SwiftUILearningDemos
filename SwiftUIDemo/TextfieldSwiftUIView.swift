//
//  TextfieldSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct TextfieldSwiftUIView: View {
    @State var username : String = ""
    @State var password : String = ""
    @State var isLoggedInSuccess : Bool = false

    var body: some View {
      
        NavigationView {
            ScrollView {
                VStack (alignment:.leading,spacing: 30) {

                    VStack(alignment:.leading){
                        Text("Enter Username:")

                        TextField("Enter Username", text: $username)
            //                .textFieldStyle(.plain)
                            .padding()
                            .background(Color.gray.opacity(0.3).cornerRadius(10))
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                    
                    
                    VStack(alignment:.leading) {
                        Text("Enter Password:")
                        
                        TextField("Enter Password", text: $password)
                            .padding()
                            .background(Color.gray.opacity(0.3).cornerRadius(10))
                            .foregroundColor(.black)
                            .font(.headline)
                            
                    }
                   
                    
                    Button {
                        login()
                    } label: {
                        Text("Login")
                            .padding()
                            .frame(maxWidth:.infinity)
                            .background(Color.blue.cornerRadius(10))
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    
                    if isLoggedInSuccess {
                        Button {
                            isLoggedInSuccess = false
                            username = ""
                            password = ""
                        } label: {
                            Text("Logged In Successfully")
                                .padding()
                                .frame(maxWidth:.infinity)
                                .background(Color.green.cornerRadius(10))
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                    }
                    
                    Spacer()

                   
                }
                .padding()
                .navigationTitle("TextField BootCamp")
            }
           
        }
      
    }
    
    func login(){
         isLoggedInSuccess = username == "sagarkoyani" &&  password == "Abcd@1234"
    }
}

struct TextfieldSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldSwiftUIView()
    }
}
