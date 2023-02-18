//
//  ProfileView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    
    @State private var showDivider: Bool = false
    @State private var offset = CGFloat.zero
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
            
            if offset < 0 {
                AdvancedSearchBarView(searchBarState: searchBarState)
            }
            
            ScrollView {
                LazyVStack {
                    ProfileCell(showDivider: $showDivider)
                    
                    GeometryReader { geo -> Color in
                        DispatchQueue.main.async {
                            offset = geo.frame(in: .named("scroll")).origin.y
                        }
                        return Color.clear
                    }
                    .frame(width: 0, height: 0)
                    
                    if offset >= 0 {
                        AdvancedSearchBarView(searchBarState: searchBarState)
                    }
                    
                    ForEach(1...5, id: \.self) { _ in
                        PostCell()
                    }
                }
            }.coordinateSpace(name: "scroll")
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
