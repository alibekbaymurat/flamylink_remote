//
//  UprateButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 21.01.2023.
//

import SwiftUI

struct UprateButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "arrowtriangle.up")
                    .font(.system(size: 20))
                    .frame(width: 20, height: 20)
                
                Text("3k")
            }
            .frame(width: UIScreen.main.bounds.width / 4,
                   alignment: .leading)
        }
    }
}

struct UprateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UprateButtonView()
    }
}
