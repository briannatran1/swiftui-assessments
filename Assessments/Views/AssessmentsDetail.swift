//
//  AssessmentsDetail.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsDetail: View {
    var assessment: Assessment
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Text(assessment.title)
                    .font(.title)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                    .padding()
//                Text(assessment.description)
            }
            .padding()
        }
    }
        
}

//struct AssessmentsDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        AssessmentsDetail(assessment: assessment[0])
//    }
//}
