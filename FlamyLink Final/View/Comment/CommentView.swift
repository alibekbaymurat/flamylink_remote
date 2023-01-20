//
//  CommentView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 03.01.2023.
//

import SwiftUI

struct CommentView: View {
    
    var body: some View {
        VStack {
            AdvancedSearchBarView()
                .padding(.top)
            ScrollView {
                LazyVStack {
                    ForEach(1...10, id: \.self) { _ in
                        PostCell()
                    }
                }
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
