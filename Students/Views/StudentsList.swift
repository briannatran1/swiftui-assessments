//
//  StudentsList.swift
//  Assessments
//
//  Created by Evan Ishibashi on 11/1/23.
//

import SwiftUI

struct StudentsList: View {
    @State private var students: StudentsResponse?
    var body: some View {
        List {
            ForEach(students?.results ?? [], id: \.fullName) { student in
                NavigationLink {
                    StudentDetail(student: student)
                } label: {
                    StudentRow(student: student)
                }
            }
        }
        .navigationTitle("Students")
        .task {
            do{
                students = try await getStudents()
            } catch {
                print(error)
            }
        }
    }
}

struct StudentsList_Previews: PreviewProvider {
    static var previews: some View {
        StudentsList()
    }
}
