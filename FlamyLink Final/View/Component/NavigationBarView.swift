//
//  NavigationBarView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 13.02.2023.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
            }
            
            Spacer()
            
            Text("Navigation Bar")
            
            Spacer()
        }
        .padding()
        .background(
            Color(.systemGray6).ignoresSafeArea(edges: .top)
        )
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            NavigationBarView()
            Spacer()
        }
    }
}
