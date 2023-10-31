//
//  AssessmentsList.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

struct AssessmentsList: View {
    
    @State private var assessmentSessions: [AssessmentSessionShort]?
    @State private var assessments = [Assessment]()

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
            ForEach(assessmentSessions, id: \(assessments.id)) { assessment in
                NavigationLink {
                    AssessmentsDetail(assessment: assessment)
                } label: {
                    AssessmentRow(assessment: assessment)
                }
            }
        }
        .navigationTitle("Assessments")
        .task {
            await fetch()
        }
//        .task {
//            do {
//                assessmentSessions = try await ViewModel.fetchData().results
//                print(assessmentSessions)
//            } catch {
//                print("error occured")
//            }
//        }
        
    }
    func fetch() async {
        // create url
        guard let url = URL(string: "http://localhost:8000/api/assessmentsessions/") else {
            print("URL DOES NOT WORK")
            return
        }
        
        //fetch data from that url
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            //decode data
            if let decodedResponse = try? JSONDecoder().decode([Assessment].self, from: data){
                assessments = decodedResponse
            }
        } catch {
            print("unlucky")
        }
    }
}

struct AssessmentsList_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentsList()
    }
}
