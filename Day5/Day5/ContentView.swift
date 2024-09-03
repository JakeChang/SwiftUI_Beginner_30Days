//
//  ContentView.swift
//  Day5
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: {
                    ContentView_subView()
                    
                }, label: {
                    Text("Go to page2")
                })
                .navigationTitle("Header")
            }
        }
    }
}

struct ContentView_subView: View {
    var body: some View {
        Text("Page2")
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
}
