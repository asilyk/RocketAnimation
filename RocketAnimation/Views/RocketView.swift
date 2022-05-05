//
//  RocketView.swift
//  RocketAnimation
//
//  Created by Alexander on 05.05.2022.
//

import SwiftUI

struct RocketView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height, width)

            ZStack {
                RocketFuselageView(size: size)
                ShuttleFuselageView(size: size)
                MainNozzleView(size: size)
                WindShieldView(size: size)
                RightFinView(size: size)
                LeftFinView(size: size)
                RightStageView(size: size)
                LeftStageView(size: size)
                RightNozzleView(size: size)
                LeftNozzleView(size: size)
            }
        }
    }
}

struct RocketFuselageView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.5, y: size * 0.05))
            path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.1))
            path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.2))
            path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.4))
            path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.2))
            path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.4))
            path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.2))
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.1))
            path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.05))
        }
        .stroke(lineWidth: 2)
    }
}

struct  ShuttleFuselageView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.6, y: size * 0.4))
            path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.7))
            path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.75))
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.75))
            path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.7))
            path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.4))
        }
        .stroke(lineWidth: 2)
    }
}

struct MainNozzleView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.55, y: size * 0.75))
            path.addLine(to: CGPoint(x: size * 0.575, y: size * 0.825))
            path.addQuadCurve(
                to: CGPoint(x: size * 0.425, y: size * 0.825),
                control: CGPoint(x: size * 0.5, y: size * 0.85)
            )
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.75))
        }
        .stroke(lineWidth: 2)
    }
}

struct WindShieldView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.5, y: size * 0.35))
            path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.375))
            path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.425))
            path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.4))
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.425))
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.375))
            path.addLine(to: CGPoint(x: size * 0.5, y: size * 0.35))
        }
        .stroke(lineWidth: 2)
    }
}

struct RightFinView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.6, y: size * 0.55))
            path.addLine(to: CGPoint(x: size * 0.75, y: size * 0.75))
            path.addLine(to: CGPoint(x: size * 0.75, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.625, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.55, y: size * 0.75))
        }
        .stroke(lineWidth: 2)
    }
}

struct LeftFinView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.4, y: size * 0.55))
            path.addLine(to: CGPoint(x: size * 0.25, y: size * 0.75))
            path.addLine(to: CGPoint(x: size * 0.25, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.375, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.45, y: size * 0.75))
        }
        .stroke(lineWidth: 2)
    }
}

struct RightStageView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.6, y: size * 0.25))
            path.addArc(
                center: CGPoint(x: size * 0.65, y: size * 0.25),
                radius: size * 0.05,
                startAngle: .degrees(180),
                endAngle: .degrees(0),
                clockwise: false
            )
            path.move(to: CGPoint(x: size * 0.7, y: size * 0.25))
            path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.675))
        }
        .stroke(lineWidth: 2)
    }
}

struct LeftStageView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.4, y: size * 0.25))
            path.addArc(
                center: CGPoint(x: size * 0.35, y: size * 0.25),
                radius: size * 0.05,
                startAngle: .degrees(0),
                endAngle: .degrees(180),
                clockwise: true
            )
            path.move(to: CGPoint(x: size * 0.3, y: size * 0.25))
            path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.675))
        }
        .stroke(lineWidth: 2)
    }
}

struct RightNozzleView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.625, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.625, y: size * 0.825))
            path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.85))
            path.addLine(to: CGPoint(x: size * 0.6, y: size * 0.875))
            path.addQuadCurve(
                to: CGPoint(x: size * 0.7, y: size * 0.875),
                control: CGPoint(x: size * 0.65, y: size * 0.9)
            )
            path.addLine(to: CGPoint(x: size * 0.7, y: size * 0.85))
            path.addLine(to: CGPoint(x: size * 0.675, y: size * 0.825))
            path.addLine(to: CGPoint(x: size * 0.675, y: size * 0.8))
        }
        .stroke(lineWidth: 2)
    }
}

struct LeftNozzleView: View {
    let size: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: size * 0.325, y: size * 0.8))
            path.addLine(to: CGPoint(x: size * 0.325, y: size * 0.825))
            path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.85))
            path.addLine(to: CGPoint(x: size * 0.3, y: size * 0.875))
            path.addQuadCurve(
                to: CGPoint(x: size * 0.4, y: size * 0.875),
                control: CGPoint(x: size * 0.35, y: size * 0.9)
            )
            path.addLine(to: CGPoint(x: size * 0.4, y: size * 0.85))
            path.addLine(to: CGPoint(x: size * 0.375, y: size * 0.825))
            path.addLine(to: CGPoint(x: size * 0.375, y: size * 0.8))
        }
        .stroke(lineWidth: 2)
    }
}

struct RocketView_Previews: PreviewProvider {
    static var previews: some View {
        RocketView()
            .frame(width: 200, height: 200)
    }
}
