//
//  ScrollViewContent.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 28/10/20.
//

import SwiftUI

struct ScrollViewContent: View {
    let colors: [Color] = [.red, .yellow, .green, .pink, .blue]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(0..<10) { i in
                        Text("Item \(i)")
                            .foregroundColor(.white)
                            .font(.caption)
                            .fontWeight(.bold)
                            .frame(width: 80, height: 80)
                            .background(colors[i % colors.count])
                            .padding(5)
                            .id(i)
                    }
                }
            }
            
            ScrollView {
                VStack(spacing: 5) {
                    ForEach(0..<19) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: 200)
                            
                            .background(Color.red)
                            .padding(8)
                    }
                }
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct ScrollViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewContent()
    }
}
