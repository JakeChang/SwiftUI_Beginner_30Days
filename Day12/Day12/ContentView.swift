//
//  ContentView.swift
//  Day12
//
//  Created by Jake Chang on 2024/9/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "JK")
        }
    }
}

struct SecondView: View {
    
    let name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Hello, \(name)!")
            
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    ContentView()
}
