//
//  StudentDetail.swift
//  Assessments
//
//  Created by Evan Ishibashi on 11/1/23.
//

import SwiftUI

struct StudentDetail: View {
    var student: Student
    
    @State private var studentDetail: StudentDetails?
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                HStack{
                    Text(studentDetail?.user.firstName ?? "First")
                        .font(.title)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                        .padding()
                    
                    Text(studentDetail?.user.firstName ?? "Last")
                        .font(.title)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                        .padding()
                }
                
            }
            .padding()
            .task {
                do{
                    studentDetail = try await getStudentDetails(url: student.apiUrl)
                } catch {
                    print(error)
                }
            }
        }
    }
}

//struct StudentDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        StudentDetail(Student)
//    }
//}
