//
//  TheoryVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 13.12.22.
//
import UIKit
import Foundation

final class TheoryVC: UIViewController {
    @IBOutlet private weak var buttonWII: UIButton!
    @IBOutlet private weak var buttonHS: UIButton!
    @IBOutlet private weak var buttonWID: UIButton!
    
    @IBAction private func buttonWIIDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory1VC.self)") as? Theory1VC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    @IBAction private func buttonHSDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory2VC.self)") as? Theory2VC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    @IBAction private func buttonWIDDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory3VC.self)") as? Theory3VC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}
