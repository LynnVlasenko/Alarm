//
//  ContentView.swift
//  Alarm
//
//  Created by Алина Власенко on 24.01.2023.
//

import SwiftUI

struct WorldTimeView: View {
    var body: some View {
        VStack {
            HStack {
                EditButton()
                    .foregroundColor(.orange)
                Spacer()
                Text("Час у світі")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                Spacer()
                Text("+")
                    .font(.system(size: 34))
                    .fontWeight(.light)
                    .foregroundColor(.orange)
            }
            .padding(.bottom, -5.0)
            
            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Сьогодніб +1 год")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                    Text("Київ")
                        .font(.system(size: 28))
                        .padding(.top, -10)
                }
                Spacer()
                Text("20:57")
                    .font(.system(size: 60))
                    .fontWeight(.light)
                    .multilineTextAlignment(.trailing)
            }
            .padding(.vertical, 5)

            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
                
            HStack {
                VStack(alignment: .leading) {
                    Text("Сьогодніб -1 год")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                    Text("Лісабон")
                        .font(.system(size: 28))
                        .padding(.top, -10)
                }
                Spacer()
                Text("18:57")
                    .font(.system(size: 60))
                    .fontWeight(.light)
                    .multilineTextAlignment(.trailing)
            }
            .padding(.vertical, 5)
            
            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
            
            Spacer()
        }
        .padding(.horizontal, 10.0)
        .background(Color.black)
        .foregroundColor(.white)
    }
    
}


struct WorldTimeView_Previews: PreviewProvider {
    static var previews: some View {
        WorldTimeView()
    }
}
