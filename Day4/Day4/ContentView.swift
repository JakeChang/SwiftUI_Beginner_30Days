//
//  ContentView.swift
//  Day4
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { geometry in
            List {
                ForEach(0 ..< 10) { i in
                    VStack {
                        HStack {
                            Text("Hello World")
                                .font(.system(size: 30, weight: .bold))
                            //.foregroundStyle(.white)
                                .padding(.top, 12)
                                .padding(.leading, 20)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Title")
                            //.foregroundStyle(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 20)
                            Spacer()
                        }
                    }
                    //.background(.blue)
                    .frame(width: geometry.size.width - 32, height: 120)
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
