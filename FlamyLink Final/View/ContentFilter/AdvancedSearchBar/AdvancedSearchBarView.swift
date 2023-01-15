//
//  ContentFilter.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct AdvancedSearchBarView: View {
    @State private var text: String = ""
    var body: some View {
        VStack(spacing: 0) {
            SearchBar(text: $text)
            HStack {
                ContentTypeFilterView()
                
                Spacer()
                
                ContentFilterButtonView()
            }
            .padding(.bottom)
            .padding(.horizontal)
            .frame(height: 45)
        }
        .background(Color(.systemGray6))
    }
}

struct AdvancedSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSearchBarView()
    }
}
