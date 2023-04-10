//
//  ContentFilter.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

class AdvancedSearchBarViewStateSaver: ObservableObject {
    @Published var typedText = ""
    @Published var selectedFilterType: ContentType = .post
}

struct AdvancedSearchBarView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    var body: some View {
        VStack(spacing: 8) {
            SearchBar(text: $searchBarState.typedText)
                .padding(8)
            
            HStack {
                ContentTypeFilterView(searchBarState: searchBarState)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Искать")
                }

                Spacer()
                
                ContentFilterButtonView()
            }
            .padding(.horizontal)
            
            Divider()
        }
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(.systemGray6))
        )
    }
}

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        TextField("Что ищете?", text: $text)
            .font(.callout)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .textFieldStyle(.roundedBorder)
            .foregroundColor(.black)
    }
}

struct AdvancedSearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSearchBarView()
    }
}
