//
//  AppstorageSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 04/07/23.
//

import SwiftUI

struct AppstorageSwiftUIView: View {
    @AppStorage("name") var currentUsername : String?
    
    var body: some View {
        VStack(spacing:20.0){
            Text(currentUsername ?? "Not found")
            Button("Save") {
                currentUsername = "Sagar "
            }
        }
    }
}

struct AppstorageUsageSwiftUIView: View {
    @AppStorage("name") var currentUsername : String?
    
    var body: some View {
        VStack(spacing:20.0){
            Text(currentUsername ?? "Not found")
            Button("Save") {
                currentUsername = "Vijay"
            }
        }
    }
}
struct AppstorageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
              
//        AppstorageSwiftUIView()
        AppstorageUsageSwiftUIView()
    }
}
