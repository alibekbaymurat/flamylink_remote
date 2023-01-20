//
//  ContextMenuView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Menu {
            Button {
                
            } label: {
                Text("Repost")
            }
            
            Button {
                
            } label: {
                Text("Send")
            }
            
            Button {
                
            } label: {
                Text("Copy link")
            }
            
            Button {
                
            } label: {
                Text("Report")
            }
            
        } label: {
            Image(systemName: "ellipsis")
                .rotationEffect(Angle(degrees: 90))
                .font(.system(size: 16))
                .frame(width: 20, height: 20)
                .foregroundColor(.black)
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
