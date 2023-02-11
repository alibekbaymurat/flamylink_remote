//
//  ProfileView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileView: View {
    private var showSearchBarOnTop: Bool {
        if offset > 254.00 {
            return true
        }
        return false
    }
    @State private var showDivider: Bool = false
    @State private var offset = CGFloat.zero
    var body: some View {
        VStack {
            if showSearchBarOnTop {
                AdvancedSearchBarView()
            }
            ScrollView {
                LazyVStack {
                    ProfileCell(showDivider: $showDivider)
                    
                    if !showSearchBarOnTop {
                        AdvancedSearchBarView()
                    }
                    
                    ForEach(1...5, id: \.self) { _ in
                        PostCell()
                    }
                }
                .background(GeometryReader { proxy -> Color in
                    DispatchQueue.main.async {
                        offset = -proxy.frame(in: .named("scroll")).origin.y
                    }
                    return Color.clear
                })
            }.coordinateSpace(name: "scroll")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
