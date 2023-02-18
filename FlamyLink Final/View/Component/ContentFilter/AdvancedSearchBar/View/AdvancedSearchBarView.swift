//
//  ContentFilter.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI
import Combine

class AdvancedSearchBarViewStateSaver: ObservableObject {
    @Published var text = ""
    @Published var filterType: ContentType = .post
}

struct AdvancedSearchBarView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    var body: some View {
        VStack(spacing: 0) {
            SearchBar(text: $searchBarState.text)
            
            HStack {
                ContentTypeFilterView(searchBarState: searchBarState)
                
                Spacer()
                
                ContentFilterButtonView()
            }
            .padding(.bottom)
            .padding(.horizontal)
            .frame(height: 40)
        }
        .background(Color(.systemGray6))
        .cornerRadius(20)
    }
}

struct AdvancedSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSearchBarView()
    }
}
