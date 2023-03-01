//
//  ContentFilterButtonView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 10.12.2022.
//

import SwiftUI

struct ContentFilterButtonView: View {
    @StateObject var contentFilterState = ContentFilterViewStateSaver()
    @State private var showSheet: Bool = false
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
                .font(.title)
                .foregroundColor(.black)
        }
        .sheet(isPresented: $showSheet) {
            ContentFilterView(contentFilterState: contentFilterState)
        }

    }
}

struct ContentFilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentFilterButtonView()
    }
}
