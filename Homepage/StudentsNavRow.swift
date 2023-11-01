//
//  StudentsRow.swift
//  Assessments
//
//  Created by Evan Ishibashi on 11/1/23.
//

import SwiftUI

struct StudentsNavRow: View {
    var body: some View {
        HStack{
            Image(systemName: "person")
            Text("Students")
            
            Spacer()
        }
    }
}

struct StudentsNavRow_Previews: PreviewProvider {
    static var previews: some View {
        StudentsNavRow()
    }
}
