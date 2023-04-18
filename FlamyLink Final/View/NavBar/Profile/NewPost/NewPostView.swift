//
//  NewPostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct NewPostView: View {
    @State private var showEditorView = false
    var body: some View {
        ZStack {
            if showEditorView {
                PostEditorView(showEditorView: $showEditorView)
            } else {
                NavigationStack {
                    ScrollView {
                        
                        Button {
                            showEditorView.toggle()
                        } label: {
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.black)
                                .frame(height: 60)
                                .overlay {
                                    NewPostTypeView(titleText: "Создать новый пост",
                                                    footnoteText: "")
                                }
                                .padding(.horizontal)
                        }
                        
                        Text("ЧЕРНОВИКИ:")
                            .font(.subheadline)
                            .foregroundColor(Color(.systemGray))
                            .padding(.horizontal)
                            .padding(.top)
                            .frame(width: UIScreen.main.bounds.width,
                                   alignment: .leading)
                        
                        Divider()
                        
                        ForEach(1...10, id: \.self) { _ in
                            Button {
                                showEditorView.toggle()
                            } label: {
                                VStack {
                                    NewPostTypeView(titleText: "    Как выжить в экстремальных условиях",
                                                    footnoteText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et.")
                                    
                                    Divider()
                                }
                            }
                        }
                    }
                    .navigationTitle("Редактор")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct PostEditorView: View {
    @State private var caption = ""
    @Binding var showEditorView: Bool
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
                    showEditorView.toggle()
                } label: {
                    Text("Закрыть")
                }
            }
            .padding()
            TextEditor(text: $caption)
                .padding()
                .autocorrectionDisabled()
        }
    }
}

extension NewPostView {
    struct NewPostTypeView: View {
        var titleText: String
        var footnoteText: String
        var body: some View {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(titleText)
                            .lineLimit(1)
                            .font(.callout)
                            .fontWeight(.bold)
                        if footnoteText != "" {
                            Text(footnoteText)
                                .lineLimit(2)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                        .padding(.trailing, 8)
                }
            }
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
