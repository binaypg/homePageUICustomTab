//
//  CustomTabUI.swift
//  appui
//
//  Created by Binay Kumar Sharma on 31/12/21.
//

import SwiftUI

struct CustomTabUI: View {
    
    
    @Binding var index : Int
    var body:some View{
        HStack{
             
            CustomTabCellUI(index: $index, pos: 0, label: "Home", img: "noun_Home_-1", imgFill: "noun_Home_4262823")
            
          
            Spacer()
            CustomTabCellUI(index: $index, pos: 1, label: "Orders", img: "noun_History_-1", imgFill: "noun_History_3324373")
           
            Spacer()
            CustomTabCellUI(index: $index, pos: 2, label: "New Order", img: "noun_Add Receipt_783557", imgFill: "noun_Add Receipt_783557")
                .padding()
                .background(
                    Circle().fill(
                        index == 2 ? Color.theme.primary : Color.theme.primary200
                    )
                )
                .offset(y:-15)
            
            Spacer()
            
            CustomTabCellUI(index: $index, pos: 3, label: "Notifications", img: "noun_notification_-1", imgFill: "noun_notification_1219631")
            
            
            Spacer()
            CustomTabCellUI(index: $index, pos: 4, label: "My Account", img: "noun_account_-1", imgFill: "noun_account_1344876")
            
            
            
        }
    }
    
    
    
}

struct CustomTabUI_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabUI(index: .constant(0))
    }
}
