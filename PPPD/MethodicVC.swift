//
//  Methodic.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 13.12.22.
//
import UIKit
import Foundation

final class MethodicVC: UIViewController {
    private var numQ: Int = 1
    private var sum: Int = 0
    var que: [String] = [" Я чувствую себя эмоционально опустошённым к концу рабочего дня.",
                         " Я плохо засыпаю из-за переживаний, связанных с работой. " ,
                         " Эмоциональная нагрузка на работе слишком велика для меня. " ,
                         " После рабочего дня я могу срываться на своих близких." ,
                         " Я чувствую, что мои нервы натянуты до предела." ,
                         " Мне сложно снять эмоциональное напряжение, возникающее у меня после рабочего дня.",
                         " Моя работа плохо влияет на мое здоровье.",
                         " После рабочего дня у меня ни на что не остается сил.",
                         " Я чувствую себя перегруженным проблемами других людей",
                         "",""]
    
    @IBOutlet private weak var imageBack: UIImageView!
    @IBOutlet private weak var button0: UIButton!
    @IBOutlet private weak var button1: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!
    @IBOutlet private weak var labelNQ: UILabel!
    @IBOutlet private weak var labelQText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNQ.text = "\(numQ)"
        labelQText.text = "\(que[numQ-1])"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        labelNQ.text = "\(numQ)"
        labelQText.text = "\(que[numQ-1])"
    }
    
    //MARK: -Actions
    @IBAction private func button0DidTap() {
        numQ += 1
        if numQ == 10 {
            if sum <= 3 {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
                navigationController?.popViewController(animated: true)
                navigationController?.present(vc, animated: true)
                
            } else if (sum > 3 && sum < 12) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results2VC") as! Results2VC, animated: true)
                
            } else {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results3VC") as! Results3VC, animated: true)
            }
            
        } else {
            self.viewWillAppear(true)
            
        }
    }
    
    @IBAction private func button1DidTap() {
        numQ += 1
        sum += 1
        if numQ == 10 {
            if sum <= 3 {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
                navigationController?.popViewController(animated: true)
                navigationController?.present(vc, animated: true)
                
            } else if (sum > 3 && sum < 12) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results2VC") as! Results2VC, animated: true)
                
            } else {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results3VC") as! Results3VC, animated: true)
            }
            
        } else {
            self.viewWillAppear(true)
            
        }
    }
    
    @IBAction private func button2DidTap() {
        numQ += 1
        sum += 2
        if numQ == 10 {
            if sum <= 3 {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
                navigationController?.popViewController(animated: true)
                navigationController?.present(vc, animated: true)
                
            } else if (sum > 3 && sum < 12) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results2VC") as! Results2VC, animated: true)
                
            } else {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results3VC") as! Results3VC, animated: true)
            }
        } else {
            self.viewWillAppear(true)
            
        }
    }
    
    @IBAction private func button3DidTap() {
        numQ += 1
        sum += 3
        if numQ == 10 {
            if sum <= 3 {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "ResultsVC") as! ResultsVC
                navigationController?.popViewController(animated: true)
                navigationController?.present(vc, animated: true)
                
            } else if (sum > 3 && sum < 12) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results2VC") as! Results2VC, animated: true)
                
            } else {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                navigationController?.popViewController(animated: true)
                navigationController?.present(storyboard.instantiateViewController(withIdentifier: "Results3VC") as! Results3VC, animated: true)
            }
        } else {
            self.viewWillAppear(true)
            
        }
    }
}

