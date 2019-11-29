//
//  DetailsViewController.swift
//  PokemonTable
//
//  Created by apple on 29/11/19.
//  Copyright © 2019 Tinkercademy. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedPokemon:pokemon!
    
    @IBOutlet weak var pokemonPic: UIImageView!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var secondaryTypeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pokemonPic.image = UIImage(named: "\(selectedPokemon.picture)")
        numberLabel.text = "Number : \(selectedPokemon.number)"
        nameLabel.text = "Name : \(selectedPokemon.name)"
        typeLabel.text = "Type : \(selectedPokemon.type)"
        secondaryTypeLabel.text = "Secondary Type : \(selectedPokemon.secondType)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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
