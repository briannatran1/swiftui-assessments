//
//  rithmLogo.swift
//  Assessments
//
//  Created by Evan Ishibashi on 10/31/23.
//

import SwiftUI

struct RithmLogo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width:145, height:75)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
       RithmLogo()
            
    }
}
