//
//  Day7.swift
//  SwiftUI30
//
//  Created by Jake on 2024/8/28.
//

import SwiftUI

struct Day7: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                isPresented.toggle()
                
            }, label: {
                Text("Go to Next")
            })
        }
        //.fullScreenCover(isPresented: $isPresented, content: {
        //    Day7_subView(isPresented: $isPresented)
        //})
        .sheet(isPresented: $isPresented, content: {
            Day7_subView(isPresented: $isPresented)
        })
    }
}

struct Day7_subView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        GeometryReader { geometryReader in
            VStack {
                Button(action: {
                    isPresented.toggle()
                    
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
    Day7()
}
