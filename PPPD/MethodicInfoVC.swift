//
//  MethodicInfoVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 13.12.22.
//
import UIKit
import Foundation

final class MethodicInfoVC: UIViewController {
    @IBOutlet private weak var buttonSrart: UIButton!
    
    @IBAction private func buttonStartDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(MethodicVC.self)") as? MethodicVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}
