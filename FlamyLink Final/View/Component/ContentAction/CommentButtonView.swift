//
//  CommentButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 21.01.2023.
//

import SwiftUI

struct CommentButtonView: View {
    @Binding var showCommentView: Bool
    var body: some View {
        Button {
            showCommentView.toggle()
            ContentActionsView.numberOfScreen += 1
        } label: {
            HStack {
                Image(systemName: "bubble.left")
                    .font(.system(size: 18))
                    .frame(width: 20, height: 20)
                
                Text("100M")
            }
            .frame(width: UIScreen.main.bounds.width / 4,
                   alignment: .leading)
        }
    }
}

struct CommentButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CommentButtonView(showCommentView: .constant(false))
    }
}
