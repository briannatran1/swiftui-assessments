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
