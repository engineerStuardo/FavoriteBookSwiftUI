//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Italo Stuardo on 26/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink {
                                DetailsView(selectedElement: element)
                            } label: {
                                Text(element.name)
                            }
                        }
                    }
                }
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
