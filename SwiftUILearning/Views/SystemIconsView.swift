//
//  SystemIconsView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 10/01/25.
//

import SwiftUI

struct SystemIconsView: View {
    var body: some View {
//        SystemIconsView()
        Image(systemName: "trash")
            .resizable()
//            .font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
            
    }
}

#Preview {
    SystemIconsView()
}
