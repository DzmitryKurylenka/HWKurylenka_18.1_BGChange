//
//  FirstVC.swift
//  HWKurylenka_18.1_BGChange
//
//

import UIKit

//class FirstVC: UIViewController, SecondVCDelegate {
 
class FirstVC: UIViewController{
    
//    func navigateToSecondVC() {
//        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
//        secondVC.delegate = self
//        navigationController?.pushViewController(secondVC, animated: true)
//    }
//
//    func didFinishWithColor(_ color: UIColor) {
//        print("didFinishWithColor called with color: \(color)")
//        self.view.backgroundColor = color
//    }
    
    func navigateToSecondVC() {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
            
        // Установить замыкание для обработки переданного цвета
        secondVC.colorSelectionClosure = { [weak self] selectedColor in

        }
            
        navigationController?.pushViewController(secondVC, animated: true)
    }

}
