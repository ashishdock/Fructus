//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ashish Sharma on 12/30/2022.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: - BODY
    
    
//        print("isOnboarding value is \(String(describing: isOnboarding))")
    
    var body: some View {
        Button(action: {
            if isOnboarding == true {
                isOnboarding = false
                print("Exit the onboarding")
                print("isOnboarding value after pressing button is \(String(describing: isOnboarding))")
            } else {
                isOnboarding = true
                print("Not changing isOnboarding value because it is \(String(describing: isOnboarding))")
            }
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        } //: BUTTON
        .accentColor(.white)
    }
}


//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
