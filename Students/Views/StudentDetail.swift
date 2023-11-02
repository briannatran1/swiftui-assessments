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
            HStack {
                AsyncImage(url: URL(string: studentDetail?.user.photo ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                } placeholder: {
                    Circle()
                        .foregroundColor(.secondary)
                }
                    .frame(width: 120, height: 120)
                
                VStack (alignment: .leading){
                    Text("\(studentDetail?.user.firstName ?? "") \(studentDetail?.user.lastName ?? "")")
                        .font(.title)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                        .padding()
                    
                    Text("(\(studentDetail?.user.pronoun ?? ""))")
                        .foregroundColor(.gray)
                        .padding(1)
           
                    Text(studentDetail?.user.bio ?? "I don't have a bio :(")
                    
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
