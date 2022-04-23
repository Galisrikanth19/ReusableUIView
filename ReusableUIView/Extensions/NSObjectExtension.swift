//
//  NsobjectExtension.swift
//  ReusableUIView
//
//  Created by Elorce on 23/04/22.
//

import Foundation

extension NSObject {
    
    var identifier: String {
        return String(describing: type(of: self))
    }
    
}
