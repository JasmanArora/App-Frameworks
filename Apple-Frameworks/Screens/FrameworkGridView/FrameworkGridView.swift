//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Jasman Arora on 4/25/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
   
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                       
                           
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
           
        }
        
      
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}



