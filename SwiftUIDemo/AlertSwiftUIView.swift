//
//  AlertSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct AlertSwiftUIView: View {
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = .yellow
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Click here"){
                showAlert.toggle()
            }.alert(isPresented: $showAlert, content: {
                getAlert()
            })

        }
    }
    
    func getAlert() -> Alert  {
        return Alert(title: Text("This is the title"),
                     message: Text("This is message."),
                     primaryButton: .default(Text("Delete"),action: {
                   backgroundColor = .red
               }),
                     secondaryButton: .cancel(Text("Cancel"), action: {
                   backgroundColor = .green
               }))
    }
}

struct AlertSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlertSwiftUIView()
    }
}
