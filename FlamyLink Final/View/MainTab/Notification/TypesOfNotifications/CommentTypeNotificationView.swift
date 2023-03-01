//
//  CommentTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct CommentTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Комментарии к Вашему контенту")
                .bold()
                .padding()
            Group {
                Text("Расул Гамзатов")
                    .underline() +
                Text(" ответил на Ваш ") +
                Text("пост")
            }
            PostCell()
        }
    }
}

struct CommentTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        CommentTypeNotificationView()
    }
}
