//
//  ViewController.swift
//  GreenMatters
//
//  Created by macbook air m1 on 15/02/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var vwBasic: UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        animateLogo()
    }
    
    private func animateLogo() {
        
        vwBasic?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        vwBasic?.alpha = 0.0
        
        UIView.animate(withDuration: 1.5, delay: 0.2, options: .curveEaseOut, animations: {
            self.vwBasic?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.vwBasic?.alpha = 1.0
        }) { _ in
            
            UIView.animate(withDuration: 0.5, animations: {
                self.vwBasic?.transform = .identity
            }) { _ in
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.navigateToNextScreen()
                }
            }
        }
    }
    
    private func navigateToNextScreen() {
        performSegue(withIdentifier: "OnboardingViewController", sender: self)
    }
}
