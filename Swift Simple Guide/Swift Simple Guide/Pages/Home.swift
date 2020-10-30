//
//  Home.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 30/10/20.
//

import SwiftUI

struct Home: View {
    @State var index = 0
    var body: some View{
        VStack( spacing: 0, content: {
            HStack( spacing: 20, content: {
                Text("Gado Resto")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 20, height: 25)
                        .foregroundColor(.white)
                })
                
            })
            .padding()
            .padding(.top, UIApplication.shared.windows.first? .safeAreaInsets.top)
            .background(Color("primary"))
            
            Spacer()
            TabBar(index:self.$index)
        })
        .edgesIgnoringSafeArea(.top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
