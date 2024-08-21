//
//  Day2.swift
//  SwiftUI30
//
//  Created by Jake on 2024/8/21.
//

import SwiftUI

struct Day2: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello World")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.top, 12)
                    .padding(.leading, 20)
                
                Spacer()
            }
            
            HStack {
                Text("Title")
                    .foregroundStyle(.white)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                Spacer()
            }
        }
        .background(.blue)
        .frame(width: 300, height: 120)
    }
}

#Preview {
    Day2()
}
