//
//  NavRow.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/30/23.
//

import SwiftUI

struct AssessmentsNavRow: View {
    var body: some View {
        HStack{
            Image(systemName: "doc.plaintext")
            Text("Assessments")
            
            Spacer()
        }
    }
}

struct AssessmentsNavRow_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack{
            AssessmentsNavRow()
        }
    }
}
