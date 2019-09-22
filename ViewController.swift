//
//  ViewController.swift
//  Pokemon
//
//  Created by Erhan Acisu on 21.09.2019.
//  Copyright © 2019 Emirhan Acisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

   
    
    @IBOutlet weak var tablo: UITableView!
    
 var pokeIsim = [String]()
 var pokeResim = [UIImage]()
 var pokeBilgi = [String]()
 var secilenpoke = ""
var secilenpokeResmi = UIImage()
    var secilenBilgi = ""
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tablo.delegate = self
        tablo.dataSource = self
        
        
              //--BookData
        pokeIsim.append("Pikachu")
        pokeIsim.append("Squirtle")
        pokeIsim.append("Balbasaur")
        pokeIsim.append("Charmander")
        
        pokeResim.append(UIImage(named: "pikac")!)
        pokeResim.append(UIImage(named: "squr")!)
        pokeResim.append(UIImage(named: "balba")!)
        pokeResim.append(UIImage(named: "char")!)
        
        pokeBilgi.append("Elektrik pokemonu")
        pokeBilgi.append("Su pokemonu gözlük cok yakışır")
        pokeBilgi.append("Bitki pokemonu")
        pokeBilgi.append("Ateş pokemonu")
        
        navigationItem.title = "Pokedex"
        
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            pokeIsim.remove(at: indexPath.row)
            pokeResim.remove(at: indexPath.row)
            tablo.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            pokeBilgi.remove(at: indexPath.row)
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = pokeIsim[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokeBilgi.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenpoke = pokeIsim[indexPath.row]
         secilenpokeResmi = pokeResim[indexPath.row]
        secilenBilgi = pokeBilgi[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            
            let des = segue.destination as! ViewControllerSecond
            
            des.selectedResim = secilenpokeResmi
            des.selectedIsim = secilenpoke
            des.gelenBilgi = secilenBilgi
            
            
        }
        
        
    }
            
            
            
        }


