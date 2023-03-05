//
//  CommentCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 01.03.2023.
//

import SwiftUI

struct CommentCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Text("Алибек БАЙМУРАТ")
                            .font(.body)
                            .bold()
                            .lineLimit(1)
                            .underline()
                    }
                    
                    Spacer()
                    
                    ContextMenuView()
                }
                .padding(.bottom)
                
                LineLimitedTextView("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante. Morbi venenatis est ut nisi rutrum, sed iaculis nibh suscipit. Nam id laoreet neque. In sit amet egestas nibh. Cras vitae sapien orci. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat.")
                
                ContentActionsView()
            }
            .padding()
            
            Divider()
        }
    }
}

struct CommentCell_Previews: PreviewProvider {
    static var previews: some View {
        CommentCell()
    }
}
