//
//  NotificationTypeView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 25.01.2023.
//

import SwiftUI

struct NotificationTypeView: View {
    var titleText: String
    var footnoteText: String
    var notificationCount: String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.orange)
            .frame(height: 90)
            .overlay {
                HStack {
                    VStack(alignment: .leading) {
                        Text(titleText)
                            .font(.title3)
                            .fontWeight(.bold)
                        Text(footnoteText)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                    }
                    .foregroundColor(.black)
                    .padding(.leading)
                    Spacer()
                    if notificationCount != "" {
                        Text("+\(notificationCount)")
                            .foregroundColor(.white)
                            .padding(.horizontal, 8)
                            .background(Color.gray)
                            .cornerRadius(10)
                    }
                    Image(systemName: "control")
                        .foregroundColor(.orange)
                        .rotationEffect(.degrees(90))
                        .padding(.trailing)
                }
            }
            .padding(.horizontal)
    }
}

struct NotificationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTypeView(titleText: "Комментарии", footnoteText: "Статистика просмотра Вашего контента и перехода по ссылке", notificationCount: "4K")
    }
}
