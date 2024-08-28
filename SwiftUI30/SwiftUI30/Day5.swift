//
//  Day5.swift
//  SwiftUI30
//
//  Created by Jake on 2024/8/27.
//

import SwiftUI

struct Day5: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: {
                    Day5_subView()
                    
                }, label: {
                    Text("Go to page2")
                })
                .navigationTitle("Header")
            }
        }
    }
}

struct Day5_subView: View {
    var body: some View {
        Text("Page2")
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    Day5()
}
