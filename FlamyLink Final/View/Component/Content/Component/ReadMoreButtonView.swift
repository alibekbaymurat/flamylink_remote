//
//  ReadMoreButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 01.03.2023.
//

import SwiftUI

struct ReadMoreButtonView: View {
    var body: some View {
        HStack {
            NavigationLink {
                DetailedContentView(fromCommentButton: false)
            } label: {
                Text("Показать полностью")
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "eye")
                Text("154")
            }
            .foregroundColor(Color(.systemGray))
        }
    }
}

struct ReadMoreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ReadMoreButtonView()
    }
}
