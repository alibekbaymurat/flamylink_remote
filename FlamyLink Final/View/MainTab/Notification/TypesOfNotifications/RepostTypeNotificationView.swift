//
//  RepostTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct RepostTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Репосты Вашего контента")
                .bold()
                .padding()
            PostCell()
        }
    }
}

struct RepostTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        RepostTypeNotificationView()
    }
}
