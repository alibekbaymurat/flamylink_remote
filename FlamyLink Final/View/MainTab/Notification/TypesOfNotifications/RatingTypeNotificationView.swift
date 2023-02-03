//
//  RatingTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct RatingTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Оценка Вашего контента другими пользователями")
                .bold()
                .padding()
            
            PostCell()
        }
    }
}

struct RatingTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        RatingTypeNotificationView()
    }
}
