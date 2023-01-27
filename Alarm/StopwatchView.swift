//
//  StopwatchView.swift
//  Alarm
//
//  Created by Алина Власенко on 25.01.2023.
//

import SwiftUI

struct StopwatchView: View {

    /// Current progress time expresed in seconds
    @State private var progressTime = 236
    @State private var isRunning = false

    /// Computed properties to get the progressTime in hh:mm:ss format
    
    var hours: Int {
            progressTime / 3600
    }

    var minutes: Int {
        (progressTime % 3600) / 60
    }

    var seconds: Int {
        progressTime % 60
    }

    /// Increase progressTime each second
    @State private var timer: Timer?

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 1) {
                StopwatchUnit(timeUnit: hours)
                Text(":")
                    .font(.system(size: 90))
                    .fontWeight(.light)
                    .offset(y: -7)
                StopwatchUnit(timeUnit: minutes)
                Text(":")
                    .font(.system(size: 90))
                    .fontWeight(.light)
                    .offset(y: -7)
                StopwatchUnit(timeUnit: seconds)
            }
            .padding(.top, 200)
            
            HStack {
                Button(action: {
                    progressTime = 0
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 88, height: 88, alignment: .center)
                            .foregroundColor(CustomColor.darkGray)
                        Circle()
                            .frame(width: 84, height: 84, alignment: .center)
                            .foregroundColor(.black)
                        Circle()
                            .frame(width: 80, height: 80, alignment: .center)
                            .foregroundColor(CustomColor.darkGray)

                        Text("На нуль")
                            .font(.system(size: 17))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                Button(action: {
                    if isRunning{
                        timer?.invalidate()
                    } else {
                        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                            progressTime += 1
                        })
                    }
                    isRunning.toggle()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 88, height: 88, alignment: .center)
                            .foregroundColor(isRunning ? CustomColor.darkRed : CustomColor.darkGreen)
                        Circle()
                            .frame(width: 84, height: 84, alignment: .center)
                            .foregroundColor(.black)
                        Circle()
                            .frame(width: 80, height: 80, alignment: .center)
                            .foregroundColor(isRunning ? CustomColor.darkRed : CustomColor.darkGreen)
                        

                        Text(isRunning ? "Стоп" : "Старт")
                            .font(.system(size: 17))
                            .foregroundColor(isRunning ? .red : .green)
                    }
                }
            }
            .padding(.top, 40)
            .padding(.horizontal, 15)
            Spacer()
        }
        .background(Color.black)
        .foregroundColor(.white)
    }
}


struct StopwatchUnit: View {

    var timeUnit: Int

    /// Time unit expressed as String.
    /// - Includes "0" as prefix if this is less than 10.
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }

    var body: some View {
        VStack {
            HStack(spacing: 1) {
                Text(timeUnitStr.substring(index: 0))
                    .font(.system(size: 95))
                    .fontWeight(.light)
                    .frame(width: 54)
                Text(timeUnitStr.substring(index: 1))
                    .font(.system(size: 95))
                    .fontWeight(.light)
                    .frame(width: 54)
            }
            .padding(.horizontal, 10)
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
