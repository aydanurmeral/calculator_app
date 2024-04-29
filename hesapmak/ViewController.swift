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
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func toplaTıkla(_ sender: Any) {
        if let birinciTamSayı=Int(birinciSayı.text!){
            if let ikinciTamSayı=Int(ikinciSayı.text!){
                let toplamaSonucu=birinciTamSayı+ikinciTamSayı
                sonuç.text=String(toplamaSonucu)
            }
        }
    }
    
    @IBAction func bölTıkla(_ sender: Any) {
        if let birinciTamSayı=Int(birinciSayı.text!){
            if let ikinciTamSayı=Int(ikinciSayı.text!){
                let bölmeSonucu=birinciTamSayı/ikinciTamSayı
                sonuç.text=String(bölmeSonucu)
            }
        }
    }
    
    @IBAction func çıkarTıkla(_ sender: Any) {
        if let birinciTamSayı=Int(birinciSayı.text!){
            if let ikinciTamSayı=Int(ikinciSayı.text!){
                let çıkarmaSonucu=birinciTamSayı-ikinciTamSayı
                sonuç.text=String(çıkarmaSonucu)
            }
        }
    }
    
    
    @IBAction func çarpTıkla(_ sender: Any) {
        if let birinciTamSayı=Int(birinciSayı.text!){
            if let ikinciTamSayı=Int(ikinciSayı.text!){
                let çarpmaSonucu=birinciTamSayı*ikinciTamSayı
                sonuç.text=String(çarpmaSonucu)
            }
        }
    }
}




