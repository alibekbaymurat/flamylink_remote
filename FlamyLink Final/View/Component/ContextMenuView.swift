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
            //
            contextMenuButton(description: "Сделать репост")
                
            //
            contextMenuButton(description: "Показать статистику")
            
            //
            contextMenuButton(description: "Поделиться")
            
            //
            contextMenuButton(description: "Копировать ссылку")
            
            //
            contextMenuButton(description: "Пожаловаться")
            
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

extension ContextMenuView {
    private func contextMenuButton(description: String) -> some View {
        Button {
            
        } label: {
            Text(description)
        }
    }
}
