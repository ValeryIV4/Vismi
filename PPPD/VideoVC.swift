//
//  VideoVC.swift
//  PPPD
//
//  Created by Valery Ivashkevich on 13.12.22.
//
import UIKit
import Foundation
import WebKit

final class VideoVC: UIViewController {
    @IBOutlet private weak var webVideo: UIView!
    let webView = WKWebView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://youtu.be/Km1iDPd3qiE") else { return }
        webView.load(URLRequest( url: url))
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = webVideo.frame
    }
}
