//
//  EnvironmentObjectSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 04/07/23.
//

import SwiftUI

// ObservedObject
// StateObject
//EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray : [String] = [String]()
    
    init() {
        getData()
    }
    func getData() {
        dataArray.append(contentsOf: ["iPhone","iPad","iMAC","Macbook"])
    }
}

struct EnvironmentObjectSwiftUIView: View {

    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray,id: \.self) { item in
                    NavigationLink(destination:Screen2View()) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Test Enviroment ")
        }
        .environmentObject(viewModel)
    }
}

struct Screen2View: View {

    
    var body: some View {
        NavigationView {
            ZStack{
                Color.orange.ignoresSafeArea()
                NavigationLink(destination:FinalView()) {
                    Text("Screen 3")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .foregroundColor(.black)
                }
            }

            .navigationTitle("Screen 2 ")
        }
    }
}

struct FinalView: View {

    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.green.ignoresSafeArea()
                
                List {
                    ForEach(viewModel.dataArray,id: \.self) { item in
                            Text(item)
//                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .foregroundColor(.black)
                        
                        
                    }
                }
                
            }

        }
    }
}
struct EnvironmentObjectSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        
        EnvironmentObjectSwiftUIView()
        
    }
}
