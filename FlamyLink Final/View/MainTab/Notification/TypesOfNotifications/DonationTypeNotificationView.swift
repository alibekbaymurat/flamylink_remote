//
//  DonationTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct DonationTypeNotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Денежные пожертвования и сообщения")
                .bold()
                .padding()
        }
    }
}

struct DonationTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationTypeNotificationView()
    }
}
