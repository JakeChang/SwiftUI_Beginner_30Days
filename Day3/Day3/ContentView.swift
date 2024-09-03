//
//  ContentView.swift
//  Day3
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        GeometryReader { geometryReader in
            VStack {
                Spacer()
                
                Text("\(count)")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(.red)
                
                Spacer()
                
                Button(action: {
                    count += 1
                    
                }, label: {
                    Text("Button")
                        .frame(width: geometryReader.size.width - 32, height: 60)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .padding(16)
                    
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
