//
//  ColorsSDk.swift
//  ColorsLib
//
//  Created by mac on 19/11/24.
//

import SwiftUI

@available(iOS 13.0, *)
public struct ColorsLib {
    // Struct to hold custom colors
    public struct SDKColors {
        public var headerColor: Color
        public var footerColor: Color
        public var tileColor: Color

        public init(headerColor: Color, footerColor: Color, tileColor: Color) {
            self.headerColor = headerColor
            self.footerColor = footerColor
            self.tileColor = tileColor
        }
    }

    // Static variable to store colors
    nonisolated(unsafe) private static var colors: SDKColors?

    // Method to set colors
    public static func setColors(_ sdkColors: SDKColors) {
        self.colors = sdkColors
    }

    // Method to fetch colors
    public static func getColors() -> SDKColors? {
        return colors
    }
}

