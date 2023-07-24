//
//  StructDataTypeBootcamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 28/06/23.
//

import SwiftUI

struct User : Identifiable {
    let id = UUID().uuidString
    let name : String
    let followers : Int
    let isVerified : Bool
}

struct StructDataTypeBootcamp: View {
    @State var users:[User] = [
    User(name: "Sagar Koyani", followers: 1000, isVerified: true),
    User(name: "Mahendra Baldha", followers: 100, isVerified: true),
    User(name: "Hardik Baldha", followers: 20000, isVerified: true)
    ]
    
    var body: some View {
        NavigationView{
            
                List {
                    ForEach(users) { user in
                        HStack(spacing:15.0){
                            Circle()
                                .frame(width: 35,height: 35)
                            VStack(alignment: .leading) {
                                Text(user.name)
                            }
                            Spacer()
                            
                            if user.isVerified {
                               Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                            
                            VStack(alignment: .center) {
                                Text("\(user.followers)")
                                    .font(.headline)
                                Text("Followers")
                                    .foregroundColor(.gray)
                                    .font(.caption)

                            }
                        }
                        .padding(.vertical,10)
                    }

                }
                
            
            .navigationTitle("Top Celebrities")
        }
        
    }
}

struct StructDataTypeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StructDataTypeBootcamp()
    }
}
