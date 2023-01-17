//
//  MainVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 11.12.22.
//
import UIKit
import Foundation

final class PreViewVC: UIViewController {
  
    @IBOutlet private weak var imageBack: UIImageView!
    @IBOutlet private weak var imageLogo: UIImageView!
    @IBOutlet private weak var LabelName: UILabel!
    @IBOutlet private weak var labelNTMY: UILabel!
    @IBOutlet private weak var buttonStart: UIButton!
    
//    @IBAction func didTapOnView(recognizer: UITapGestureRecognizer) {
//        if let newViewController = storyboard?.instantiateViewController(withIdentifier: "Topic.VC") {
//            present(newViewController, animated: true)
//        }
//
//    }
    
    @IBAction private func buttonStartDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(TopicVC.self)") as? TopicVC else { return }
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
}
