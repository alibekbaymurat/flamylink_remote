//
//  MainTabView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabButton: MainTabButton = .newsFeed
    @State private var showNewPostView: Bool = false
    @State private var showDetailedContentView: Bool = false
    var body: some View {
        ZStack {
            if showNewPostView {
                NewPostView(showNewPostView: $showNewPostView)
            } else {
                VStack {
                    switch selectedTabButton {
                    case .newsFeed:
                        FeedView()
                    case .search:
                        SearchView()
                    case .addPost:
                        NewPostView(showNewPostView: $showNewPostView)
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
                                    .foregroundColor(selectedTabButton == item ? .black : (MainTabButton.addPost == item ? .orange : .gray))
                                    .frame(width: MainTabButton.addPost == item ? 32 : 24, height: MainTabButton.addPost == item ? 32 : 24)
                                
                            }
                            .onTapGesture {
                                if item == MainTabButton.addPost {
                                    showNewPostView.toggle()
                                } else {
                                    self.selectedTabButton = item
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 50)
                    .edgesIgnoringSafeArea(.bottom)
                    .background(Color(.systemGray6))
                }
            }
            
        }
    }
}

extension MainTabView {
    private func tabButtonView(image: String) -> some View {
        Image(systemName: image)
            .resizable()
            .scaledToFit()
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
        case .addPost: return "plus.circle"
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
