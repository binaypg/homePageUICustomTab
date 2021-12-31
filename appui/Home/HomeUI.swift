//
//  HomeUI.swift
//  appui
//
//  Created by Binay Kumar Sharma on 31/12/21.
//

import SwiftUI

struct HomeUI: View {
    @State var index = 0
    var body: some View {
        ZStack{
            
            VStack{
                GeometryReader(){ proxy in
                    ZStack{
                        
                        VStack{
                            HStack{
                                Spacer()
                                Button{
                                    
                                }label: {
                                    Image("Group 4920").padding(.trailing)
                                }.frame(width: 44, height: 44)
                            }
                            Spacer()
                        }
                        ScrollView{
                            
                            VStack{
                                HomeNextUI(label:"ORDERS" , photo: "noun_order_3831794", dark:false )
                                HomeNextUI(label:"HOW IT WORKS" , photo: "noun_Workflow_2500651", dark:true )
                                HomeNextUI(label:"ABOUT US" , photo: "noun_Chat Icon_3363125", dark:false )
                                HomeNextUI(label:"CONTACT US" , photo: "noun_contact_3842558", dark:true )
                            }
                            .padding(.top,proxy.size.height/2)
                            .padding()
                            .padding(.bottom,100)
                        }
                        
                        
                        
                    }
                    .background(
                        ZStack{
                            
                            VStack{
                                Image("Group 14720")
                                    .resizable()
                                    .scaledToFit()
                                Spacer()
                            }
                            VStack{
                                HStack{
                                    Image("Group 5249")
                                        .resizable()
                                        .frame(width: proxy.size.height/7, height: proxy.size.height/7 )
                                        .padding()
                                    Spacer()
                                }
                                Spacer()
                            }
                        }.ignoresSafeArea()
                        
                    )
                }
            }.opacity(index == 0 ? 1 : 0)
            VStack{
                Color.red
            }.opacity(index == 1 ? 1 : 0)
            VStack{
                Color.yellow
            }.opacity(index == 2 ? 1 : 0)
            VStack{
                Color.blue
            }.opacity(index == 3 ? 1 : 0)
            VStack{
                Color.pink
            }.opacity(index == 4 ? 1 : 0)
            
            
            
            ZStack{
                
                VStack{
                    Spacer()
                    CustomTabUI(index: $index)
                        .background(
                            Color.white
                                .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 0)
                                   .mask(Rectangle().padding(.top, -2))
                        )
                }
                
                .ignoresSafeArea()
            }
        }
        
    }
}

struct HomeUI_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeUI()
        
    }
    
}

