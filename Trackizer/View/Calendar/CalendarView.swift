//
//  calendarView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 13/2/24.
//

import SwiftUI

struct CalendarView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var weekStore: WeekStore
    @State var subArr: [SubscriptionModel] = [
        SubscriptionModel(dict: [
            "name":"Spotify",
            "icon":"spotify_logo",
            "price": "5.99"])
        ,
        SubscriptionModel(dict: [
            "name":"YouTube Premium",
            "icon":"youtube_logo",
            "price": "18.99"])
        ,
        SubscriptionModel(dict: [
            "name":"Microsoft OneDrive",
            "icon":"onedrive_logo",
            "price": "29.99"])
        ,
        SubscriptionModel(dict: [
            "name":"Netflix",
            "icon":"netflix_logo",
            "price": "15.00"])
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 200)),
        GridItem(.adaptive(minimum: 200))

    ]
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .center) {
                
                Rectangle()
                    .foregroundColor(.gray70.opacity(0.5))
                    .frame(width: .screenWidth)
                    .cornerRadius(25)
                
                VStack {
                    Text("Calendar")
                        .font(.customfont(.regular, fontSized: 16))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    Text("Subs\nSchedule")
                        .font(.customfont(.bold, fontSized: 40))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                    
                    WeekHeaderView()
                        .padding(.horizontal, 20)
                    WeeksTabView() { week in
                        WeekView(week: week)
                    }
                    .frame(height: 110, alignment: .top)
                    .padding(.vertical, 20)
                }
                .padding(.top, .topInsets)
                .padding(.bottom, 20)
                
            }
            .frame(width: .screenWidth)
            
            VStack {
                HStack {
                    Text("January")
                        .font(.customfont(.semibold, fontSized: 20))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    
                    
                    Text( "$24.98" )
                        .font(.customfont(.bold, fontSized: 20))
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
                
                HStack {
                    Text("01.08.2023")
                        .font(.customfont(.medium, fontSized: 12))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    
                    
                    Text( "in upcoming bills" )
                        .font(.customfont(.medium, fontSized: 12))
                        .foregroundColor(.gray30)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(20)
            
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(subArr) { sObj in
                    SubscriptionCell(sObj: sObj)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 120)
            
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
}

#Preview {
    CalendarView()
        .environmentObject(WeekStore())
}
