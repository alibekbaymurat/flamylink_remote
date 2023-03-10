//
//  FeedView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                FeedViewContentChooser()
                
                ScrollView {
                    LazyVStack {
                        ForEach(1...9, id: \.self) { _ in
                            PostCell()
                        }
                    }
                }
            }
            .navigationTitle("Лента новостей")
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
