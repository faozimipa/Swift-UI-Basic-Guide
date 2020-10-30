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
        HStack(content: {
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
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .foregroundColor(self.index == 2 ?  Color("primary") : Color.black.opacity(0.3))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 5 )
                
            }).offset(y:-35)
            
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
        .padding(.horizontal, 35)
        .padding(.top, 35)
        .background(Color.white)
        .clipShape(BackgrounShape())
        .padding(
            .bottom,
            UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 10:0)
    }
}

struct BackgrounShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            path.move(to: CGPoint(x:0, y:35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x:rect.width, y:rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            path.addArc(center: CGPoint(x: (rect.width/2) + 0, y: 35), radius: 35, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(index: .constant(0))
    }
}
