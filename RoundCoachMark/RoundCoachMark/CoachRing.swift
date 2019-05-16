//
//  CoachCircle.swift
//  RoundCoachMark
//
//  Created by Dima Choock on 13/12/2017.
//  Copyright © 2017 GPB DIDZHITAL. All rights reserved.
//

import Foundation

public struct CoachRing {
    public var radius: CGFloat = 0
    public var center: CGPoint = CGPoint.zero
    public let controlCenter: CGPoint
    public let controlRadius: CGFloat

    static let contentInset: CGFloat = 20

    public init?(controlCenter: CGPoint, controlRadius: CGFloat, innerRect: CGRect, outerRect _: CGRect, overlappingAllowed: Bool = true, excenterShift: CGPoint? = nil, excenterRadius: CGFloat? = nil) {
        let controlDimension = 2 * controlRadius
        if !overlappingAllowed {
            let controlBb = CGRect(origin: CGPoint(x: controlCenter.x - controlRadius,
                                                   y: controlCenter.y - controlRadius),
                                   size: CGSize(width: controlDimension, height: controlDimension))
            if innerRect.intersects(controlBb) { return nil }
        }

        self.controlCenter = controlCenter
        self.controlRadius = controlRadius

        center = defineCenter(excenterShift, excenterRadius)
        radius = defineRadius(center, innerRect)
    }

    private func defineCenter(_ excenterShift: CGPoint?, _ excenterRadius: CGFloat?) -> CGPoint {
        guard let excenterShift = excenterShift
        else {
            return controlCenter
        }
        let sCenter = CGPoint(x: controlCenter.x + excenterShift.x, y: controlCenter.y + excenterShift.y)
        guard let excenterRadius = excenterRadius
        else {
            return sCenter
        }

        let span = UInt32(excenterRadius * 100)
        let halfSpan = UInt32(excenterRadius * 50)
        let dx = CGFloat(halfSpan - arc4random_uniform(span)) / 50.0
        let dy = CGFloat(halfSpan - arc4random_uniform(span)) / 50.0

        return CGPoint(x: sCenter.x + dx, y: sCenter.y + dy)
    }

    private func defineRadius(_ center: CGPoint, _ ir: CGRect) -> CGFloat {
        var maxDistance: CGFloat = 0
        let corners = [ir.origin, CGPoint(x: ir.minX, y: ir.maxY), CGPoint(x: ir.maxX, y: ir.minY), CGPoint(x: ir.maxX, y: ir.maxY)]
        for corner in corners {
            let distance = corner.distance(to: center)
            maxDistance = maxDistance < distance ? distance : maxDistance
        }
        return maxDistance + CoachRing.contentInset
    }
}

extension CGPoint {
    func distance(to point: CGPoint) -> CGFloat {
        return sqrt(pow(x - point.x, 2) + pow(y - point.y, 2))
    }
}
