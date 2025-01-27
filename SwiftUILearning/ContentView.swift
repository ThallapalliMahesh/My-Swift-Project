//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 08/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
//                .foregroundStyle(.tint)
                .font(.largeTitle)
                .foregroundColor(.pink)
            
//            Text("Hello, world!. I am learning the SwiftUI. I am really enjoying it while Learning this SwiftUI!")
////                .font(.title)
////                .fontWeight(.bold)
////                .underline()
//                .underline(true,color: .red)
//                .font(.system(size: 25,weight: .semibold,design: .serif))
//                .multilineTextAlignment(.center)
//                .baselineOffset(-50)
//                .kerning(20)
//                .foregroundColor(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
