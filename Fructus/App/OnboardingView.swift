//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ashish Sharma on 12/30/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTY
    
   
    
    //MARK: - BODY
    
    
    
    var body: some View {
        TabView {
            ForEach(fruitsData){ item in
                FruitCardView(fruit: item)
//                Text("Cards")
                
            }//:LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
