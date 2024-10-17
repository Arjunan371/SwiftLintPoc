//
//  ContentView.swift
//  SwiftLintPoc
//
//  Created by Arjunan on 19/08/24.
//

import AVKit
import SwiftUI
import UIKit

struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        CustomShape()
            .frame(width: 50, height: 50)
            .foregroundColor(Color.blue)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()

        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }

    func checkDemo(string: String, strin: String, stri: String) {

    }
}

#Preview {
    ContentView()
}

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            // path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control1: CGPoint(x: rect.maxX * 0.70, y: rect.midY), control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY * 1.25))
        }
    }
}
#Preview(body: {
    CustomShape()
})
