//
//  ContentView.swift
//  Day13
//
//  Created by Jake Chang on 2024/9/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 60, height: 60)
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 60, height: 60)
            
            Circle()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 60, height: 60)
            
            Ellipse()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 60, height: 100)
            
            Capsule()
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 60, height: 120)
            
            Circle()
                .stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .frame(width: 200)
            
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .frame(width: 200)
        }
    }
}

#Preview {
    ContentView()
}
