//
//  ActionSheetSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 20/06/23.
//

import SwiftUI

struct ActionSheetSwiftUIView: View {
    @State var showActionsheet : Bool = false
    var body: some View {
        Button("Show Action Sheet") {
            showActionsheet.toggle()
        }.actionSheet(isPresented: $showActionsheet,content: getActionsheetWithMessage)
    }
    
    func getActionsheet() -> ActionSheet {
        return ActionSheet(title: Text("This is title."))
    }
    
    func getActionsheetWithMessage() -> ActionSheet {
        let button1 : ActionSheet.Button = .default(Text("DEFAULT"),action: {
            
        })
        let button2 : ActionSheet.Button = .destructive(Text("destructive".uppercased()))
        let button3 : ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is title."),
            message: Text("This is message"),
        buttons: [button1,button2,button3])
    }
}

struct ActionSheetSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetSwiftUIView()
    }
}
