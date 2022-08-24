//
//  ViewController.swift
//  class and tableView kullanimi
//
//  Created by Mert AKBAŞ on 24.08.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]() //SEHİR DİZİSİNE ERİŞEBİLMEK İÇİN BURADA TANIMLADIK
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // TABLEVİEW İÇİN GEREKLİ
        tableView.delegate = self
        tableView.dataSource = self
        
        // ŞEHİRLER
        
        let izmir = Sehir(isim: "izmir", bolge: "ege", gorsel: UIImage(named: "izmir")!)
        let ordu = Sehir(isim: "ordu", bolge: "karadeniz", gorsel: UIImage(named: "ordu")!)
        let adana = Sehir(isim: "adana", bolge: "içanadolu", gorsel: UIImage(named: "adana")!)
        let yalova = Sehir(isim: "yalova", bolge: "Marmara", gorsel: UIImage(named: "yalova")!)
        let istanbul = Sehir(isim: "istanbul", bolge: "marmara", gorsel: UIImage(named: "izmir")!)
        let ankara = Sehir(isim: "ankara", bolge: "içanadolu", gorsel: UIImage(named: "ankara")!)
        let corum = Sehir(isim:"çorum", bolge: "içanadolu", gorsel: UIImage(named: "ankara")!)
        let manisa = Sehir(isim: "manisa", bolge: "ege", gorsel: UIImage(named: "izmir")!)
        
         sehirDizisi = [ izmir, ordu, adana, yalova, istanbul, ankara,corum, manisa] // SEHİR DİZİSİNE EKLEDİK APPEND İLE DE YAPABİLİRDİK
        
    }
    
    
    
    
    // TABLEVİEW İÇİN GEREKLİ OLAN İKİ FONKSİYONU EKLEDİK
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim // SEHİR OBJESİ VERİYOR STRİNG VERMEDİĞİ İÇİN .İSİM YAPTIK
        return cell
        
    }
    
    // SEÇİLİNCE NE OLACAĞINI BELİRLEMEK İÇİN DİDSELECTROWAT KULLANDİK
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         kullaniciSecimi = sehirDizisi[indexPath.row] // Kullanıcının hangi secimi yaptığını segue ye aktarmak için
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVc = segue.destination as! DetailsViewController
            destinationVc.secilenSehir =  kullaniciSecimi
            
        }
    }
    
    


}

