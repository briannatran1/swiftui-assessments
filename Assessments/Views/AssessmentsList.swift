//
//  AssessmentsList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsList: View {
    
    @State private var assessmentSessions: [AssessmentSessionShort]?

    var body: some View {
//        List(assessmentSessions) { assessment in
////            VStack(alignment: .leading) {
//            NavigationLink {
//                AssessmentsDetail(assessment:assessment)
//            } label: {
//                AssessmentRow(assessment: assessment)
//            }
//        }
        List {
            ForEach(assessmentSessions) { assessment in
                NavigationLink {
                    AssessmentsDetail(assessment: assessment)
                } label: {
                    AssessmentRow(assessment: assessment)
                }
            }
        }
        .navigationTitle("Assessments")
        .task {
            do {
                assessmentSessions = try await ViewModel.fetchData().results
                print(assessmentSessions)
            } catch {
                print("error occured")
            }
        }
        
        
    } 
}

struct AssessmentsList_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsList()
    }
}
