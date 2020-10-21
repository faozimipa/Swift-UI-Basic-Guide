//
//  ContentView.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 19/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var chapters:[Chapter] = [
        Chapter(id:1,  icon : "textformat.abc", color:"green", title: "Text ", content: "this is about Text in Swift Code"),
        Chapter(id:2,  icon : "text.cursor", color:"pink", title: "Text Field", content: "Some text fild here")
    ]
    
    var body: some View {
        
        NavigationView{
            Form{
                Section(){
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            HStack(spacing: 10, content: {
                                Image("swiftui")
                                    .resizable()
                                    .frame(width:50, height: 50)
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 3, content: {
                                    Text("FAOZI").font(.headline)
                                    Text("Developer").font(.subheadline)
                                })
                            })
                        })
                        .padding(.top,5)
                        .padding(.bottom,5)
                    
                }
                
                Section(header: Text("Materi")){
                    ForEach(chapters) { ch in
                        NavigationLink(
                            destination: DetailPages(), label:{
                                HStack(spacing:20){
                                    Image(systemName: ch.icon)
                                        .frame(width:35, height:35)
                                        .cornerRadius(8)
                                        .foregroundColor(Color.green)
                                    Text(ch.title)
                                }
                            })
                    }
                }
                
            }
        } .navigationTitle("Daftar isi")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
