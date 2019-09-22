//
//  ViewControllerSecond.swift
//  Pokedex
//
//  Created by Erhan Acisu on 22.09.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class ViewControllerSecond: UIViewController {
    @IBOutlet weak var resimGoster: UIImageView!
    @IBOutlet weak var isimGoster: UILabel!
    
    @IBOutlet weak var bilgi: UILabel!
    var selectedIsim = ""
    var selectedResim = UIImage()
    var gelenBilgi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resimGoster.image = selectedResim
        isimGoster.text = selectedIsim
        bilgi.text = gelenBilgi
    }
  
    

}
