//
//  PostActionsView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ContentActionsView: View {
    @State private var showCommentView: Bool = false
    static var numberOfScreen: Int = 0
    var body: some View {
        HStack {
            //Like
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "arrowtriangle.up")
                        .font(.system(size: 20))
                        .frame(width: 20, height: 20)
                    
                    Text("3k")
                }
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)
            })
            
            Spacer()
            
            //Unlike
            Button(action: {
                
            }, label: {
                HStack {
                    Image(systemName: "arrowtriangle.down")
                        .font(.system(size: 20))
                        .frame(width: 20, height: 20)
                    
                    Text("10k")
                }
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)
            })
            
            Spacer()
            
            //Comment
            Button(action: {
                showCommentView.toggle()
                ContentActionsView.numberOfScreen += 1
            }, label: {
                HStack {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 18))
                        .frame(width: 20, height: 20)
                    
                    Text("100M")
                }
                .frame(width: UIScreen.main.bounds.width / 4, alignment: .leading)
            })
            
            Spacer()
            
            //Wide
            Button(action: {
                
            }, label: {
                Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
                    .font(.system(size: 16))
                    .frame(width: 20, height: 20)
            })
        }
        .foregroundColor(.black)
        .padding(.top)
        .sheet(isPresented: $showCommentView) {
            NavigationStack {
                VStack {
                    CommentView()
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                            ContentActionsView.numberOfScreen -= 1
                            showCommentView = false
                        } label: {
                            Text("Back")
                        }
                        Text("\(ContentActionsView.numberOfScreen)")
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
