//
//  Theory3VC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 15.12.22.
//

import UIKit
import Foundation

final class Theory3VC: UIViewController {
    @IBOutlet private weak var buttonMenu: UIButton!
    @IBOutlet private weak var buttonBack: UIButton!
    @IBOutlet private weak var text: UITextView!
    
    
    
    @IBAction func buttonMenuDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(MenuVC.self)") as? MenuVC else { return }

        //navigationController?.popViewController(animated: true)
        dismiss(animated: true)
        navigationController?.pushViewController(nextVC, animated: false)
    }
    
    
    
    @IBAction func buttonBacktDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory2VC.self)") as? Theory2VC else { return }
        dismiss(animated: false)
        navigationController?.pushViewController(nextVC, animated: false)
    }
    
    override func viewDidLoad() {
        text.text = "Лучший способ предотвратить депрессию - это наблюдать за собой и своим состоянием, считает специалист. По словам психолога, очень важно правильно диагностировать состояние, в котором находится человек.\n\nВ случае эмоционального выгорания или депрессии потребуется помощь специалиста-психотерапевта, для того чтобы безболезненно, с минимальными рисками и потерями для здоровья вывести человека из этого состояния.\n\n'Перед депрессией будет выгорание, чтобы его не было, необходимо наблюдать за собой, быть социально активным, общаться с друзьями, менять сферу деятельности. Кроме работы, надо уделять время своему хобби, тренировкам, спортивным занятиям, социальному просвещению, то есть не сидеть на одном месте. К примеру, после работы сходите на тренировку, проведите время с друзьями, посетите мероприятие. Когда человек социально активен, очень много точек соприкосновения с социумом, не только общение с соседями/родственниками, но и людьми с общими интересами, человек будет получать энергию, выплескивать негатив, восполнять ресурсы',\n\n - добавил Кайыржан Сапа. "
    }
}
