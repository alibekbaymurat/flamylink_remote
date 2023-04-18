//
//  FontView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 24.02.2023.
//

import SwiftUI

struct FontView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    Text("Abc largeTitle")
                        .font(.largeTitle)
                    Text("Abc title")
                        .font(.title)
                    Text("Abc title2")
                        .font(.title2)
                    Text("Abc title3")
                        .font(.title3)
                    HStack {
                        Text("Abc headline")
                            .font(.headline)
                        Text("Abc body bold")
                            .font(.body)
                        Text("Abc")
                            .font(.system(size: 17
                                         ))
                    }
                    Text("Abc callout")
                        .font(.callout)
                }
                VStack(alignment: .leading) {
                    Text("Abc subheadline")
                        .font(.subheadline)
                    Text("Abc footnote")
                        .font(.footnote)
                    Text("Abc caption")
                        .font(.caption)
                    Text("Abc caption2")
                        .font(.caption2)
                }
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Abc monospaced")
                    .font(.system(size: 24, design: .monospaced))
                
                Text("Abc rounded")
                    .font(.system(size: 24, design: .rounded))
                
                HStack {
                    Text("Abc default")
                        .font(.system(size: 24, design: .default))
                    
                    Text("Abc none")
                        .font(.system(size: 24, design: .none))
                }
                
                Text("Abc serif")
                    .font(.system(size: 24, design: .serif))
                
                Text("Abc italic")
                    .font(.system(size: 24))
                    .italic()
            }
            
            Divider()
            
            VStack {
                Text("Abc black")
                    .fontWeight(.black)
                
                Text("Abc heavy")
                    .fontWeight(.heavy)
                
                Text("Abc bold")
                    .fontWeight(.bold)
                
                Text("Abc semibold")
                    .fontWeight(.semibold)
                
                Text("Abc medium")
                    .fontWeight(.medium)
                
                HStack {
                    Text("Abc regular")
                        .fontWeight(.regular)
                    
                    Text("Abc none")
                        .fontWeight(.none)
                }
                
                Text("Abc light")
                    .fontWeight(.light)
                
                Text("Abc thin")
                    .fontWeight(.thin)
                
                Text("Abc ultraLight")
                    .fontWeight(.ultraLight)
            }
        }
    }
}

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
