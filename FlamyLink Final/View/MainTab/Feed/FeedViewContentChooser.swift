//
//  FeedViewContentChooser.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

struct FeedViewContentChooser: View {
    @State private var selectedFilter: FeedViewContentType = .publications
    var body: some View {
        HStack {
            ForEach(FeedViewContentType.allCases, id: \.self) { item in
                VStack {
                    Text(item.type)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.orange))
                            .frame(height: 3)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
}

struct FeedViewContentChooser_Previews: PreviewProvider {
    static var previews: some View {
        FeedViewContentChooser()
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
