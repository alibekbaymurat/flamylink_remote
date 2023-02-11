//
//  MainTabView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabButton: MainTabButton = .newsFeed
    var body: some View {
        VStack {
            switch selectedTabButton {
            case .newsFeed:
                FeedView()
            case .search:
                SearchView()
            case .addPost:
                NewPostView()
            case .notification:
                NotificationsView()
            case .profile:
                ProfileView()
            }
            HStack(alignment: .center, spacing: 50) {
                ForEach(MainTabButton.allCases, id: \.self) { item in
                    VStack {
                        tabButtonView(image: item.type)
                            .fontWeight(selectedTabButton == item ? .semibold : .regular)
                            .foregroundColor(selectedTabButton == item ? .black : .gray)
                    }
                    .onTapGesture {
                        self.selectedTabButton = item
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 50)
            .edgesIgnoringSafeArea(.bottom)
            .background(Color(.systemGray6))
        }
    }
}

extension MainTabView {
    private func tabButtonView(image: String) -> some View {
        Image(systemName: image)
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
            .tint(Color(.systemGray))
    }
}

enum MainTabButton: Int, CaseIterable {
    case newsFeed
    case search
    case addPost
    case notification
    case profile
    
    var type: String {
        switch self {
        case .newsFeed: return "house"
        case .search: return "magnifyingglass"
        case .addPost: return "plus"
        case .notification: return "bell"
        case .profile: return "person"
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
