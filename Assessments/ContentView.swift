//
//  ContentView.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HomeView()
        List(data, id: \.id) { assessment in
            VStack(alignment: .leading) {
                Text(assessment.title)
            }
        }
        .onAppear {
            fetchData()
        }
    }
    
    func fetchData(){
        guard let url = URL(string: "http://localhost:8000/api/assessmentsessions/")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
