//
//  FeedViewContentChooser.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

struct FeedViewContentPicker: View {
    @State private var selectedFilter: FeedViewContentType = .publications
    var body: some View {
        Picker(selection: $selectedFilter) {
            ForEach(FeedViewContentType.allCases, id: \.self) { item in
                Text(item.type)
            }
        } label: {
            
        }
        .pickerStyle(.segmented)
    }
}

struct FeedViewContentChooser_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewContentPicker()
    }
}

enum FeedViewContentType: Int, CaseIterable {
    case publications
    case recommendations
    
    var type: String {
        switch self {
        case .publications: return "Подписки"
        case .recommendations: return "Рекомендации"
        }
    }
}
