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

