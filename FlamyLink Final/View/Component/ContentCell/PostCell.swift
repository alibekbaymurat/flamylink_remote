//
//  PostCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI
import Combine

struct PostCell: View {
    
    @State private var numberOfPage = "1"
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            DynamicLinkTextView(text: "Ответ к посту", wordsWLinks: ["посту"])
                .padding(.horizontal)
            
            Divider()
            
            postCellHeader()
                .padding(.horizontal)
                .padding(.vertical, 8)
            
            Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante. Morbi venenatis est ut nisi rutrum, sed iaculis nibh suscipit. Nam id laoreet neque. In sit amet egestas nibh. Cras vitae sapien orci. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat.")
                .font(.callout)
                .padding(.horizontal)
            
            postPagerView()
                .padding(.horizontal)
            
            Divider()
            
            ContentActionsView()
                .padding(.horizontal)
                .padding(.top, 8)
                .fontWeight(.medium)
        }
        .padding(.vertical)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
        )
    }
}

extension PostCell {
    func postPagerView() -> some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left.circle")
                    .font(.title2)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("1 / 210")
                    .font(.callout)
                    .underline()
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "chevron.right.circle")
                    .font(.title2)
            }
        }
        .foregroundColor(.black)
        .fontWeight(.medium)
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(.systemGray6))
        )
        .padding(.vertical, 8)
    }
    
    private func postCellHeader() -> some View {
        HStack {
            NavigationLink {
                ProfileView()
            } label: {
                Text("Алибек БАЙМУРАТ")
                    .font(.callout)
                    .bold()
                    .lineLimit(1)
                    .underline()
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
            }
            
            Spacer()
            
            Menu {
                Button("Выделить текст") {
                    
                }
                
                Button("Сохранить в кэш") {
                    
                }
                
                Button("Добавить закладку") {
                    
                }
                
                Button("Прочитать позже") {
                    
                }
                
                Button("Перейти к странице") {
                    
                }
            } label: {
                Image(systemName: "wrench.and.screwdriver")
                    .font(.system(size: 18))
            }
            
            Spacer()
            
            PostContextMenuView()
        }
        .fontWeight(.medium)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
