//
//  ContentView.swift
//  Day9
//
//  Created by Jake Chang on 2024/9/4.
//

import SwiftUI

class MyObject: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack{
            SubView()
            
            Text("count: \(count)")
            
            Button(action: {count = count + 1} ) {
                Text("Update Count")
            }
        }
    }
}

struct SubView: View {
    
    //@ObservedObject var myObject = MyObject()
    @StateObject var myObject = MyObject()

    var body: some View {
        VStack{
            Text("object count: \(myObject.count)")
            
            Button(action: {
                myObject.count = myObject.count + 1
            }, label: {
                Text("Update Object")
            })
        }
    }
}

#Preview {
    ContentView()
}
