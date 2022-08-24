//
//  ViewController.swift
//  class and tableView kullanimi
//
//  Created by Mert AKBAŞ on 24.08.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // TABLEVİEW İÇİN GEREKLİ
        tableView.delegate = self
        tableView.dataSource = self
        
        // ŞEHİRLER
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "ankara", bolge: "içanadolu", gorsel: UIImage(named: "ankara")!)
        let izmir = Sehir(isim: "izmir", bolge: "ege", gorsel: UIImage(named: "izmir")!)
        let ordu = Sehir(isim: "ordu", bolge: "karadeniz", gorsel: UIImage(named: "ordu")!)
        let adana = Sehir(isim: "adana", bolge: "içanadolu", gorsel: UIImage(named: "adana")!)
        let yalova = Sehir(isim: "yalova", bolge: "Marmara", gorsel: UIImage(named: "yalova")!)
        
        let sehirDizisi = [istanbul, ankara, izmir, ordu, adana, yalova]
    }
    
    
    
    
    // TABLEVİEW İÇİN GEREKLİ OLAN İKİ FONKSİYONU EKLEDİK
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Text"
        return cell
        
    }
    
    


}

