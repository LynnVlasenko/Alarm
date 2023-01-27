//
//  Timer.swift
//  Alarm
//
//  Created by Алина Власенко on 24.01.2023.
//

import SwiftUI

struct TimerView: View {
    
    @State var selectedHour: Int = 0
    @State var selectedMinute: Int = 0
    @State var selectedSecond: Int = 0
    
    
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedHour, label: EmptyView()) {
                    ForEach(0..<24) {
                        Text("\($0) год")
                    }
                }
                Picker(selection: $selectedMinute, label: EmptyView()) {
                    ForEach(0..<60) {
                        Text("\($0) хв")
                    }
                }
                Picker(selection: $selectedSecond, label: EmptyView()) {
                    ForEach(0..<60) {
                        Text("\($0) с")
                    }
                }
                //.accentColor(.orange)
                //.tint(.orange)
                //.foregroundColor(.white)
            }
            .pickerStyle(WheelPickerStyle())
            .padding(.horizontal, 40)
            //.background(Color.black)
            //.foregroundColor(.white)
            .accentColor(.orange)
            HStack {
                Circle()
                    .fill(CustomColor.darkGray)
                    .frame(width: 80, height: 80)
                    .overlay {
                        Circle().stroke(CustomColor.darkGray, lineWidth: 6)
                        .overlay {
                                Circle().stroke(.white, lineWidth: 2)
                            }
                    }
                Text("Скинути")
                    .padding(.leading, -82.0)
                    .foregroundColor(.gray)
                Spacer()
                Circle()
                    .fill(CustomColor.darkGreen)
                    .frame(width: 80, height: 80)
                    .overlay {
                        Circle().stroke(CustomColor.darkGreen, lineWidth: 6)
                        .overlay {
                                Circle().stroke(.white, lineWidth: 2)
                            }
                    }
                Text("Пуск")
                    .padding(.leading, -68.0)
                    .foregroundColor(.green)
            }
            .padding(.horizontal, 35.0)
            .padding(.top, 40.0)
            .padding(.bottom, 30.0)
            HStack(alignment: .center, spacing: 200) {
                Text("У кінці")
                    .foregroundColor(.white)
                Text("Радар >")
                    .foregroundColor(.gray)
            }
            .padding(.all, 20.0)
            .background(CustomColor.darkGray)
            .cornerRadius(12)
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
