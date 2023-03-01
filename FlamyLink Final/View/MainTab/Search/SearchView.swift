//
//  SearchView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                AdvancedSearchBarView()
                ScrollView {
                    LazyVStack {
                        ForEach(1...5, id: \.self) { _ in
                            PostCell()
                        }
                    }
                }
            }
            
            .navigationTitle("Поиск")
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
