//
//  SecondVC.swift
//  HWKurylenka_18.1_BGChange
//
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var opacityTextField: UITextField!
    @IBOutlet weak var hexColorTextField: UITextField!
    
    @IBOutlet weak var colorPreviewView: UIView!
    
    /// Обновление текстовых полей на основе слайдеров
    @IBAction func redSliderValueChange(_ sender: UISlider) {
        redTextField.text = String(format: "%.2f", redSlider.value)
        /// Вызов функции для обновления Hex Color
        updateHexColor()
    }
       
    @IBAction func grenSliderValueChange(_ sender: Any) {
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        /// Вызов функции для обновления Hex Color
        updateHexColor()
    }
       
    @IBAction func blueSliderValueChange(_ sender: Any) {
        blueTextField.text = String(format: "%.2f", blueSlider.value)
        /// Вызов функции для обновления Hex Color
        updateHexColor()
    }
       
    @IBAction func opacitySliderValueChange(_ sender: Any) {
        opacityTextField.text = String(format: "%.2f", opacitySlider.value)
        /// Вызов функции для обновления Hex Color
        updateHexColor()
    }

    /// Чтобы обеспечить безопасный ввод и избежать сбоев при попытке преобразовать неправильный текст в число, используем Float(sender.text ?? "") для попытки извлечения числа из текстового поля.
    /// Если ввести недопустимое значение, ничего не произойдет, и текущее значение слайдера не изменится.
    @IBAction func redTextFieldEditingChanged(_ sender: UITextField) {
        if let value = Float(sender.text ?? "") {
            redSlider.value = value
            updateHexColor()
        }
    }
        
    @IBAction func greenTextFieldEditingChanged(_ sender: UITextField) {
        if let value = Float(sender.text ?? "") {
            greenSlider.value = value
            updateHexColor()
        }
    }
        
    @IBAction func blueTextFieldEditingChanged(_ sender: UITextField) {
        if let value = Float(sender.text ?? "") {
            blueSlider.value = value
            updateHexColor()
        }
    }
        
    @IBAction func opacityTextFieldEditingChanged(_ sender: UITextField) {
        if let value = Float(sender.text ?? "") {
            opacitySlider.value = value
            updateHexColor()
        }
    }

    
    func updateHexColor() {
        let red = Int(redSlider.value * 255)
        let green = Int(greenSlider.value * 255)
        let blue = Int(blueSlider.value * 255)
        let opacity = Int(opacitySlider.value * 255)
        let hexColor = String(format: "#%02X%02X%02X%02X", red, green, blue, opacity)
        
        hexColorTextField.text = hexColor
    }

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
