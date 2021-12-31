//
//  HomeNextUI.swift
//  appui
//
//  Created by Binay Kumar Sharma on 31/12/21.
//

import SwiftUI

struct HomeNextUI: View {
    @State var label:String
    @State var photo:String
    @State var dark:Bool
    init(label:String,photo:String,dark:Bool){
        self.label = label
        self.photo = photo
        self.dark = dark
    }
    
    var body: some View {
        HStack{
            Image(photo)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            
            Text(label)
                .bold()
                .foregroundColor(Color(dark ? "primary200" :"primary" ))
            Spacer()
            Image(systemName:"greaterthan")
                .renderingMode(.original)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color(dark ? "primary" :"primary200" ))
                .frame(width: 30, height: 30)
                .background(
                    Circle()
                        .fill(Color(dark ? "primary200" :"primary" ))
                )
            
            
        }.padding()
            .background(
                Color(dark ? "primary" :"primary200" )
            )
            .cornerRadius(15)
    }
}

struct HomeNextUI_Previews: PreviewProvider {
    static var previews: some View {
        HomeNextUI(label:"ORDERS" , photo: "noun_order_3831794", dark:false )
            .previewLayout(.sizeThatFits)
        
        
        HomeNextUI(label:"ORDERS" , photo: "noun_contact_3842558", dark:true )
            .previewLayout(.sizeThatFits)
    }
}
