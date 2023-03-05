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
                            NewPostTypeView(titleText: "Создать новый пост",
                                            footnoteText: "")
                        }
                        
                        Text("ЧЕРНОВИКИ:")
                            .foregroundColor(Color(.systemGray))
                            .padding(.horizontal)
                            .padding(.top)
                            .frame(width: UIScreen.main.bounds.width,
                                   alignment: .leading)
                        
                        ForEach(1...10, id: \.self) { _ in
                            Button {
                                showEditorView.toggle()
                            } label: {
                                NewPostTypeView(titleText: "Как выжить в экстремальных условиях",
                                                footnoteText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante. Morbi venenatis est ut nisi rutrum, sed iaculis nibh suscipit. Nam id laoreet neque. In sit amet egestas nibh. Cras vitae sapien orci. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat.")
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
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black)
                .frame(height: 80)
                .overlay {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(titleText)
                                .lineLimit(1)
                                .font(.title3)
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
                        
                        Image(systemName: "control")
                            .foregroundColor(.black)
                            .rotationEffect(.degrees(90))
                            .padding(.trailing)
                    }
                }
                .padding(.horizontal)
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
