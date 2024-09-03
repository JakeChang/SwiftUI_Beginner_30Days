//
//  ContentView.swift
//  Day6
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 10
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {
                    ContentView_subView(count: $count)
                    
                }, label: {
                    Text("Go to page2")
                })
                .navigationTitle("Header")
                
                Text("\(count)")
            }
        }
    }
}

struct ContentView_subView: View {
    
    @Binding var count: Int
    
    var body: some View {
        VStack {
            Button(action: {
                count += 1
            }, label: {
                Text("Button")
            })
            
            Text("\(count)")
        }
    }
}

#Preview {
    ContentView()
}
