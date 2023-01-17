//
//  Theory1VC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 15.12.22.
//

import UIKit
import Foundation

final class Theory1VC: UIViewController {
    @IBOutlet private weak var buttonNext: UIButton!
    @IBOutlet private weak var text: UITextView!
    
    
    @IBAction func buttonNextDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier:
                                                                    "\(Theory2VC.self)") as? Theory2VC else { return }

        //navigationController?.popViewController(animated: true)
        dismiss(animated: true)
        navigationController?.pushViewController(nextVC, animated: false)
        
    }
    
    override func viewDidLoad() {
        text.text = "Выгорание — это именно чувство истощения, оно никак не связано с перепадами настроения. Это постоянное внутреннее глубокое чувство не усталости, а именно истощение, невозможности сделать дела эффективно. Хроническая усталость — это когда вы можете сделать, но не хотите, потому что устали. Истощение — это когда у тебя нет внутренних сил даже взяться за дело. Депрессия — это внутреннее подавленное состояние, но при этом у человека есть силы, а он не хочет делать   \n \nСиндром эмоционального выгорания представляет собой состояние эмоционального, умственного истощения, физического утомления, возникающее в результате хронического стресса на работе. Может характеризоваться нарушением продуктивности в работе, усталостью, бессонницей, повышенной подверженностью к соматическим заболеваниям, употреблению алкоголя или других психоактивных веществ, суицидальному поведению.\n\nРазвитие данного синдрома характерно, в первую очередь, для профессий, где доминирует оказание помощи людям (медицинские работники, учителя, психологи, социальные работники, спасатели, работники правоохранительных органов, пожарные). Также предрасполагает к выгоранию работа с «тяжелыми» клиентами (геронтологические, онкологические пациенты, агрессивные, суицидальные больные, пациенты с зависимостями.\n\nФазы развития СЭВ (по Селье).\n\nI Фаза напряжения.\n\nЯвляется предвестником и «запускающим» механизмом в формировании эмоционального выгорания. Развитию СЭВ предшествует период повышенной активности, когда человек полностью поглощён работой, отказывается от потребностей, с ней не связанных, забывает о собственных нуждах. Если эти старания работника адекватно оцениваются, поддерживаются, если человек получает ощущение важности и значимости своего труда, СЭВ не развивается. Если нет, и происходит крах представлений, то СЭВ получает своё развитие.\n\nII Фаза резистенции.\n\nЧеловек стремится к психологическому комфорту и поэтому старается снизить давление внешних обстоятельств.\n\nIII Фаза истощения.\n\nХарактеризуется падением общего энергетического тонуса и ослаблением нервной системы. «Выгорание» становится неотъемлемым атрибутом личности."
    }
}
