//
//  PostCell.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct PostCell: View {
    @State private var showDetailedContentView = false
    
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
                            .foregroundColor(.black)
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


struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
