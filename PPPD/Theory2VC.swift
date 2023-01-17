//
//  Theory2VC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 15.12.22.
//

import UIKit
import Foundation

final class Theory2VC: UIViewController {
    @IBOutlet private weak var buttonNext: UIButton!
    @IBOutlet private weak var buttonBack: UIButton!
    @IBOutlet private weak var text: UITextView!
    
    
    
    @IBAction func buttonNextDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory3VC.self)") as? Theory3VC else { return }

        //navigationController?.popViewController(animated: true)
        dismiss(animated: true)
        navigationController?.pushViewController(nextVC, animated: false)
    }
    
    
    
    @IBAction func buttonBacktDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory1VC.self)") as? Theory1VC else { return }
        dismiss(animated: false)
        navigationController?.pushViewController(nextVC, animated: false)
    }
    
    
    override func viewDidLoad() {
        text.text = "Недуг обрушивается на человека усталостью, отсутствием желания что-либо делать и снижением настроения. Что представляет собой такое новомодное явление, как выгорание, и чем оно отличается от депрессии \n\nВыгорание или депрессия? \n\nПо мнению специалистов, выгорание - это больше, чем просто 'стресс на работе'. Оно может привести к снижению качества работы и стать причиной низкой самооценки. \nЕсли выгорание рассматривают в привязке к профессиональной деятельности пациента, то депрессия, как утверждает психолог, - это более всеохватывающее понятие, затрагивающее все аспекты жизни человека.\n\nЗачастую выгорание отделяют от депрессии и описывают как независимое психологическое состояние. Однако, как считает специалист, симптомы этих заболеваний могут быть похожими. По его словам, часто оба симптома сопровождаются чувством бессилия и неэффективности.\n\nЧтобы выявить у себя выгорание, эксперт советует посмотреть, как проходят последние дни, недели. Спад настроения - это первый сигнал. Стоит забеспокоиться, если пропадает или нарушается сон, появляется ощущение постоянной усталости. Все это начальные признаки.\n\n'Если у человека в последнее время происходят резкие перепады настроения, когда он возвращается домой с работы, и ему хочется просто лежать, ничего не делать, он пытается отвлечься смешными роликами, фильмами, больше зацикливается на мелочах, то это возможные сигналы о том, что у человека эмоциональное выгорание. Если человек пребывает в постоянной апатии, постоянно ищет причины в каких-то людях, действиях и зацикливается на негативном отрицательном факторе, моментах - возможно, это депрессия',\n \n- говорит Кайыржан Сапа. "
    }
}

