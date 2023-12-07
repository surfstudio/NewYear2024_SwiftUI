//
//  ClockView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 06.12.2023.
//

import SwiftUI

struct ClockView: View {

    @State private var currentTime: Date = Date.now

    private var foregroundColor: Color = .black
    private let borderWidth: CGFloat = 10
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        GeometryReader { geometry in
            let radius = geometry.size.width / 2

            let center = CGPoint(
                x: geometry.size.width / 2,
                y: geometry.size.height / 2
            )

            let components = Calendar.current.dateComponents([.hour, .minute, .second], from: currentTime)

            let hour = Double(components.hour ?? 0)
            let minute = Double(components.minute ?? 0)
            let second = Double(components.second ?? 0)

            Circle().foregroundColor(.white)

            makeHand(
                center: center,
                height: radius * 0.82,
                radian: Angle(degrees: second * 6 - 90).radians
            )
            .stroke(style: .init(lineWidth: 1, lineCap: .round))

            makeHand(
                center: center,
                height: radius * 0.65,
                radian: Angle(degrees: minute * 6 - 90).radians
            )
            .stroke(style: .init(lineWidth: 2, lineCap: .round))

            makeHand(
                center: center,
                height: radius * 0.45,
                radian: Angle(degrees: hour * 30 - 90).radians
            )
            .stroke(style: .init(lineWidth: 5, lineCap: .round))

            Circle()
                .frame(width: 10, height: 10)
                .position(center)
        }
        .foregroundColor(foregroundColor)
        .aspectRatio(1, contentMode: .fit)
        .onReceive(timer) { time in
            currentTime = time
        }
    }

    func makeHand(
        center: CGPoint,
        height: CGFloat,
        radian: Double
    ) -> Path {
        Path { path in
            path.move(to: center)
            let x = center.x + height * cos(radian)
            let y = center.y + height * sin(radian)
            path.addLine(to: CGPoint(x: x, y: y))
        }
    }

}

#Preview {
    ZStack {
        Rectangle()
        ClockView()
    }
    .frame(width: 200, height: 200)
}
