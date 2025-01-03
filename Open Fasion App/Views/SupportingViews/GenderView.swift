//
//  GenderView.swift
//  Open Fasion App
//
//  Created by Javid Shaikh on 22/08/23.
//

import SwiftUI

struct GenderView: View {
    var isSelected: Bool = true
    var title: String = "WOMEN"
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(tenorSans(16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.Default : Color.Placehoder.opacity(0.5))
            
            if isSelected {
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 1)
                    
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(width: 5, height: 5)
                        .rotationEffect(Angle(degrees: 45))
    
                }
            }else {
                Divider()
            }
        }
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
