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
                Text("Сделать репост")
            }
            
            Button {
                
            } label: {
                Text("Показать статистику")
            }
            
            Button {
                
            } label: {
                Text("Поделиться")
            }
            
            Button {
                
            } label: {
                Text("Копировать ссылку")
            }
            
            Button {
                
            } label: {
                Text("Пожаловаться")
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
