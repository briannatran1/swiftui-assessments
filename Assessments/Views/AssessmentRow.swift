//
//  AssessmentRow.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentRow: View {
    var assessment: Assessment
    
    var body: some View {
        HStack{
            Image(systemName: "doc.plaintext")
            Text(assessment.title)
            
            Spacer()
        }
    }
}

struct AssessmentRow_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentRow(assessment: assessmentSessions.results[0])
    }
}
