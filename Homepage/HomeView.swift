//
//  ContentView.swift
//  Assessments
//
//  Created by bri on 10/30/23.
//

import SwiftUI

// can create token in django admin w/o login

struct HomeView: View {
    var body: some View {
        VStack{
            RithmLogo()
           
            NavigationView{
                VStack{
                    Text("Hello, Rithm student!")
                        .font(.title)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                        .padding()
                    NavigationLink{
                        NavList()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("See assessments")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 190, height: 50, alignment: .center)
                            .background(Color(hue: 1.0, saturation: 0.805, brightness: 0.926, opacity: 0.642))
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
