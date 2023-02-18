//
//  SearchBar.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    var body: some View {
        TextField("Что ищете?", text: $text)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .foregroundColor(.black)
            .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
