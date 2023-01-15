//
//  ContentTypeFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContentTypeFilterView: View {
    
    @State private var selectedContentType: ContentType = .post
    
    var body: some View {
        Menu {
            ForEach(ContentType.allCases, id: \.rawValue) { item in
                Button {
                    self.selectedContentType = item
                } label: {
                    Text(item.type)
                }
            }
        } label: {
            Text(selectedContentType.type)
                .font(.system(size: 20))
                .foregroundColor(.orange)
        }
    }
}

enum ContentType: Int, CaseIterable {
    case post
    case hashtag
    case comment
    case profile
    
    var type: String {
        switch self {
        case .post: return "/posts"
        case .hashtag: return "/hashtags"
        case .comment: return "/comments"
        case .profile: return "/profiles"
        }
    }
}

struct ContentTypeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentTypeFilterView()
    }
}
