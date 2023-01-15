//
//  ContentFilterButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContentFilterButtonView: View {
    @State private var showSheet: Bool = false
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .scaledToFit()
                .font(.system(size: 30))
                .foregroundColor(.orange)
        }
        .sheet(isPresented: $showSheet) {
            ContentFilterView()
        }

    }
}

struct ContentFilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentFilterButtonView()
    }
}
