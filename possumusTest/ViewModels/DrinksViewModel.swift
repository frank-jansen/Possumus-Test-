//
//  DrinksViewModel.swift
//  possumusTest
//
//  Created by Frank Jansen on 22/11/22.
//

import Foundation

class DrinksViewModel: ObservableObject {
    @Published var drinks = [Drink]()

    func loadData(search: String) async {
        guard let url = URL(string:"https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(search)") else {
            print("Invalid Url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(JsonData.self, from: data)
            await MainActor.run {
                drinks = decodedData.drinks
            }
        } catch {
            print("Invalid data \(error)")
        }
    }
}
