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
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "newspaper")
                }
                .tag(0)
            
            SearchView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            NewPostView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(2)
            
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(3)
            
            ProfileView()
                .onTapGesture {
                    self.selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
    }
}
