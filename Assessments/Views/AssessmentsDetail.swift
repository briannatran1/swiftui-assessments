//
//  AssessmentsDetail.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsDetail: View {
    var assessment: AssessmentSession
    
    var body: some View {
        VStack (alignment: .leading){
            Text(assessment.title)
                .font(.title)
                .padding()
            Text(assessment.description)
            
        }
        .padding()
    }
}

struct AssessmentsDetail_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsDetail(assessment:assessmentSessions[0])
    }
}
