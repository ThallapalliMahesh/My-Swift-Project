//
//  AddingColors.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 09/01/25.
//

import SwiftUI

struct AddingColors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.red)
//            .fill(Color(red: 1, green: 0.5, blue: 0.3))
            .frame(width: 250, height: 200,alignment: .center)
            .shadow(color: .black.opacity(0.4), radius: 10, x: 50, y: 50)
//        LinearGradient(colors: [Color.black,Color.yellow,Color.red,Color.green,Color.pink,Color.blue,Color.purple,Color.primary], startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    AddingColors()
}
