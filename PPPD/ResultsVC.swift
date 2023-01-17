//
//  ResultsVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 13.12.22.
//
import UIKit
import Foundation

final class ResultsVC: UIViewController {
    @IBOutlet private weak var buttonClose: UIButton!
    
    //self.navigationItem.backBarButtonItem = 
    
    @IBAction func buttonCloseDidTap() {
        dismiss(animated: true)
        
    }
}
