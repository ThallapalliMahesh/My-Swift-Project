//
//  SystemIconsView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 10/01/25.
//

import SwiftUI

struct SystemIconsView: View {
      let systemIcons = [
          "star.fill",
          "heart.fill",
          "moon.fill",
          "bolt.fill",
          "globe",
          "sun.max.fill",
          "cloud.rain.fill",
          "flame.fill",
          "leaf.fill",
          "car.fill"
      ]

      let colors: [Color] = [
        .yellow, .red, .blue, .orange, .green, .pink, .purple, .teal, .cyan, .indigo
      ]

      var body: some View {
          NavigationView {
              ScrollView {
                  LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 20) {
                      ForEach(systemIcons.indices, id: \.self) { index in
                          VStack {
                              Image(systemName: systemIcons[index])
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 50, height: 50)
                                  .foregroundColor(colors[index % colors.count]) // Apply cyclic colors
                                  .padding()
                                  .background(
                                      RoundedRectangle(cornerRadius: 12)
                                          .fill(colors[index % colors.count].opacity(0.2))
                                  )

                              Text(systemIcons[index])
                                  .font(.caption)
                                  .multilineTextAlignment(.center)
                                  .lineLimit(1)
                                  .foregroundColor(.primary)
                          }
                      }
                  }
                  .padding()
              }
              .navigationTitle("System Icons Grid")
          }
      }
}

#Preview {
    SystemIconsView()
}
