//
//  MentionTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct MentionTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Упоминания Вашего аккаунта в контенте других пользователей")
                .bold()
                .padding()
            
            PostCell()
        }
    }
}

struct MentionTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        MentionTypeNotificationView()
    }
}
