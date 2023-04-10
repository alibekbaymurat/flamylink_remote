//
//  ContentFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

class ContentFilterViewStateSaver: ObservableObject {
    @Published var selectedCountry: CountryFilter = .AllCountries
    @Published var selectedRating: RatingFilter = .anyAll
    @Published var selectedDateOfAddition: DateOfAdditionFilter = .anyAll
}

struct ContentFilterView: View {
    @StateObject var contentFilterState = ContentFilterViewStateSaver()
    @Environment(\.dismiss) var dissmis
    @State private var selectedCountry: CountryFilter = .AllCountries
    @State private var selectedRating: RatingFilter = .anyAll
    @State private var selectedDateOfAddition: DateOfAdditionFilter = .anyAll
    
    var body: some View {
        Form {
            Section("Сортировать по: ") {
                Picker("Оценка", selection: $contentFilterState.selectedRating) {
                    ForEach(RatingFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
                Picker("Дата публикации", selection: $contentFilterState.selectedDateOfAddition) {
                    ForEach(DateOfAdditionFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
            }
            Section("Фильтр") {
                Picker("Страна", selection: $contentFilterState.selectedCountry) {
                    ForEach(CountryFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
            }
            Button("Применить") {
                // нужно передать значения фильтра к той вью откуда открылся ContentFilterView
//                contentFilterState.selectedRating = selectedRating
//                contentFilterState.selectedDateOfAddition = selectedDateOfAddition
//                contentFilterState.selectedCountry = selectedCountry
                dissmis()
            }
            Button("Отменить") {
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
        case .anyAll: return "Любые"
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
        case .anyAll: return "Любые"
        }
    }
}

enum CountryFilter: Int, CaseIterable {
    case AllCountries
    case Kazakhstan
    case Russia
    case Ukraine
    case Uzbekistan
    case Belarus
    case Tadjikistan
    case Georgia
    case Azerbaijan
    case Lithuania
    case Moldova
    case Latvia
    case Kyrgyzstan
    case Armenia
    case Turkmenistan
    case Estonia
    
    var type: String {
        switch self {
        case .AllCountries:
            return "Все страны"
        case .Kazakhstan:
            return "Казахстан"
        case .Russia:
            return "Россия"
        case .Ukraine:
            return "Украина"
        case .Uzbekistan:
            return "Узбекистан"
        case .Belarus:
            return "Беларусь"
        case .Tadjikistan:
            return "Таджикистан"
        case .Georgia:
            return "Грузия"
        case .Azerbaijan:
            return "Азербайджан"
        case .Lithuania:
            return "Литва"
        case .Moldova:
            return "Молдовия"
        case .Latvia:
            return "Латвия"
        case .Kyrgyzstan:
            return "Киргизстан"
        case .Armenia:
            return "Армения"
        case .Turkmenistan:
            return "Туркменистан"
        case .Estonia:
            return "Эстония"
        }
    }
}
