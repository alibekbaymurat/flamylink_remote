//
//  NewPostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct NewPostView: View {
    @State private var caption = ""
    @Binding var showNewPostView: Bool
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Text("Выложить")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color("customOrange"))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                
                Spacer()
                
                Button {
                    showNewPostView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(.systemGray2))
                }
            }
            .padding()
            TextEditor(text: $caption)
                .padding()
                .autocorrectionDisabled()
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView(showNewPostView: .constant(false))
    }
}
