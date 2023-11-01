//
//  NavList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct NavList: View {
    var curric = ["assessmentsessions", "students"]
    var body: some View {
        NavigationView{
            List{
                NavigationLink{
                    AssessmentsList()
                } label: {
                    AssessmentsNavRow()
                }
                NavigationLink{
                    StudentsList()
                } label: {
                    StudentsNavRow()
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
