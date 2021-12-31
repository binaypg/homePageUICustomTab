//
//  utilites.swift
//  appui
//
//  Created by Binay Kumar Sharma on 31/12/21.
//

import SwiftUI

struct Utilities: View {
    var body: some View {
        Text("Hello, World!" )
    }
}

struct Utilities_Previews: PreviewProvider {
    static var previews: some View {
        Utilities()
    }
}


extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let primary = Color("primary")
    let primary200 = Color("primary200")
}
