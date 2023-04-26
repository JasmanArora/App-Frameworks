//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Jasman Arora on 4/25/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
   
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
           
    
            
           
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                // AFButton(title: "Learn More")
                 Label("Learn More", systemImage: "book.fill")
             }
             .buttonStyle(.bordered)
             .controlSize(.large)
            // .foregroundColor(.yellow)
             .buttonBorderShape(.capsule)
             .tint(.blue)
        }.sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
