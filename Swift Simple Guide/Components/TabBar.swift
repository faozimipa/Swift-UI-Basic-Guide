//
//  TabBar.swift
//  Swift Simple Guide
//
//  Created by faozi faozi on 30/10/20.
//

import SwiftUI

struct TabBar: View {
    @Binding var index : Int
    var body: some View {
        HStack( spacing: 0, content: {
            Button(action: {
                self.index = 0
            }, label: {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 0 ?  Color("primary") : Color.black.opacity(0.3))
            })
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 1
            }, label: {
                Image(systemName: "cart.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 1 ?  Color("primary") : Color.black.opacity(0.3))
            })
            Spacer(minLength: 0)
            
            
            Button(action: {
                self.index = 2
            }, label: {
                Image(systemName: "cart.fill")
                    .font(.title)
                    .foregroundColor(self.index == 2 ?  Color("primary") : Color.black.opacity(0.3))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 4 )
                
            }).offset(y:-20)
            
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 3
            }, label: {
                Image(systemName: "bag.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 3 ?  Color("primary") : Color.black.opacity(0.3))
            })
            Spacer(minLength: 0)
            
            Button(action: {
                self.index = 4
            }, label: {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(self.index == 4 ?  Color("primary") : Color.black.opacity(0.3))
            })
            
        })
        .padding(.horizontal, 25)
        .padding(.top, 10)
        .padding(
            .bottom,
            UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 10:0)
    }
}

