//
//  DetailedContentView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 19.01.2023.
//

import SwiftUI

struct DetailedContentView: View {
    @StateObject var searchBarState = AdvancedSearchBarViewStateSaver()
    @State private var showSearchBarOnTop = false
    @State private var scrollOffset = CGFloat.zero
    var fromCommentButton: Bool
    
    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView {
                //VStack {
                    Group {
                        Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante. Morbi venenatis est ut nisi rutrum, sed iaculis nibh suscipit. Nam id laoreet neque. In sit amet egestas nibh. Cras vitae sapien orci. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat.") +
                        Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante.")
                    }
                    .padding()
                    
                    Text("Комментарии ● 100К")
                        .id("CommentStart")
                    
                    AdvancedSearchBarView(searchBarState: searchBarState)
                        .background(
                            GeometryReader { geo in
                                let offset = -geo.frame(in: .named("scrollSpace")).minY
                                Color.clear
                                    .preference(key: ScrollViewOffsetPreferenceKey.self,
                                                value: offset)
                            }
                        )
                    
                    CommentView()
                }
                .coordinateSpace(name: "scrollSpace")
                .onPreferenceChange(ScrollViewOffsetPreferenceKey.self) { value in
                    scrollOffset = value
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
                .onAppear {
                    if fromCommentButton {
                        scrollView.scrollTo("CommentStart", anchor: .top)
                    }
                }
        }
    }
}

struct DetailedContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContentView(fromCommentButton: .init(true))
    }
}
