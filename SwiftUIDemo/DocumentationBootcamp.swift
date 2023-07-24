//
//  DocumentationBootcamp.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 27/06/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: PROPERTIES
    
    @State var data:[String] = ["Apples","Oranges","Bananas"]
    @State var showAlert : Bool = false
    
    //MARK: BODY
    
    var body: some View {
        NavigationView {
                foregroundLayer
                .navigationTitle("Documentation BootCamp")
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                    showAlert.toggle()
                })
                )
                .alert(isPresented: $showAlert) {
                    showAlert(title:"This is Alert.")
                }

        }
        
        
    }
    /// This is foregroundLayer contains scrollviews and content.
    var foregroundLayer: some View {
        ScrollView{
            VStack{
                ForEach(data,id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
                Spacer()
            }}
    }
    
    //MARK: - FUNCTIONS
    /// Get an alert with a specific title.
    ///
    /// This function creates and returns an alert immidiately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    ///showAlert(title:"Message Title") -> Alert(title:Text("Message Title"))
    /// ```
    ///- Warning: There is no additional message in this alert.
    /// - Parameter title: title of your alert
    /// - Returns: will return Alert object.
    func showAlert(title:String)-> Alert{
        Alert(title: Text(title))
    }
}

//MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}


    

