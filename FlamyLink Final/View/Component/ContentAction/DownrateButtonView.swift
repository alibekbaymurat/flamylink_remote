//
//  DownrateButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 21.01.2023.
//

import SwiftUI

struct DownrateButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "arrowtriangle.down")
                    .font(.system(size: 20))
                    .frame(width: 20, height: 20)
                
                Text("10k")
            }
            .frame(width: UIScreen.main.bounds.width / 4,
                   alignment: .leading)
        }
    }
}

struct DownrateButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DownrateButtonView()
    }
}
