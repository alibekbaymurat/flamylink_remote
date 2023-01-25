//
//  PostCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Alibek BAIMURAT")
                    .font(.system(size: 16, weight: .bold))
                    .lineLimit(1)
                Spacer()
                ContextMenuView()
            }
            .padding(.bottom)
            
            Text("Hello World")
            
            ContentActionsView()
        }
        .padding()
        
        Divider()
        
        
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
