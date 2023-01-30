//
//  ProfilePostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileCell: View {
    @Binding var showDivider: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Alibek BAIMURAT")
                    .font(.system(size: 18, weight: .bold))
                    .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
                    .lineLimit(1)
                
                Button(action: {
                    
                }, label: {
                    Text("Subscribe")
                        .font(.system(size: 18))
                        .frame(width: 100)
                        .background(Color.orange)
                        .foregroundColor(.white)
                })
                .cornerRadius(10)
                
                Spacer()
                
                ContextMenuView()
                
            }
            
            HStack {
                Text("@alibek_baimurat")
                    .lineLimit(1)
                    .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
                    .foregroundColor(.gray)
                
                Text("10k")
                    .font(.system(.body, weight: .bold))
                Text("subscribers")
            }
            .padding(.bottom)
            
            Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et. Sed enim justo, feugiat ut arcu a, malesuada tincidunt ante. Morbi venenatis est ut nisi rutrum, sed iaculis nibh suscipit. Nam id laoreet neque. In sit amet egestas nibh. Cras vitae sapien orci. Vestibulum faucibus nec mi nec facilisis. Suspendisse malesuada nisi eget mauris eleifend commodo. Donec laoreet dolor non sollicitudin dignissim. Donec fringilla condimentum consequat.")
                .font(.body)
                .lineLimit(5)
            
            
            ContentActionsView()
        }
        .padding()
        
        if showDivider {
            Divider()
        }
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell(showDivider: .constant(false))
    }
}
