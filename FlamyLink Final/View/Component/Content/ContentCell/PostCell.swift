//
//  PostCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct PostCell: View {
    @State private var showDetailedContentView = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Алибек БАЙМУРАТ")
                        .font(.system(size: 16, weight: .bold))
                        .lineLimit(1)
                        .underline(color: Color("customOrange"))
                    
                    Spacer()
                    
                    ContextMenuView()
                }
                .padding(.bottom)
                
                Text("Всем привет")
                
                NavigationLink {
                    DetailedContentView()
                } label: {
                    Text("Показать полностью")
                        .foregroundColor(Color("customOrange"))
                }
                
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
