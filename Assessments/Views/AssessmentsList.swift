//
//  AssessmentsList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsList: View {
    @State private var assessments: AssessmentsResponse?
    var body: some View {
        List {
            ForEach(assessments?.results ?? []) { assessment in
                NavigationLink {
                    AssessmentsDetail(assessment: assessment)
                } label: {
                    AssessmentRow(assessment: assessment)
                }
            }
        }
        .navigationTitle("Assessments")
        .task {
            do{
                assessments = try await getAssessments()
            } catch {
                print("unexpected error")
            }
        }
        
    } 
}

struct AssessmentsList_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsList()
    }
}
