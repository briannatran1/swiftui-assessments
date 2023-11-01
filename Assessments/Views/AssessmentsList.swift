//
//  AssessmentsList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsList: View {
    var body: some View {
        List {
            ForEach(assessmentDetails, id: \.self) { assessment in
                NavigationLink {
                    AssessmentsDetail(assessment: assessment)
                } label: {
                    AssessmentRow(assessment: assessment)
                }
            }
        }
        .navigationTitle("Assessments")
        
    } 
}

struct AssessmentsList_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsList()
    }
}
