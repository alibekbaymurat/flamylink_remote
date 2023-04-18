//
//  ContentFilter.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

class AdvancedSearchBarViewStateSaver: ObservableObject {
    @Published var typedText = ""
    @Published var selectedContentType: ContentType = .post
}

struct AdvancedSearchBarView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    var body: some View {
        VStack {
            SearchBar(text: $searchBarState.typedText)
                .padding(8)
            
            HStack {
                ContentTypePickerView(searchBarState: searchBarState)
                    .frame(width: UIScreen.main.bounds.width / 3)
                
                Button {
                    
                } label: {
                    Text("Искать")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .underline()
                }
                .frame(width: UIScreen.main.bounds.width / 3)
                
                ContentFilterButtonView()
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
            .font(.callout)
            .padding(.bottom, 8)
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
