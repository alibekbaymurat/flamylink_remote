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
            //Like
            UprateButtonView()
            Spacer()
            //Unlike
            DownrateButtonView()
            Spacer()
            //Comment
            CommentButtonView(showCommentView: $showCommentView)
            Spacer()
            //Detailed
            DetailedButtonView(showDetailedContentView: $showDetailedContentView)
        }
        .foregroundColor(.black)
        .padding(.top)
        .sheet(isPresented: $showCommentView) {
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
                                Text("Show 1st comment")
                            }
                            
                        }
                    }
            }
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

struct ContentActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentActionsView()
    }
}
