//
//  NavigationViewSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct NavigationViewSwiftUIView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.orange.opacity(0.5)
                ScrollView{
                    NavigationLink("Calculate", destination: MyOtherScreen())
                    Text("Hello, World!")
                    Text("World!")
                    Text("Hello, World!")
                    
                }
                .navigationTitle("BMI Calculator")
                .navigationBarTitleDisplayMode(.inline)
                //                .navigationBarItems(
                //                    leading: Image(systemName: "person.fill"),
                //                    trailing: Image(systemName: "gear"))
                //.toolbar(.hidden)
                .navigationBarItems(
                    leading:
                        NavigationLink(
                            destination: MyOtherScreen(),
                            label: {
                                HStack(spacing:20){
                                    Image(systemName: "person.fill")
                                    Image(systemName: "flame.fill")
                                }
                            }),
                    trailing: NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        }))
                
            }
            
        }
    }
}



struct MyOtherScreen : View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)
                
            VStack(alignment:.leading) {
                Button {
                    presentationMode.wrappedValue.dismiss()

                } label: {
                    Text("Go back")
                        .padding()
                        .background(Color.gray)
                }

                Spacer()
                NavigationLink("Click here", destination: Text("3rd Screen"))
            }
            
            
        }
    }
}



struct NavigationViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewSwiftUIView()
    }
}
