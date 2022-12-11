//
//  ContentView.swift
//  possumusTest
//
//  Created by Frank Jansen on 22/11/22.
//

import SwiftUI
struct ItemInList: View {
    let coctail: Drink
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: coctail.strDrinkThumb ?? "")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            Spacer()
            VStack{
                Text((coctail.strDrink))
                Text((coctail.strAlcoholic ?? ""))
            }
            .padding()
            .frame(width: 140, height: 60)
        }
        .padding()
    }
}
struct ContentView: View {
    @StateObject var drinksViewModel = DrinksViewModel()
    @State var searchText = ""
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(drinksViewModel.drinks, id: \.idDrink) { coctail in
                        NavigationLink(destination: DrinkDescriptionView(cocktail: coctail)) {
                            ItemInList(coctail: coctail)
                        }
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Menu")
                
            }
        }
        .onAppear(perform: runSearch)
        .onChange(of: searchText) { _ in runSearch()}
    }
    
    func runSearch() {
        Task {
            await drinksViewModel.loadData(search: searchText)
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
