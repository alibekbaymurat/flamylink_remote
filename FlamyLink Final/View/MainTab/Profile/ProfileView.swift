//
//  ProfileView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ScrollViewOffsetPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}

struct ProfileView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    @State private var showSearchBarOnTop = false
    @State private var scrollOffset = CGFloat.zero 
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 4) {
                ScrollView {
                    ProfileCell()
                    
                    LazyVStack {
                        AdvancedSearchBarView(searchBarState: searchBarState)
                            .background(
                                GeometryReader { geo in
                                    let offset = -geo.frame(in: .named("scrollSpace")).minY
                                    Color.clear
                                        .preference(key: ScrollViewOffsetPreferenceKey.self,
                                                    value: offset)
                                }
                            )
                        
                        ForEach(1...10, id: \.self) { _ in
                            PostCell()
                        }
                    }
                }
                .coordinateSpace(name: "scrollSpace")
                .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
                    DispatchQueue.main.async {
                        scrollOffset = value
                    }
                }
                .onChange(of: scrollOffset) { offset in
                    if offset >= 0 {
                        showSearchBarOnTop = true
                    } else {
                        showSearchBarOnTop = false
                    }
                }
                .overlay {
                    if showSearchBarOnTop {
                        VStack {
                            AdvancedSearchBarView(searchBarState: searchBarState)
                            
                            Spacer()
                        }
                    }
                }
            }
            .navigationTitle("Профиль")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color(.systemGray5))
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
