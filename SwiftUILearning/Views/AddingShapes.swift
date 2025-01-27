//
//  AddingShapes.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 08/01/25.
//

import SwiftUI

struct AddingShapes: View {
    var body: some View {
//        Circle()
//        Ellipse()
        Rectangle()
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.black)
//            .stroke(Color.red, lineWidth: 3)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [20]))
//            .trim(from: 0.2,to: 5.0)
            .frame(width: 300,height: 200, alignment: .center)
            
    }
}

#Preview {
    AddingShapes()
}
