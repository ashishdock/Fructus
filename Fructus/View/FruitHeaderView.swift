//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Ashish Sharma on 12/30/2022.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(Animation.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}


//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
    }
}
