//
//  PostActionsView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ContentActionsView: View {
    @State private var showShareView: Bool = false
    var body: some View {
        HStack {
            //Uprate
            Button {
                
            } label: {
                ContentActionButtonView(imageName: "arrowtriangle.up", count: "3K")
            }
            
            Spacer()
            
            //Downrate
            Button {
                
            } label: {
                ContentActionButtonView(imageName: "arrowtriangle.down", count: "10K")
            }
            
            Spacer()
            
            //Comment
            NavigationLink {
                
            } label: {
                ContentActionButtonView(imageName: "bubble.left", count: "100M")
            }
            
            Spacer()
            
            //Share
            ShareLink(item: URL(string:"https://www.google.com")!) {
                ContentActionButtonView(imageName: "square.and.arrow.up", count: "")
            }
        }
        .foregroundColor(.black)
        .sheet(isPresented: $showShareView) {
            ShareView()
        }
    }
}

//extension ContentActionsView {
//    private func showSecondaryCommentView() -> some View {
//        NavigationStack {
//            CommentView()
//                .toolbar {
//                    ToolbarItemGroup(placement: .navigationBarLeading) {
//                        Button {
//                            ContentActionsView.counterOfScreen -= 1
//                            showCommentView = false
//                        } label: {
//                            Text("Back")
//                        }
//                        Text("\(ContentActionsView.counterOfScreen)")
//                        Button {
//                            // при нажатии нужно чтоб переходил на первый комент
//                        } label: {
//                            Text("Показать первый комментарий")
//                        }
//
//                    }
//                }
//        }
//    }
//}

struct ContentActionButtonView: View {
    var imageName: String
    var count: String
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: imageName)
            if count != "" {
                Text(count)
            }
        }
        .font(.subheadline)
        .frame(width: count != "" ? 85 : 35, height: 30)
        .background(Color(.systemGray6))
        .cornerRadius(20)
    }
}


struct ContentActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentActionsView()
    }
}
