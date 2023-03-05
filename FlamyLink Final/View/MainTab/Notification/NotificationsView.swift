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
                                         notificationCount: "143")
                }
                
                NavigationLink {
                    MentionTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Упоминания",
                                         footnoteText: "Упоминания Вашего аккаунта в контенте пользователей",
                                         notificationCount: "12")
                }
                
                NavigationLink {
                    RatingTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Оценка",
                                         footnoteText: "Оценка Вашего контента",
                                         notificationCount: "2k")
                }
                
                NavigationLink {
                    SubscriberTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Читатели",
                                         footnoteText: "Ваши читатели",
                                         notificationCount: "24")
                }
                
                NavigationLink {
                    RepostTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Репосты",
                                         footnoteText: "Репосты Вашего контента",
                                         notificationCount: "")
                }
                
                NavigationLink {
                    DonationTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Донаты",
                                         footnoteText: "Денежные пожертвования и сообщения",
                                         notificationCount: "980")
                }
                
                NavigationLink {
                    StatisticTypeNotificationView()
                } label: {
                    NotificationTypeView(titleText: "Статистика",
                                         footnoteText: "Статистика взаимодействия пользователей с Вашим контентом",
                                         notificationCount: "")
                }
            }
            .navigationTitle("Уведомления")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

extension NotificationsView {
    struct NotificationTypeView: View {
        var titleText: String
        var footnoteText: String
        var notificationCount: String
        var body: some View {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black)
                .frame(height: 80)
                .overlay {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(titleText)
                                .font(.title3)
                                .fontWeight(.bold)
                                .lineLimit(1)
                            
                            Text(footnoteText)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                                .lineLimit(2)
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
                            .foregroundColor(.black)
                            .rotationEffect(.degrees(90))
                            .padding(.trailing)
                    }
                }
                .padding(.horizontal)
        }
    }
}
