//
//  CoachMarkGeometry.swift
//  CoachMark
//
//  Created by Dm. Demenchoock on 15/12/2017.
//  Copyright © 2017 GPB Digital. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

import UIKit

public class CoachRingRenderer: NSObject {
    @objc public dynamic class func drawCoachRing(ringColor: UIColor = UIColor(red: 0.000, green: 0.387, blue: 0.742, alpha: 0.737), controlRadius: CGFloat = 20, controlCenter: CGPoint = CGPoint(x: 199, y: 137), ringRadius: CGFloat = 144, ringCenter: CGPoint = CGPoint(x: 179, y: 171)) {
        //// Variable Declarations
        let controlFrame = CGRect(x: controlCenter.x - controlRadius, y: controlCenter.y - controlRadius, width: 2 * controlRadius, height: 2 * controlRadius)
        let ringFrame = CGRect(x: ringCenter.x - ringRadius, y: ringCenter.y - ringRadius, width: 2 * ringRadius, height: 2 * ringRadius)

        //// Frames
        let frame = CGRect(x: ringFrame.minX, y: ringFrame.minY, width: ringFrame.width, height: ringFrame.height)
        let frame2 = CGRect(x: controlFrame.minX, y: controlFrame.minY, width: controlFrame.width, height: controlFrame.height)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 0.00000 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.41284 * frame2.width, y: frame2.minY + 0.00757 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.47027 * frame2.width, y: frame2.minY + 0.00000 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.44114 * frame2.width, y: frame2.minY + 0.00259 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.50000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.17825 * frame2.width, y: frame2.minY + 0.04881 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.25359 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 1.00000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.77614 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.22386 * frame2.width, y: frame2.minY + 1.00000 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.50000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.77614 * frame2.width, y: frame2.minY + 1.00000 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.77614 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 0.00000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.22386 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.77614 * frame2.width, y: frame2.minY + 0.00000 * frame2.height))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.50000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.77614 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 1.00000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.50000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.22386 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.77614 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.19894 * frame.width, y: frame.minY + 0.10076 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.33689 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.07810 * frame.width, y: frame.minY + 0.19203 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.28269 * frame.width, y: frame.minY + 0.03751 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.38696 * frame.width, y: frame.minY + 0.00000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.50000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.22386 * frame.height))
        bezierPath.close()
        ringColor.setFill()
        bezierPath.fill()
    }

    @objc public dynamic class func drawCoachRingEcho(ringEchoColor: UIColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000), controlRadius: CGFloat = 20, ringRadius: CGFloat = 144, ringCenter: CGPoint = CGPoint(x: 179, y: 171), echoOpacity: CGFloat = 0.491) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Variable Declarations
        let ringFrame = CGRect(x: ringCenter.x - ringRadius, y: ringCenter.y - ringRadius, width: 2 * ringRadius, height: 2 * ringRadius)
        let echoControlFrame = CGRect(x: ringCenter.x - controlRadius, y: ringCenter.y - controlRadius, width: 2 * controlRadius, height: 2 * controlRadius)

        //// Frames
        let frame = CGRect(x: ringFrame.minX, y: ringFrame.minY, width: ringFrame.width, height: ringFrame.height)
        let frame2 = CGRect(x: echoControlFrame.minX, y: echoControlFrame.minY, width: echoControlFrame.width, height: echoControlFrame.height)

        //// Bezier Drawing
        context.saveGState()
        context.setAlpha(echoOpacity)

        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 0.00000 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.41284 * frame2.width, y: frame2.minY + 0.00757 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.47027 * frame2.width, y: frame2.minY + 0.00000 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.44114 * frame2.width, y: frame2.minY + 0.00259 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.50000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.17825 * frame2.width, y: frame2.minY + 0.04881 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.25359 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 1.00000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.00000 * frame2.width, y: frame2.minY + 0.77614 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.22386 * frame2.width, y: frame2.minY + 1.00000 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.50000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 0.77614 * frame2.width, y: frame2.minY + 1.00000 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.77614 * frame2.height))
        bezierPath.addCurve(to: CGPoint(x: frame2.minX + 0.50000 * frame2.width, y: frame2.minY + 0.00000 * frame2.height), controlPoint1: CGPoint(x: frame2.minX + 1.00000 * frame2.width, y: frame2.minY + 0.22386 * frame2.height), controlPoint2: CGPoint(x: frame2.minX + 0.77614 * frame2.width, y: frame2.minY + 0.00000 * frame2.height))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.50000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.77614 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 1.00000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.50000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.22386 * frame.width, y: frame.minY + 1.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.77614 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.19894 * frame.width, y: frame.minY + 0.10076 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.00000 * frame.width, y: frame.minY + 0.33689 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.07810 * frame.width, y: frame.minY + 0.19203 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.50000 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.28269 * frame.width, y: frame.minY + 0.03751 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.38696 * frame.width, y: frame.minY + 0.00000 * frame.height))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.50000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.77614 * frame.width, y: frame.minY + 0.00000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 1.00000 * frame.width, y: frame.minY + 0.22386 * frame.height))
        bezierPath.close()
        ringEchoColor.setFill()
        bezierPath.fill()

        context.restoreGState()
    }
}
