//
//  PostCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Алибек БАЙМУРАТ")
                        .font(.system(size: 16, weight: .bold))
                        .lineLimit(1)
                    Spacer()
                    ContextMenuView()
                }
                .padding(.bottom)
                
                Text("Всем привет")
                
                ContentActionsView()
            }
            .padding()
            
            Divider()
        }
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
