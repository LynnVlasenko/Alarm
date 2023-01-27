//
//  Alarm.swift
//  Alarm
//
//  Created by Алина Власенко on 24.01.2023.
//

import SwiftUI

struct Alarm: View {
    @State private var onAlafm1 = false
    @State private var onAlafm2 = false
    @State private var onAlafm3 = true
    @State private var onAlafm4 = false
    
    var body: some View {
        VStack {
            HStack {
                EditButton()
                    .foregroundColor(.orange)
                Spacer()
                Text("+")
                    .font(.system(size: 34))
                    .fontWeight(.light)
                    .foregroundColor(.orange)
            }
            .padding(.bottom, 1.0)
            HStack{
                Text("Будильник")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.bottom, 15.0)
            HStack{
                Image("bed")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 14.0, height: 14.0)
                Text("Сон | Підйом")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
            }
            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
            HStack {
                VStack(alignment: .leading) {
                    Text("Немає будильників")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Button("Налаштувати") {
                        print("Touch")
                    }
                    .textCase(.uppercase)
                    .foregroundColor(.orange)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .padding(.vertical, 5.0)
                    .padding(.horizontal, 10.0)
                    .background(CustomColor.darkGray)
                    .cornerRadius(20)
                }
                Spacer()
            }
            .padding(.vertical, 5)
            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
            //.edgesIgnoringSafeArea(.horizontal)
            
            HStack(alignment: .bottom) {
                Text("Інше")
                    .padding(.top, 30)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
            }
            
            Rectangle()
                .foregroundColor(CustomColor.darkGray)
                .frame(height: 1)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("07:00")
                            .font(.system(size: 60))
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.gray)
                            .padding(.top, -5)
                        Text("Сигнал")
                            .foregroundColor(.gray)
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Toggle("", isOn: $onAlafm1)
                        .padding(.trailing, 20.0)
                        .tint(.green)
                    if onAlafm1{
                        //Хотілаб щоб текст з часом змінювався на білий, але не змогла реалізувати.
                        Text("")
                    }
                }
                .padding(.vertical, 5)
                Rectangle()
                    .foregroundColor(CustomColor.darkGray)
                    .frame(height: 1)
                HStack {
                    VStack(alignment: .leading) {
                        Text("05:30")
                            .font(.system(size: 60))
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.gray)
                            .padding(.top, -5)
                        Text("Сигнал")
                            .foregroundColor(.gray)
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Toggle("", isOn: $onAlafm2)
                        .padding(.trailing, 20.0)
                        .tint(.green)
                    if onAlafm2 {
                        Text("")
                    }
                }
                .padding(.vertical, 5)
                Rectangle()
                    .foregroundColor(CustomColor.darkGray)
                    .frame(height: 1)
                HStack {
                    VStack(alignment: .leading) {
                        Text("07:30")
                            .font(.system(size: 60))
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .padding(.top, -5)
                        Text("Сигнал")
                            .foregroundColor(.gray)
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Toggle("", isOn: $onAlafm3)
                        .padding(.trailing, 20.0)
                        .tint(.green)
                    if onAlafm3 {
                        Text("")
                    }
                }
                .padding(.vertical, 5)
                Rectangle()
                    .foregroundColor(CustomColor.darkGray)
                    .frame(height: 1)
                HStack {
                    VStack(alignment: .leading) {
                        Text("10:57")
                            .font(.system(size: 60))
                            .fontWeight(.light)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.gray)
                            .padding(.top, -5)
                        Text("Сигнал")
                            .foregroundColor(.gray)
                            .font(.system(size: 16))
                    }
                    Spacer()
                    Toggle("", isOn: $onAlafm4)
                        .padding(.trailing, 20.0)
                        .tint(.green)
                    if onAlafm4 {
                        Text("")
                    }
                }
                .padding(.vertical, 5)
                Rectangle()
                    .foregroundColor(CustomColor.darkGray)
                    .frame(height: 1)
                Spacer()
            }
        }
        .padding(.horizontal, 10)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

struct Alarm_Previews: PreviewProvider {
    static var previews: some View {
        Alarm()
    }
}
