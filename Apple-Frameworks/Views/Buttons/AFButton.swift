//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Jasman Arora on 4/25/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More")
    }
}
