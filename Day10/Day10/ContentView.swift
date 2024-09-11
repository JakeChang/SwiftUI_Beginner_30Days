//
//  ContentView.swift
//  Day10
//
//  Created by Jake Chang on 2024/9/5.
//

import SwiftUI

class MyObject: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    
    @StateObject var myObject = MyObject()
    
    var body: some View {
        NavigationSplitView {
            VStack {
                Text("\(myObject.count)")
                
                Button(action: {
                    myObject.count += 1
                }, label: {
                    Text("Object Add")
                })
                
                NavigationLink("Go to page2", destination: {
                    Page2()
                })
            }
            
        } detail: {
            Text("detail")
        }
        .environmentObject(myObject)
    }
}

struct Page2: View {
    
   @EnvironmentObject var myObject: MyObject
    
    var body: some View {
        Text("\(myObject.count)")

        Button(action: {
            myObject.count += 1
        }, label: {
            Text("Object Add")
        })
    }
}

#Preview {
    ContentView()
}
