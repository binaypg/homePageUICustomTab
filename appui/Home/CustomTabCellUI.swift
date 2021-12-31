//
//  CustomTabCellUI.swift
//  appui
//
//  Created by Binay Kumar Sharma on 31/12/21.
//

import SwiftUI

struct CustomTabCellUI: View {
    @Binding var index :Int
    @State var pos:Int
    @State var label :String
    @State var img:String
    @State var imgFill :String
    init(index:Binding<Int>,pos:Int,label:String,img:String,imgFill:String){
        self._index = index
        self.label = label
        self.img = img
        self.pos = pos
        self.imgFill = imgFill
    }
    var body: some View {
        Button{
            self.index = pos
        }label: {
            VStack{
                Image( index == pos ? imgFill : img)
                if pos == 2 {
                Text(label ).font(.system(size: 7))
                        .foregroundColor(.white)
                }else{
                    
                    Text(label ).font(.system(size: 7))
                        .foregroundColor(index == pos ? Color.theme.primary :Color.theme.primary200)
                }
                    
            }
        }.frame(width: 50, height: 44)
            /*.background(
            Color.red
        )*/
    }
}

struct CustomTabCellUI_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabCellUI(index: .constant(0), pos: 0, label: "Home", img: "noun_Home_-1", imgFill: "noun_Home_4262823")
    }
}
