//
//  DetailPages.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 19/10/20.
//

import SwiftUI

struct DetailPages: View {
    @State var chapter : Chapter;
    var body: some View {
        if chapter.id == 1 {
            
        }else if chapter.id == 2 {
            
        }else if chapter.id == 3 {
            ScrollViewContent()
        }else{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct DetailPageContent: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailPages_Previews: PreviewProvider {
    static var previews: some View {
        //  DetailPages(chapter: chapter)
        ScrollViewContent()
    }
}
