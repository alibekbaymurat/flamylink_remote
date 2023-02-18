//
//  PostActionsView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ContentActionsView: View {
    @State private var showCommentView: Bool = false
    @State private var showDetailedContentView = false
    static var counterOfScreen: Int = 0
    var body: some View {
        HStack {
            //Uprate
            HStack {
                ContentActionButtonView(iconName: "arrowtriangle.up")
                Text("3K")
            }
            
            Spacer()
            
            //Downrate
            HStack {
                ContentActionButtonView(iconName: "arrowtriangle.down")
                Text("10K")
            }
            
            Spacer()
            
            //Comment
            HStack {
                ContentActionButtonView(iconName: "bubble.left")
                Text("100M")
            }
            
            
            Spacer()
            
            //Detailed
            ContentActionButtonView(iconName: "arrow.up.left.and.arrow.down.right")
        }
        .padding(.top)
        .foregroundColor(.black)
        .sheet(isPresented: $showCommentView) {
            showSecondaryCommentView()
        }
//        .sheet(isPresented: $showDetailedContentView) {
//            NavigationStack {
//                DetailedContentView(showDetailedContentView: $showDetailedContentView)
//                    .toolbar {
//                        ToolbarItemGroup(placement: .navigationBarLeading) {
//                            Button {
//                                showDetailedContentView.toggle()
//                            } label: {
//                                Text("Back")
//                            }
//                        }
//                    }
//            }
//        }
    }
}

extension ContentActionsView {
    struct ContentActionButtonView: View {
        var iconName: String
        var body: some View {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
        }
    }
}

extension ContentActionsView {
    private func showSecondaryCommentView() -> some View {
        NavigationStack {
            CommentView()
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                            ContentActionsView.counterOfScreen -= 1
                            showCommentView = false
                        } label: {
                            Text("Back")
                        }
                        Text("\(ContentActionsView.counterOfScreen)")
                        Button {
                            // при нажатии нужно чтоб переходил на первый комент
                        } label: {
                            Text("Показать первый комментарий")
                        }
                        
                    }
                }
        }
    }
}

struct ContentActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentActionsView()
    }
}
