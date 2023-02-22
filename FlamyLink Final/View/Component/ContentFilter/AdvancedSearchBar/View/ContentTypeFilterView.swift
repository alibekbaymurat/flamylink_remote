//
//  ContentTypeFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContentTypeFilterView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    var body: some View {
        Menu {
            ForEach(ContentType.allCases, id: \.self) { item in
                Button {
                    searchBarState.selectedFilterType = item
                } label: {
                    Text(item.type)
                }
            }
        } label: {
            Text(searchBarState.selectedFilterType.type)
                .font(.system(size: 20))
                .foregroundColor(Color("customOrange"))
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
        case .post: return "/посты"
        case .hashtag: return "/хештеги"
        case .comment: return "/комментарии"
        case .profile: return "/профили"
        case .repost: return "/репосты"
        }
    }
}

struct ContentTypeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTypeFilterView()
    }
}
