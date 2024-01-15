//
//  BudgetsView.swift
//  Trackizer
//
//  Created by Phoon Thet Pine on 15/1/24.
//

import SwiftUI

struct BudgetsView: View {
    
    // MARK: - PROPERTIES
    @State var listArr: [BudgetModel] = [
        BudgetModel(dict: [ 
            "name": "Auto & Transport",
            "icon": "auto_&_transport",
            "spend_amount": "25.99",
            "total_amount": "400",
            "left_amount": "250.01",
            "color": Color.secondaryG
        ]),
        
        BudgetModel(dict: [
            "name": "Entertainment",
            "icon": "entertainment",
            "spend_amount": "25.99",
            "total_amount": "400",
            "left_amount": "250.01",
            "color": Color.secondaryC
        ]),
        
        BudgetModel(dict: [
            "name": "Security",
            "icon": "security",
            "spend_amount": "5.99",
            "total_amount": "600",
            "left_amount": "250.01",
            "color": Color.primary10
        ])
    ]
    
    @State var arcArr : [ArcModel] = []
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .bottom) {
                
                ZStack {
                    ArcShape180(width: 10)
                        .foregroundColor(.gray.opacity(0.2))
                    
                    ForEach(arcArr, id: \.id) { aObj in
                        
                        ArcShape180(start: aObj.statVal, end: aObj.value - 9, width: 14)
                            .foregroundColor(aObj.color)
                            .shadow( color: aObj.color.opacity(0.5), radius: 7)
                        
                    }
                }
                .frame(width: .widthPer(per: 0.5), height: .widthPer(per: 0.3))
                
                VStack {
                    Text("$82,90")
                        .font(.customfont(.bold, fontSized: 24))
                        .foregroundColor(.white)
                    
                    Text("of $2,0000 budget")
                        .font(.customfont(.medium, fontSized: 12))
                        .foregroundColor(.gray30)
                }
                
            }
            .padding(.top, 64)
            .padding(.bottom, 30)

            
            // MARK: FIRST BUTTON
            Button {
                
            } label: {
                Text("Your budgets are on track 👍")
                    .font(.customfont(.semibold, fontSized: 14))
            }
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 64, maxHeight: 64)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray70, lineWidth: 1)
            }
            .cornerRadius(16)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)

            
            // MARK: BUDGET ROW
            LazyVStack(spacing: 15) {
                    ForEach( listArr, id: \.id) { bObj in
                        
                        BudgetRow(bObj: bObj)
                    }
                }
                .padding(.horizontal, 20)

            // MARK: SECOND BUTTON
            Button {
                
            } label: {
                HStack {
                    Text("Add new category")
                        .font(.customfont(.semibold, fontSized: 14))
                    
                    Image("add")
                        .resizable()
                        .frame(width: 14, height: 14)
                }
            }
            .foregroundColor(.gray30)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 64, maxHeight: 64)
            .overlay {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5,4]) )
                    .foregroundColor(.gray30.opacity(0.5))
            }
            .cornerRadius(16)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
            
        }
        .onAppear {
            getArcProgessData()
        }
        .background(Color.grayC)
        .ignoresSafeArea()
    }
    
    func getArcProgessData() {
        
        var data = [
            ArcModel(value: 20, color: .secondaryG),
            ArcModel(value: 45, color: .secondaryC),
            ArcModel(value: 70, color: .primary10)
        ]
        
        var val = 0.0
        
        for i in (0 ..< data.count) {
            data[i].statVal = val
            val = data[i].statVal + data[i].value + 2
        }
        
        arcArr = data
     }
}

#Preview {
    BudgetsView()
}
