//
//  ContentView.swift
//  Day2
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello World")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 12)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack {
                Text("Title")
                    .foregroundStyle(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                Spacer()
            }
        }
        .background(.blue)
        .frame(width: 300, height: 120)
    }
}

#Preview {
    ContentView()
}
