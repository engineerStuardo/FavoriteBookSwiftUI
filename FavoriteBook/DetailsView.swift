//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Italo Stuardo on 27/4/23.
//

import SwiftUI

struct DetailsView: View {
    let selectedElement: FavoriteElement
    
    var body: some View {
        VStack() {
            Image(selectedElement.imagename)
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: 200)
                .aspectRatio(contentMode: .fit)
            Text(selectedElement.name)
                .font(.title)
                .bold()
            Text(selectedElement.description)
                .font(.subheadline)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(selectedElement: thedarkknight)
    }
}
