//
//  DetailedContentView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 19.01.2023.
//

import SwiftUI

struct DetailedContentView: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.systemGray2))
            }
            
            Text("Detailed view")
        }
    }
}

struct DetailedContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContentView()
    }
}
