//
//  StatisticTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct StatisticTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Статистика взаимодействия с Вашим контентом")
                .bold()
                .padding()
        }
    }
}

struct StatisticTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticTypeNotificationView()
    }
}
