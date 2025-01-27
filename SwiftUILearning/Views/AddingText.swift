//
//  AddingText.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 08/01/25.
//

import SwiftUI

struct AddingText: View {
    var body: some View {
//        Text("Hello, world!. I am learning the SwiftUI. I am really enjoying it while Learning this SwiftUI!".capitalized)
//                .font(.title)
//                .fontWeight(.bold)
//                .underline()
//            .underline(true,color: .red)
//            .font(.system(size: 25,weight: .semibold,design: .serif))
//            .baselineOffset(-50)
//            .kerning(20)
        Text("Hello, world!.")
            .multilineTextAlignment(.center)
            .foregroundColor(.pink)
            .frame(width: 300,height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    AddingText()
}
