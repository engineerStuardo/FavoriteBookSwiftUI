//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Italo Stuardo on 26/4/23.
//

import Foundation

struct FavoriteModel: Identifiable {
    var id = UUID()
    var title: String
    var elements: [FavoriteElement]
}

struct FavoriteElement: Identifiable {
    var id = UUID()
    var name: String
    var imagename: String
    var description: String
}

var metallica = FavoriteElement(name: "Metallica", imagename: "metallica", description: "No 1 Music Band")
var megadeth = FavoriteElement(name: "Megadeth", imagename: "megadeth", description: "No 2 Music Band")
var ironmaiden = FavoriteElement(name: "Iron Maiden", imagename: "ironmaiden", description: "No 3 Music Band")
var musicModel = FavoriteModel(title: "Favorite band", elements: [metallica, megadeth, ironmaiden])

var pulpFiction = FavoriteElement(name: "Pulp Fiction", imagename: "pulpfiction", description: "No 1 Movie")
var thedarkknight = FavoriteElement(name: "The Dark Knight", imagename: "thedarkknight", description: "No 2 Movie")
var killbill = FavoriteElement(name: "Kill Bill", imagename: "killbill", description: "No 3 Movie")
var movieModel = FavoriteModel(title: "Favorite band", elements: [pulpFiction, thedarkknight, killbill])

let myFavorites = [musicModel, movieModel]
