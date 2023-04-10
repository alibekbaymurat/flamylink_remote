//
//  CommentTypeNotificationView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct CommentTypeNotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person")
                    }
                }
            }
        }
    }
}

struct CommentTypeNotificationView_Previews: PreviewProvider {
    static var previews: some View {
        CommentTypeNotificationView()
    }
}
