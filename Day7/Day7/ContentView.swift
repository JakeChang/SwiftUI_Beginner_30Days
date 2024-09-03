//
//  ContentView.swift
//  Day7
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented = false
        
    var body: some View {
        VStack {
            Button(action: {
                isPresented.toggle()
                
            }, label: {
                Text("Go To Page2")
            })
        }
        .sheet(isPresented: $isPresented, content: {
            ContentView_subView(isPresented: $isPresented)
        })
//        .fullScreenCover(isPresented: $isPresented, content: {
//            Day7_subView(isPresented: $isPresented)
//        })
    }
}

struct ContentView_subView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        GeometryReader { geometryReader in
            VStack {
                Text("Page2")
                
                Button(action: {
                    isPresented = false
                }, label: {
                    Text("Back")
                        .foregroundStyle(.white)
                })
            }
            .frame(width: geometryReader.size.width, height: geometryReader.size.height)
            .background(.blue)
        }
    }
}

#Preview {
    ContentView()
}
