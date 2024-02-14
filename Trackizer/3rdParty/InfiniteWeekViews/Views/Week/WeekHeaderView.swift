//
//  WeekHeaderView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct WeekHeaderView: View {
    @EnvironmentObject var weekStore: WeekStore
    @State var showDatePicker: Bool = false

    var body: some View {
        HStack {
            Text(weekStore.selectedDate.monthToString())
                .font(.system(size: 24))
                .fontWeight(.heavy)
                .foregroundColor(.accentColor)
            
            Spacer()
            
            Button {
                showDatePicker = true
            } label: {
                Image(systemName: "calendar")
                    .font(.system(size: 24))
                    .foregroundColor(.primary)
            }
            .sheet(isPresented: $showDatePicker) {
                VStack {
                    DatePicker("Select Date", selection: $weekStore.selectedDate, displayedComponents: [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .cornerRadius(15)
                        .padding()
                        .presentationDetents([.height(400), .fraction(20), .medium, .large])
                        .onChange(of: weekStore.selectedDate, perform: { _ in
                            showDatePicker = false
                        })
                }
            }
        }
        .padding(.init(top: 5, leading: 10, bottom: -3, trailing: 8))
    }
}

struct WeekHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WeekHeaderView()
            .environmentObject(WeekStore())
    }
}
