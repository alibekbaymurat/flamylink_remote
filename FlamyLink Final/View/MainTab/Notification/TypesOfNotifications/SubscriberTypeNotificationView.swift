//
//  SubscriberTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct SubscriberTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ваши читатели")
                .bold()
                .padding()
        }
    }
}

struct SubscriberTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriberTypeNotificationView()
    }
}
