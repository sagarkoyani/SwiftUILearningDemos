//
//  ViewmodelBootCamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 28/06/23.
//

import SwiftUI

class ViewModelSample : ObservableObject{
    @Published var users:[User] = [
        User(name: "Sagar Koyani", followers: 1000, isVerified: true)
    ]

    func generateUsers()  {
        users.append(User(name: "Mahendra Baldha", followers: 100, isVerified: true))
        users.append(User(name: "Hardik Baldha", followers: 20000, isVerified: true))
        users.append(User(name: "Kaushik Rupareliya", followers: 10, isVerified: false))
        users.append(User(name: "Nileshbhai Lunagariya", followers: 20000,isVerified: true))
    }
    
}
struct ViewmodelBootCamp: View {
   @ObservedObject var viewmodel : ViewModelSample = ViewModelSample()
    
    var body: some View {
        
        NavigationView {
            List(content: {

                ForEach(viewmodel.users) { user in
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
                .onDelete { indexSet in
                    viewmodel.users.remove(atOffsets: indexSet)
                }
                
            })
            .listStyle(.sidebar)
            
            .navigationTitle("Viewmodel Demo")
            .onAppear {
                viewmodel.generateUsers()
            }
        }

        
    }
}

struct ViewmodelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewmodelBootCamp()
    }
}
