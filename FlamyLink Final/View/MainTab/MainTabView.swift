//
//  MainTabView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabIndex = 0

    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $selectedTabIndex) {
                FeedView()
                    .onAppear {
                        self.selectedTabIndex = 0
                    }
                    .tabItem {
                        Image(systemName: "newspaper")
                    }
                    .tag(0)
                
                SearchView()
                    .onAppear {
                        self.selectedTabIndex = 1
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                    .tag(1)
                
                NewPostView()
                    .onAppear {
                        self.selectedTabIndex = 2
                    }
                    .tabItem {
                        Image(systemName: "plus")
                        
                    }
                    .tag(2)
                
                NotificationsView()
                    .onAppear {
                        self.selectedTabIndex = 3
                    }
                    .tabItem {
                        Image(systemName: "bell")
                    }
                    .tag(3)
                
                ProfileView()
                    .onAppear {
                        self.selectedTabIndex = 4
                    }
                    .tabItem {
                        Image(systemName: "person")
                    }
                    .tag(4)
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
