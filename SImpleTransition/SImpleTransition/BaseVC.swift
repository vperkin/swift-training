//
//  BaseVC.swift
//  SImpleTransition
//
//  Created by admin on 04.11.2022.
//

import Foundation
import UIKit

protocol InputProtocol:AnyObject {
    func setupData(_ data: Any?)
}

protocol OutputProtocol:AnyObject {
    var outputData:Any? {get set}
}

class BaseVC: UIViewController, InputProtocol, OutputProtocol {
    var AnyData: Any? = nil
    
    var outputData:Any? = nil
    
    func setupData(_ data: Any? = nil) {
        
    }
}
