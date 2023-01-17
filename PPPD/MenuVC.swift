//
//  MenuVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 12.12.22.
//
import UIKit
import Foundation

final class MenuVC: UIViewController {
    @IBOutlet private weak var buttonTheory: UIButton!
    @IBOutlet private weak var buttonMethodic: UIButton!
    @IBOutlet private weak var buttonVodeo: UIButton!
    @IBOutlet private weak var imageBack: UIImageView!
    
    
    
    @IBAction private func buttonTheoryDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(TheoryVC.self)") as? TheoryVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    
    @IBAction private func buttonMethodicDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(MethodicInfoVC.self)") as? MethodicInfoVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    @IBAction private func buttonVideoDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(VideoVC.self)") as? VideoVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}
