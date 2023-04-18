//
//  PostContextMenuView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct PostContextMenuView: View {
    var body: some View {
        Menu {
            //
            postContextMenuButton(description: "Сделать репост")
                
            //
            postContextMenuButton(description: "Показать статистику")
            
            //
            postContextMenuButton(description: "Поделиться")
            
            //
            postContextMenuButton(description: "Копировать ссылку")
            
            //
            postContextMenuButton(description: "Пожаловаться")
            
        } label: {
            Image(systemName: "ellipsis")
                .rotationEffect(Angle(degrees: 90))
                .foregroundColor(.black)
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PostContextMenuView()
    }
}

extension PostContextMenuView {
    private func postContextMenuButton(description: String) -> some View {
        Button {
            
        } label: {
            Text(description)
                .font(.callout)
        }
    }
}
