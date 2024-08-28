//
//  Day6.swift
//  SwiftUI30
//
//  Created by Jake on 2024/8/28.
//

import SwiftUI

struct Day6: View {
    
    @State var count = 10
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {
                    Day6_subView(count: $count)
                    
                }, label: {
                    Text("Go to page2")
                })
                .navigationTitle("Header")
                
                Text("\(count)")
            }
        }
    }
}

struct Day6_subView: View {
    
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
    Day6()
}
