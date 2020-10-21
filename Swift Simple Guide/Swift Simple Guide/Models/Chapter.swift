//
//  Chapter.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 20/10/20.
//

import SwiftUI

struct Chapter: Codable, Identifiable {
    var id: Int
    var icon: String
    var color: String
    var title: String
    var content: String
    
    init(id: Int, icon: String, color: String, title: String, content: String) {
        self.id = id
        self.icon = icon
        self.color = color
        self.title = title
        self.content = content
    }
}

