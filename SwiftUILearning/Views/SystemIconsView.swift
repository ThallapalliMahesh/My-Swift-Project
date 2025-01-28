//
//  SystemIconsView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 10/01/25.
//

import SwiftUI

struct SystemIconsView: View {

    let systemIcons = [
            "star.fill", "heart.fill", "moon.fill", "bolt.fill", "globe",
            "sun.max.fill", "cloud.rain.fill", "flame.fill", "leaf.fill", "car.fill",
            "pencil.tip", "airplane", "cube.fill", "calendar", "person.2.fill",
            "envelope.fill", "camera.fill", "play.circle.fill", "magnifyingglass",
            "trash.fill", "location.fill", "phone.fill", "book.fill", "music.note", "bell.fill"
        ]
        
    let iconColors: [Color] = [
        .red, .green, .blue, .yellow, .orange, .purple, .pink, .cyan, .mint, .brown,
        .indigo, .gray, .teal, .yellow, .blue, .red, .pink, .brown, .gray, .green, .cyan,
        .yellow, .indigo, .accentColor, .green, .blue, .black, .white
    ]

        let rows = 4

        var body: some View {
            NavigationView {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(0..<systemIcons.count / rows + (systemIcons.count % rows == 0 ? 0 : 1), id: \.self) { rowIndex in
                            HStack(spacing: 20) {
                                ForEach(0..<self.rows, id: \.self) { columnIndex in
                                    if rowIndex * self.rows + columnIndex < self.systemIcons.count {
                                        let icon = self.systemIcons[rowIndex * self.rows + columnIndex]
                                        
                                        let backgroundColor = self.iconColors[(rowIndex * self.rows + columnIndex) % self.iconColors.count]
                                        
                                        VStack {
                                            ZStack {

                                                RoundedRectangle(cornerRadius: 16)
                                                    .fill(backgroundColor)
                                                    .frame(width: 80, height: 80)
                                                    .shadow(radius: 5)
                                                
                                                Image(systemName: icon)
                                                    .font(.system(size: 40))
                                                    .foregroundColor(.white)
                                            }
                                            
                                            Text(icon)
                                                .font(.caption)
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Icon Grid with Text Below")
            }
        }
}

#Preview {
    SystemIconsView()
}
