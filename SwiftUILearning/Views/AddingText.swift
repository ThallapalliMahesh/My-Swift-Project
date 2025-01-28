//
//  AddingText.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 08/01/25.
//

import SwiftUI

struct AddingText: View {
    var body: some View {
            VStack {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding()

                Text("SwiftUI makes UI development!")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding()

                Text("Let's build awesome apps together.")
                    .font(.body)
                    .foregroundColor(.purple)
            }
            .padding()
        }
}

#Preview {
    AddingText()
}
