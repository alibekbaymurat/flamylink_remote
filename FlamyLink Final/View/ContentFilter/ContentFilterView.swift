//
//  ContentFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

struct ContentFilterView: View {
    @Environment(\.dismiss) var dissmis
    @State private var selectedCountry = "Any all"
    @State private var selectedRating: RatingFilter = .anyAll
    @State private var selectedDateOfAddition: DateOfAdditionFilter = .anyAll
    let countries = ["Any all", "Kazakhstan", "Uzbekistan", "Ukraine", "Belgium", "Argentina", "Qatar", "France", "USA", "Germany", "Australia", "Egypt", "Croatia", "Indonesia", "China", "Japan", "North Korea", "South Korea", "Russia", "Armenia", "Kyrgyzstan", "Poland", "England", "New Zealand", "Brazil", "Austria", "Monaco", "India", "Pakistan", "Afganistan", "Spain", "Portugal"]
    
    var body: some View {
        Form {
            Section("Sort by") {
                Picker("Rating", selection: $selectedRating) {
                    ForEach(RatingFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
                Picker("Date of addition", selection: $selectedDateOfAddition) {
                    ForEach(DateOfAdditionFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
            }
            Section("Filter") {
                Picker("Country", selection: $selectedCountry) {
                    ForEach(countries, id: \.self) {
                        Text($0)
                    }
                }
            }
            Button("Apply") {
                // нужно передать значения фильтра к той вью откуда открылся ContentFilterView
                dissmis()
            }
            Button("Cancel") {
                dissmis()
            }
        }
    }
}

struct ContentFilterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentFilterView()
    }
}

enum RatingFilter: Int, CaseIterable {
    case anyAll
    case mostLiked
    case mostUnderrated
    
    var type: String {
        switch self {
        case .mostLiked: return "Most liked"
        case .mostUnderrated: return "Most underrated"
        case .anyAll: return "Any all"
        }
    }
}

enum DateOfAdditionFilter: Int, CaseIterable {
    case anyAll
    case olderContent
    case newerContent
    
    var type: String {
        switch self {
        case .olderContent: return "Older content"
        case .newerContent: return "Newer content"
        case .anyAll: return "Any all"
        }
    }
}
