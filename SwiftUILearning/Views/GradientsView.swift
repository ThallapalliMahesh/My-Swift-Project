//
//  GradientsView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 10/01/25.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
//        LinearGradient(colors: [Color.red,Color.black, Color.blue,Color.green,Color.yellow,Color.white,Color.gray,Color.orange,Color.primary,Color.accentColor,Color.red], startPoint: .bottom, endPoint: .top)
        
//        RoundedRectangle(cornerRadius: 20)
//            .fill(
//                LinearGradient(colors: [Color.red,Color.black, Color.blue,Color.green,Color.yellow,Color.white,Color.gray,Color.orange,Color.primary,Color.accentColor,Color.red], startPoint: .bottom, endPoint: .top)
//            )
//            .frame(width: 300, height: 300)
//        RoundedRectangle(cornerRadius: 20)
//            .fill(
//                RadialGradient(colors: [Color.red,Color.black,Color.white,Color.green,Color.blue,Color.secondary,Color.red,Color.yellow], center: .center, startRadius: 5, endRadius: 200)
//            )
        RoundedRectangle(cornerRadius: 20)
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color.black,Color.white]), center: .center, angle: .degrees(135))
            )
            .frame(width: 350, height: 300)
    }
}

#Preview {
    GradientsView()
}
