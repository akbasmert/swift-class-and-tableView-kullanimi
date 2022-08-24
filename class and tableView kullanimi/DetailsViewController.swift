//
//  DetailsViewController.swift
//  class and tableView kullanimi
//
//  Created by Mert AKBAŞ on 24.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var sehirBolge: UILabel!
  
    @IBOutlet weak var sehirismi: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var secilenSehir : Sehir? // SEHİRE DEFAULT DEGERLER ATAMADAN OLUŞTURMAK İÇİN SORU İŞARETİ KOYDUK.
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sehirismi.text = secilenSehir?.isim
        sehirBolge.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        

        // Do any additional setup after loading the view.
    }
    

    
}
