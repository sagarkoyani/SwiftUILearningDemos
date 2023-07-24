//
//  ListViewSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct ListViewSwiftUIView: View {
    
    @State var fruits : [String] = ["Apple","Banana","Chocolate","Dumb","Eggs"]
    @State var vegetables : [String] = ["Tomato","Potato","Bringle","Mango","Oil"]
    
    var body: some View {
        
        NavigationView {
            List{
                //            ForEach(0..<fruits.count) { index in
                //                Text("\(fruits[index])")
                //            }
                //            Spacer()
                Section(header:
                            HStack {
                    Text("Fruits")
                    Image(systemName: "flame.fill")
                        }
                    
                    .font(.headline)
                    .foregroundColor(.orange)
                        
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            
                    }
                    
                    .onDelete(perform: deleteCell)
                    //                .onDelete { indexSet in
                    ////                    fruits.remove(atOffsets: indexSet)
                    //                    deleteCell(indexSet: indexSet)
                    //                }
                    .onMove(perform: moveCell)
                    //                    .onMove { indices, newOffset in
                    //                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    //                    }
//                    .listRowBackground(Color.pink)
                    .listRowSeparatorTint(Color.gray)
                    
                }
                
            }
            .listStyle(.sidebar)
            .accentColor(.purple)
            
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:addButton)
            
        }
        .accentColor(.red)
        
        
    }
    
    var addButton : some View {
        Button("Add", action: {
            add(title: "Coconut")
        })
    }
    
    func deleteCell(indexSet:IndexSet)  {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveCell(indexSet:IndexSet,index:Int)  {
        fruits.move(fromOffsets: indexSet, toOffset: index)
    }
    
    func add(title:String)  {
        fruits.append("Coconut")
    }
}

struct ListViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListViewSwiftUIView()
    }
}
