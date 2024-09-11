//
//  ContentView.swift
//  Day8
//
//  Created by Jake Chang on 2024/9/3.
//

import SwiftUI

class MyObject: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    
    @ObservedObject var myObject = MyObject()
    
    var body: some View {
        NavigationSplitView {
            VStack{
                Text("\(myObject.count)")
                
                Button(action: {
                    myObject.count = myObject.count + 1
                }, label: {
                    Text("Button")
                })
                
                NavigationLink {
                    Page2(myObject: myObject)
                    
                } label: {
                    Text("Go To Page2")
                }
            }
        } detail: {
            Text("NavigationSplitView detail")
        }
    }
}

struct Page2: View {
    
    @ObservedObject var myObject: MyObject
    
    var body: some View {
        VStack{
            Text("\(myObject.count)")
            
            Button(action: {
                myObject.count = myObject.count + 1
            }, label: {
                Text("Button")
            })
        }
    }
}

#Preview {
    ContentView()
}
