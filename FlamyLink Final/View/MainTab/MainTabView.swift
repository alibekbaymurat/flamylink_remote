//
//  MainTabView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "newspaper")
                }
                .tag(0)
            
            SearchView()
                .onAppear {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            NewPostView()
                .onAppear {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(2)
            
            NotificationsView()
                .onAppear {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(3)
            
            ProfileView()
                .onAppear {
                    self.selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
    }
}
