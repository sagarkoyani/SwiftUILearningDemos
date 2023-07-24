//
//  PickerSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct PickerSwiftUIView: View {
    @State var selectedAge : String = "1"
    var body: some View {
        
        VStack{
            Text("AGE: \(selectedAge) ")
                .font(.largeTitle)

            Picker(
                selection:  $selectedAge,
                label:
                    Text("Select Age : \(selectedAge)")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                ,
                content: {
                ForEach(18..<100) { age in
                    Text("\(age)")
                        .font(.title)
                        .foregroundColor(.red)
                        .tag("\(age)")
                }
            })
            .background(Color.green.opacity(0.3))
            .pickerStyle(.menu)
//            Picker(selection: $selectedAge,
//                   label: Text("Select Age"),
//                   content: {
//                ForEach(18..<100) { age in
//                    Text("\(age)")
//                        .font(.title)
//                        .foregroundColor(.red)
//                        .tag("\(age)")
//                }
//            })
//            .background(Color.green.opacity(0.3))
//            .pickerStyle(.wheel)



//            Picker(selection: $selectedAge) {
//
//                ForEach(18..<100) { age in
//                    Text("\(age)")
//                }
//
//            } label: {
//                Text("SELECT AGE: ")
//            }

        }

    }
}

struct PickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PickerSwiftUIView()
    }
}
