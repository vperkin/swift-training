//
//  UIVC+init.swift
//  SImpleTransition
//
//  Created by admin on 29.10.2022.
//

import Foundation
import UIKit

extension UIViewController {
    static var id:String {
        return String(describing: Self.self)
    }
    static func initFromSb(_ sb:String = "Main")-> UIViewController? {
        let storyboard = UIStoryboard(name:sb, bundle:nil)
        let vc = storyboard.instantiateViewController(withIdentifier: id)
        return vc
    }
    
    
}
