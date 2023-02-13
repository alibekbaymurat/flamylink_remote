//
//  ContentFilterView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 11.12.2022.
//

import SwiftUI

struct ContentFilterView: View {
    @Environment(\.dismiss) var dissmis
    @State private var selectedCountry = "Все страны"
    @State private var selectedRating: RatingFilter = .anyAll
    @State private var selectedDateOfAddition: DateOfAdditionFilter = .anyAll
    let countries = ["Все страны", "Казахстан", "Австрия", "Англия", "Австралия", "Аргентина", "Армения", "Афганистан", "Бельгия", "Бразилия", "Германия", "Египет", "Индия", "Индонезия", "Испания", "Катар", "Китай", "Кыргызстан", "Новая Зеландия", "Пакистан", "Польша", "Россия", "Северная Корея", "США", "Узбекистан", "Франция", "Хорватия", "Южная Корея", "Япония"]
    
    var body: some View {
        Form {
            Section("Сортировать по: ") {
                Picker("Оценка", selection: $selectedRating) {
                    ForEach(RatingFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
                Picker("Дата публикации", selection: $selectedDateOfAddition) {
                    ForEach(DateOfAdditionFilter.allCases, id: \.self) { item in
                        Text(item.type)
                    }
                }
            }
            Section("Фильтр") {
                Picker("Страна", selection: $selectedCountry) {
                    ForEach(countries, id: \.self) {
                        Text($0)
                    }
                }
            }
            Button("Применить") {
                // нужно передать значения фильтра к той вью откуда открылся ContentFilterView
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
