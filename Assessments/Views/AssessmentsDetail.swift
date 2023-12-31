//
//  AssessmentsDetail.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsDetail: View {

    // Assessment => our model
    var assessment: Assessment
    
    @State private var assessmentDetail: AssessmentDetail?
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Text(assessmentDetail?.title ?? "placeholder Title")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
//                    .border(.red, width: 20)
                    .background(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                    
                    
                Text(assessmentDetail?.weekGroup ?? "placeholder week group")
                    .fontWeight(.semibold)
                    .padding()
                
                Text(assessmentDetail?.description ?? "placeholder Description")
                    .padding()
                
                HStack{
                    Text("Start date:")
                        .padding(.leading, 15)
                    
                    Text(assessmentDetail?.startAt ?? "placeholder start date")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                HStack{
                    Text("End date:")
                        .padding(.leading, 15)
                    
                    Text(assessmentDetail?.endAt ?? "placeholder start date")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
//                var x = print(assessmentDetail?.assetSet)
//                if ((assessmentDetail?.assetSet[0]) != nil) {
//                    Link("Handout", destination: URL(string: assessmentDetail?!.assetSet[0]) ?? <#default value#>!)
//                        .foregroundColor(.blue)
//                         }
                
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
//        AssessmentsDetail(assessment: Assessment[0])
//    }
//}
