//
//  ContentTypeFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContentTypePickerView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    var body: some View {
        Menu {
            Picker(selection: $searchBarState.selectedContentType) {
                ForEach(ContentType.allCases, id: \.self) { item in
                    Text(item.type)
                }
            } label: { }
        } label: {
            HStack(alignment: .firstTextBaseline, spacing: 4) {
                Text(searchBarState.selectedContentType.type)
                
                Image(systemName: "chevron.up.chevron.down")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .underline()
        }
    }
}

enum ContentType: Int, CaseIterable {
    case post
    case hashtag
    case comment
    case profile
    case repost
    
    var type: String {
        switch self {
        case .post: return "посты"
        case .hashtag: return "хештеги"
        case .comment: return "комментарии"
        case .profile: return "профили"
        case .repost: return "репосты"
        }
    }
}

struct ContentTypeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTypePickerView()
    }
}
