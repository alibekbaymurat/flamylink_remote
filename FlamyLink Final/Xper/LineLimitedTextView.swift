//
//  LineLimitedTextView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 02.03.2023.
//

import SwiftUI

struct LineLimitedTextView: View {

    /* Indicates whether the user want to see all the text or not. */
    @State private var expanded: Bool = false

    /* Indicates whether the text has been truncated in its display. */
    @State private var truncated: Bool = false

    private var text: String

    var lineLimit = 5

    init(_ text: String) {
        self.text = text
    }

    var body: some View {
        VStack(alignment: .leading) {
            // Render the real text (which might or might not be limited)
            Text(text)
                .lineLimit(expanded ? nil : lineLimit)
                .background(

                    // Render the limited text and measure its size
                    Text(text).lineLimit(lineLimit)
                        .background(GeometryReader { displayedGeometry in

                            // Create a ZStack with unbounded height to allow the inner Text as much
                            // height as it likes, but no extra width.
                            ZStack {

                                // Render the text without restrictions and measure its size
                                Text(self.text)
                                    .background(GeometryReader { fullGeometry in

                                        // And compare the two
                                        Color.clear.onAppear {
                                            self.truncated = fullGeometry.size.height > displayedGeometry.size.height
                                        }
                                    })
                            }
                            .frame(height: .greatestFiniteMagnitude)
                        })
                        .hidden() // Hide the background
            )

            if truncated {
                ReadMoreButtonView()
            }
        }
    }
}

struct LineLimitView_Previews: PreviewProvider {
    static var previews: some View {
        LineLimitedTextView("")
    }
}
