//
//  ContentView.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var viewModel = ViewModel()
    
    var body: some View {
//      HomeView()
        NavigationView {
//            List {
//                ForEach(viewModel.assessments, id: \.self) { assessment in
//                    HStack{
//                        Text(assessment.title)
//                            .bold()
//                    }
//                    .padding(3)
//                }
//            }
            List{
                ForEach(assessments, id: \.self) { assessment in
                    HStack{
                        Text(assessment.title)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Assessments")
//            .onAppear{
//                viewModel.fetchData()
//            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
