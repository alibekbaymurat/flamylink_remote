//
//  NotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink {
                    CommentTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Комментарии",
                                         footnoteText: "Комментарии к Вашему контенту",
                                         notificationNumber: "143")
                }
                
                NavigationLink {
                    MentionTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Упоминания",
                                         footnoteText: "Упоминания Вашего аккаунта в контенте других пользователей",
                                         notificationNumber: "12")
                }
                
                NavigationLink {
                    RatingTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Оценка",
                                         footnoteText: "Оценка Вашего контента другими пользователями",
                                         notificationNumber: "2k")
                }
                
                NavigationLink {
                    SubscriberTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Читатели",
                                         footnoteText: "Ваши читатели",
                                         notificationNumber: "24")
                }
                
                NavigationLink {
                    RepostTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Репосты",
                                         footnoteText: "Репосты Вашего контента",
                                         notificationNumber: "")
                }
                
                NavigationLink {
                    DonationTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Донаты",
                                         footnoteText: "Денежные пожертвования и сообщения",
                                         notificationNumber: "980")
                }
                
                NavigationLink {
                    StatisticTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Статистика",
                                         footnoteText: "Статистика взаимодействия с Вашим контентом",
                                         notificationNumber: "")
                }
            }
        }
        .padding()
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
