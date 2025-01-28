//
//  GradientsView.swift
//  SwiftUILearning
//
//  Created by ToqSoft on 10/01/25.
//

import SwiftUI

struct GradientsView: View {
    let gradients: [(String, AnyView)] = [
            ("Linear Gradient", AnyView(
                LinearGradient(
                    colors: [.red, .blue,.black],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )),
            ("Radial Gradient", AnyView(
                RadialGradient(
                    gradient: Gradient(colors: [.pink,.green, .purple,.blue]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 100
                )
            )),
            ("Angular Gradient", AnyView(
                AngularGradient(
                    gradient: Gradient(colors: [.orange, .yellow, .pink,.black,.cyan, .red]),
                    center: .center
                )
            )),
            ("Linear Gradient 2", AnyView(
                LinearGradient(
                    colors: [.cyan, .indigo, .pink],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )),
            ("Radial Gradient 2", AnyView(
                RadialGradient(
                    gradient: Gradient(colors: [.green, .mint,.orange,.green, .mint,.orange]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 120
                )
            )),
            ("Angular Gradient 2", AnyView(
                AngularGradient(
                    gradient: Gradient(colors: [.teal, .blue, .purple, .teal, .blue, .purple]),
                    center: .center
                )
            ))
        ]

        var body: some View {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))], spacing: 20) {
                        ForEach(gradients.indices, id: \.self) { index in
                            VStack {
                                gradients[index].1 // Render the gradient
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .shadow(radius: 5)

                                Text(gradients[index].0) // Label for the gradient
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                            
//                            HStack {
//                                gradients[index].1
//                                    .frame(width: 120, height: 120)
//                                    .clipShape(RoundedRectangle(cornerRadius: 16))
//                                    .shadow(radius: 5)
//
//                                Text(gradients[index].0)  gradient
//                                    .font(.caption)
//                                    .foregroundColor(.primary)
//                            }
//                            
                            ZStack {
                                gradients[index].1 // Render the gradient
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .shadow(radius: 5)

                                Text(gradients[index].0) // Label for the gradient
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Gradient Gallery")
            }
        }

//    var body: some View {
////        LinearGradient(colors: [Color.red,Color.black, Color.blue,Color.green,Color.yellow,Color.white,Color.gray,Color.orange,Color.primary,Color.accentColor,Color.red], startPoint: .bottom, endPoint: .top)
//        
////        RoundedRectangle(cornerRadius: 20)
////            .fill(
////                LinearGradient(colors: [Color.red,Color.black, Color.blue,Color.green,Color.yellow,Color.white,Color.gray,Color.orange,Color.primary,Color.accentColor,Color.red], startPoint: .bottom, endPoint: .top)
////            )
////            .frame(width: 300, height: 300)
////        RoundedRectangle(cornerRadius: 20)
////            .fill(
////                RadialGradient(colors: [Color.red,Color.black,Color.white,Color.green,Color.blue,Color.secondary,Color.red,Color.yellow], center: .center, startRadius: 5, endRadius: 200)
////            )
//        RoundedRectangle(cornerRadius: 20)
//            .fill(
//                AngularGradient(gradient: Gradient(colors: [Color.black,Color.white]), center: .center, angle: .degrees(135))
//            )
//            .frame(width: 350, height: 300)
//    }
}

#Preview {
    GradientsView()
}
