//
//  ContentView.swift
//  Day11
//
//  Created by Jake Chang on 2024/9/9.
//

import SwiftUI

/*
 Environment
 
 全域共享資料：它通常用來共享應用的全域性設定或資料，例如顏色方案、字體、視圖樣式、使用者的偏好設置等。
 */

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.userName) var userName

    var body: some View {
        NavigationSplitView {
            VStack {
                Text("\(colorScheme)")
                
                Text("Hello, \(userName)!")
                
//                Button(action: {
//                    //userName = "JK"
//                }, label: {
//                    Text("Button")
//                })
//                
                NavigationLink(destination: {
                    Page2()
                }, label: {
                    Text("Go To Page2")
                })
            }
        } detail: {
            Text("")
        }
    }
}

struct UserNameKey: EnvironmentKey {
    static let defaultValue: String = "Guest"
}

extension EnvironmentValues {
    var userName: String {
        get { self[UserNameKey.self] }
        set { self[UserNameKey.self] = newValue }
    }
}


struct Page2: View {
    
    @Environment(\.userName) var userName

    var body: some View {
        Text("Hello, \(userName)!")
    }
}

#Preview {
    ContentView()
}
