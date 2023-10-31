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
        VStack{
            Text(assessment.title)
                .font(.title)
            HStack{
                Text(assessment.title)
            }
        }
    }
}

struct AssessmentsDetail_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsDetail(assessment:assessmentSessions[0])
    }
}
