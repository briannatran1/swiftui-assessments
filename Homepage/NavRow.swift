//
//  NavRow.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/30/23.
//

import SwiftUI

struct NavRow: View {
    var body: some View {
        HStack{
            Image(systemName: "doc.plaintext")
            Text("Assessments")
            
            Spacer()
        }
    }
}

struct NavRow_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack{
            NavRow()
        }
    }
}
