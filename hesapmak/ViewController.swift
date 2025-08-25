//
//  ViewController.swift
//  hesapmak
//
//  Created by Aydanur MERAL on 20.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var birinciSayı: UITextField!
    @IBOutlet weak var ikinciSayı: UITextField!
    @IBOutlet weak var sonuç: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toplaTıkla(_ sender: Any) {
        if let (a, b) = sayılarıAl() {
            let toplam = a + b
            sonuç.text = String(format: "%.2f", toplam)
        }
    }
    
    @IBAction func çıkarTıkla(_ sender: Any) {
        if let (a, b) = sayılarıAl() {
            let fark = a - b
            sonuç.text = String(format: "%.2f", fark)
        }
    }
    
    @IBAction func çarpTıkla(_ sender: Any) {
        if let (a, b) = sayılarıAl() {
            let çarpım = a * b
            sonuç.text = String(format: "%.2f", çarpım)
        }
    }
    
    @IBAction func bölTıkla(_ sender: Any) {
        if let (a, b) = sayılarıAl() {
            if b == 0 {
                sonuç.text = "Sıfıra bölünemez!"
            } else {
                let bölüm = a / b
                sonuç.text = String(format: "%.2f", bölüm)
            }
        }
    }
    

    private func sayılarıAl() -> (Double, Double)? {
        guard let birinciText = birinciSayı.text,
              let ikinciText = ikinciSayı.text,
              let a = Double(birinciText),
              let b = Double(ikinciText) else {
            sonuç.text = "Geçerli sayı giriniz!"
            return nil
        }
        return (a, b)
    }
}

