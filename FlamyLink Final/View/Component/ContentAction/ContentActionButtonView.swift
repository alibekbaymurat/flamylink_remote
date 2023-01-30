//
//  ContentActionButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 26.01.2023.
//

import SwiftUI

struct ContentActionButtonView: View {
    var iconName: String
    var counter: String
    var body: some View {
        if iconName == "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left" {
            Image(systemName: iconName)
                .font(.system(size: 16))
                .foregroundColor(.black)
        } else {
            HStack {
                Image(systemName: iconName)
                    .font(.system(size: 20))
                    .frame(width: 20, height: 20)
                
                Text(counter)
            }
            .foregroundColor(.black)
        }
    }
}

struct ContentActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentActionButtonView(iconName: "arrowtriangle.up", counter: "3K")
    }
}
