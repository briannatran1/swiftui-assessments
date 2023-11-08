//
//  StudentRow.swift
//  Assessments
//
//  Created by Evan Ishibashi on 11/1/23.
//

import SwiftUI

struct StudentRow: View {
    var student: Student
    
    var body: some View {
        HStack{
            Image(systemName: "person.fill")
            Text(student.fullName)
            Spacer()
        }
    }
}

//struct StudentRow_Previews: PreviewProvider {
//    static var previews: some View {
//        StudentRow()
//    }
//}
