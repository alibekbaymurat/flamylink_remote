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
    static var numberOfScreen: Int = 0
    var body: some View {
        HStack {
            //Uprate
            Button {
                
            } label: {
                ContentActionButtonView(iconName: "arrowtriangle.up", counter: "3K")
            }
            Spacer()
            
            //Downrate
            Button {
                
            } label: {
                ContentActionButtonView(iconName: "arrowtriangle.down", counter: "10K")
            }
            Spacer()
            
            //Comment
            Button {
                self.showCommentView.toggle()
                ContentActionsView.numberOfScreen += 1
            } label: {
                ContentActionButtonView(iconName: "bubble.left", counter: "100M")
            }
            Spacer()
            
            //Detailed
            Button {
                self.showDetailedContentView.toggle()
            } label: {
                ContentActionButtonView(iconName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left", counter: "")
            }
        }
        .padding(.top)
        .sheet(isPresented: $showCommentView) {
            showSecondaryCommentView()
        }
        .sheet(isPresented: $showDetailedContentView) {
            NavigationStack {
                DetailedContentView()
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            Button {
                                showDetailedContentView.toggle()
                            } label: {
                                Text("Back")
                            }
                        }
                    }
            }
        }
    }
}

extension ContentActionsView {
    struct ContentActionButtonView: View {
        var iconName: String
        var counter: String
        var body: some View {
            if iconName == "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left" {
                Image(systemName: iconName)
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            } else {
                HStack {
                    Image(systemName: iconName)
                        .font(.system(size: 20))
                        .frame(width: 20, height: 20)
                    
                    Text(counter)
                }
                .foregroundColor(.black)
            }
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
                            ContentActionsView.numberOfScreen -= 1
                            showCommentView = false
                        } label: {
                            Text("Back")
                        }
                        Text("\(ContentActionsView.numberOfScreen)")
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
