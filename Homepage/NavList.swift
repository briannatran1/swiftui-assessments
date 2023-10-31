//
//  NavList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct NavList: View {
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink{
                    AssessmentsList()
                } label: {
                    NavRow()
                }
            }
            .navigationTitle("Curriculum")
        }
    }
}

struct NavList_Previews: PreviewProvider {
    static var previews: some View {
        NavList()
    }
}
