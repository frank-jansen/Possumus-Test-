//
//  DrinkDescriptionView.swift
//  possumusTest
//
//  Created by Frank Jansen on 23/11/22.
//

import SwiftUI

struct DrinkDescriptionView: View {
    let cocktail: Drink
    var body: some View {
       
            NavigationView{
                ScrollView {
                    VStack{
                        AsyncImage(url: URL(string: "\(cocktail.strDrinkThumb ?? "")")) { image in
                            image
                                .resizable()
                            
                        } placeholder: {
                            ProgressView()
                        }
                        .scaledToFill()
                        .scaledToFit()
                        Text("\(cocktail.strDrink)")
                            .font(.title)
                        Text(cocktail.strAlcoholic ?? "")
                        
                        Text(cocktail.strGlass ?? "")
                        ScrollView {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.indigo)
                                VStack{
                                    Text("Recipe")
                                        .font(.title)
                                        .padding()
                                    Spacer()
                                    
                                    HStack{
                                        Text(cocktail.strIngredient1 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure1 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient2 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure2 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient3 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure3 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient4 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure4 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient5 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure5 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient6 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure6 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient7 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure7 ?? "")
                                    }
                                    HStack{
                                        Text(cocktail.strIngredient8 ?? "")
                                        Spacer()
                                        Text(cocktail.strMeasure8 ?? "")
                                    }
                                }
                                .padding()
                            }
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.green)
                                VStack{
                                    Text("Instructions")
                                        .font(.title)
                                        .padding()
                                    Spacer()
                                    VStack{
                                        Text("English")
                                        Spacer()
                                        Text(cocktail.strInstructions ?? "")
                                    }
                                    VStack{
                                        Text("Español")
                                        Spacer()
                                        Text(cocktail.strInstructionsES ?? "")
                                    }
                                    VStack{
                                        Text("Deutch")
                                        Spacer()
                                        Text(cocktail.strInstructionsDE ?? "")
                                    }
                                    VStack{
                                        Text("French")
                                        Spacer()
                                        Text(cocktail.strInstructionsFR ?? "")
                                    }
                                    
                                }
                            }
                            .padding()
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                }
            }
    }
}

struct DrinkDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDescriptionView(cocktail: Drink.init(idDrink: "15997", strDrink: "GG", strDrinkAlternate: nil, strTags: nil, strVideo: nil, strCategory: "Ordinary Drink", strIBA: nil, strAlcoholic: "Optional alcohol", strGlass: "Collins Glass", strInstructions: "Pour the Galliano liqueur over ice. Fill the remainder of the glass with ginger ale and thats all there is to it. You now have a your very own GG.", strInstructionsES: nil, strInstructionsDE: "Den Galliano-Likör über Eis gießen. Füllen Sie den Rest des Glases mit Ginger Ale und das ist alles, was dazu gehört. Du hast jetzt ein eigenes GG.", strInstructionsFR: nil, strInstructionsIT: "Den Galliano-Likör über Eis gießen. Füllen Sie den Rest des Glases mit Ginger Ale und das ist alles, was dazu gehört. Du hast jetzt ein eigenes GG.", strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/vyxwut1468875960.jpg", strIngredient1: "Galliano", strIngredient2: "Ginger ale", strIngredient3: "Ice", strIngredient4: nil, strIngredient5: nil, strIngredient6: nil, strIngredient7: nil, strIngredient8: nil, strIngredient9: nil, strIngredient10: nil, strIngredient11: nil, strIngredient12: nil, strIngredient13: nil, strIngredient14: nil, strIngredient15: nil, strMeasure1: "2 1/2 shots", strMeasure2: "1 1/3 cups", strMeasure3: nil, strMeasure4: nil, strMeasure5: nil, strMeasure6: nil, strMeasure7: nil, strMeasure8: nil, strMeasure9: nil, strMeasure10: nil, strMeasure11: nil, strMeasure12: nil, strMeasure13: nil, strMeasure14: nil, strMeasure15: nil, strImageSource: nil, strImageAttribution: nil, strCreativeCommonsConfirmed: "No"))
    }
}
