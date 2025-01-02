//
//  CategoryTapView.swift
//  Open Fasion App
//
//  Created by Habib Durodola on 1/2/25.
//

import SwiftUI

struct CategoryTapView: View {
    var categories: [String]
    @State private var selectedCategory: Int = 0
    var action: (String) -> ()
    
    var body: some View {
/*
 VStack(alignment: .center) {
     GeometryReader { geometry in
         ScrollView(.horizontal) {
             VStack {
                 HStack(spacing: 10) {
                     ForEach(0..<categories.count, id: \.self) { i in
                         CategoryItem(isSelected: i == selectedCategory, title: categories[i])
                             .onTapGesture {
                                 selectedCategory = i
                                 action(categories[i])
                             }
                     }
                 }
             }
             .frame(width: geometry.size.width)
         }.scrollIndicators(.never)
     }
 }
 .frame(maxWidth: .infinity)
 */

        
        
        
         ZStack {
             Color.black.edgesIgnoringSafeArea(.all)
             ScrollView(.horizontal) {
                 VStack(alignment: .center) {
                     HStack(spacing: 10) {
                        // Spacer()
                         ForEach(0..<categories.count, id: \.self) { i in
                             CategoryItem(isSelected: i == selectedCategory, title: categories[i])
                                 .onTapGesture {
                                     selectedCategory = i
                                     action(categories[i])
                                 }
                         }
                       //  Spacer()
                     }.background(.yellow)
                  
                     Spacer()
                 }
                 .frame(width: 400)
             }.scrollIndicators(.never)
         }
         

    }
}

struct CategoryItem: View {
    var isSelected: Bool = false
    var title: String = "All"
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("Tenor Sans", size: 23))
                .kerning(1)
                .multilineTextAlignment(.center)
                .foregroundColor( isSelected ? .red : Color.gray.opacity(0.9))
                .bold(isSelected)
            if isSelected {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

struct CategoryTapView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTapView(categories: ["Fire", "No", "Get", "Enerny", "Fire"]) { selected in
            print("Selected Category : \(selected)")
        }
    }
}

