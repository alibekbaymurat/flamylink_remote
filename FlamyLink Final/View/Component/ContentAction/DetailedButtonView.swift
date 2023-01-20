//
//  DetailedButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 21.01.2023.
//

import SwiftUI

struct DetailedButtonView: View {
    @Binding var showDetailedContentView: Bool
    var body: some View {
        Button {
            showDetailedContentView.toggle()
        } label: {
            Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
                .font(.system(size: 16))
                .frame(width: 20, height: 20)
        }
    }
}

struct DetailedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedButtonView(showDetailedContentView: .constant(false))
    }
}
