//
//  DatePickerSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Rahul Sharma on 21/06/23.
//

import SwiftUI

struct DatePickerSwiftUIView: View {
    @State var selectedDate : Date = Date()
    
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2022,month:12,day: 15)) ?? Date()
    let endDate = Date()
    
    var dateFormatter : DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter
    }
    
    
    var body: some View {
        VStack{
            Text("The Selected Date is ")
                .font(.title)
            Text(dateFormatter.string(from: selectedDate))

            //            DatePicker("Select the Date", selection: $selectedDate)
//            DatePicker("Select the Date",
//                       selection: $selectedDate,
//                       displayedComponents: [.date,.hourAndMinute])
            DatePicker("select the date",
                       selection: $selectedDate,
                       in: startingDate...endDate,
                       displayedComponents: [.date])
                .accentColor(.red)
                .foregroundColor(.red)
                .datePickerStyle(
                    .graphical
//                    .wheel
//                    .compact
                )
        }
        .padding()
    }
}

struct DatePickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSwiftUIView()
    }
}
