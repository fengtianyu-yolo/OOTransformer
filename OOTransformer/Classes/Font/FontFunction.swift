//
//  FontFunction.swift
//  OOTransformer
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation

public func Font(_ size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont {
    var font: UIFont?
    switch weight {
    case .regular:
        font = UIFont(name: "Roboto-Regular", size: size)
    case .semibold:
        font = UIFont(name: "Roboto-Medium", size: size)
    case .bold:
        font = UIFont(name: "Roboto-Bold", size: size)
    default:
        font = UIFont.systemFont(ofSize: size, weight: weight)
    }
    if let f = font {
        return f
    } else {
    }
    return UIFont.systemFont(ofSize: size, weight: weight)
}

public func Regular(_ size: CGFloat) -> UIFont {
    return Font(size, weight: .regular)
}

public func Bold(_ size: CGFloat) -> UIFont {
    return Font(size, weight: .bold)
}

public func Medium(_ size: CGFloat) -> UIFont {
    return Font(size, weight: .semibold)
}
