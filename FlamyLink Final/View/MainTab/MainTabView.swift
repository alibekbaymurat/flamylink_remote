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
        TabView(selection: $selectedTabIndex) {
            FeedView()
                .onAppear {
                    self.selectedTabIndex = 0
                }
                .tabItem {
                    Label("Новости", systemImage: "newspaper")
                }
                .tag(0)
            
            NavigatorView()
                .onAppear {
                    self.selectedTabIndex = 1
                }
                .tabItem {
                    Label("Навигатор", systemImage: "flame")
                }
                .tag(1)
            
            SenderView()
                .onAppear {
                    self.selectedTabIndex = 2
                }
                .tabItem {
                    Label("Sender", systemImage: "bubble.left.and.bubble.right")
                }
                .tag(2)
            
            NotificationsView()
                .onAppear {
                    self.selectedTabIndex = 3
                }
                .tabItem {
                    Label("Уведомления", systemImage: "bell")
                }
                .tag(3)
            
            LibraryView()
                .onAppear {
                    self.selectedTabIndex = 4
                }
                .tabItem {
                    Label("Библиотека", systemImage: "books.vertical.fill")
                }
                .tag(4)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
