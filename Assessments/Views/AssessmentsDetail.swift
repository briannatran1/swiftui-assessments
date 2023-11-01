//
//  AssessmentsDetail.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsDetail: View {

    var assessment: Assessment
    
    @State private var assessmentDetail: AssessmentDetail?
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Text(assessmentDetail?.title ?? "placeholder Title")
                    .font(.title)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                    .padding()
                Text(assessmentDetail?.description ?? "placeholder Description")
            }
            .padding()
            .task {
                do{
                    assessmentDetail = try await getAssessmentDetails(id: assessment.id)
                } catch {
                    print(error)
                }
            }
        }
        
    }
        
}

//struct AssessmentsDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        AssessmentsDetail(assessment: assessmentDetails[0])
//    }
//}
