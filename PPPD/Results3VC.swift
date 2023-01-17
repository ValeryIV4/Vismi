//
//  Results3VC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 14.12.22.
//


import UIKit
import Foundation

final class Results3VC: UIViewController {
    @IBOutlet private weak var buttonClose: UIButton!
    
    //self.navigationItem.backBarButtonItem =
    
    @IBAction func buttonCloseDidTap() {
        dismiss(animated: true)
        
    }
}
