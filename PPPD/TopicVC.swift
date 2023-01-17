//
//  Topic.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 12.12.22.
//
import UIKit
import Foundation

final class TopicVC: UIViewController {
    @IBOutlet private weak var imageBack: UIImageView!
    @IBOutlet private weak var imageLogo: UIImageView!
    @IBOutlet private weak var labelWH: UILabel!
    @IBOutlet private weak var buttonBurnout: UIButton!
    @IBOutlet private weak var buttonNeeds: UIButton!
    @IBOutlet private weak var buttonToBeC: UIButton!
    
    
    @IBAction private func buttonBurnoutDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(MenuVC.self)") as? MenuVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}
