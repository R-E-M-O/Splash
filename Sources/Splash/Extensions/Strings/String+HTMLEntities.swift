/**
*  Splash
*  Copyright (c) John Sundell 2019
*  MIT license - see LICENSE.md
*/

import Foundation

internal extension StringProtocol {
    func escapingHTMLEntities() -> String {
        return String(flatMap { character -> String in
            switch character {
            case "&":
                return "&amp;"
            case "<":
                return "&lt;"
            case ">":
                return "&gt;"
            case "\n":
                return "<br>"
            case "\t":
                return "&nbsp;&nbsp;&nbsp;&nbsp;"
            default:
                return String(character)
            }
        })
    }
}
