//
//  PokemonTableViewController.swift
//  PokemonTable
//
//  Created by apple on 29/11/19.
//  Copyright © 2019 Tinkercademy. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {

    var PokemonsList = [pokemon(number: 1, name: "Bulbasaur", type: .🌱, secondType: .🧪, picture: "bulbsaur"),pokemon(number: 2, name: "Ivysaur", type: .🌱, secondType: .🧪, picture: "ivysaur"),pokemon(number: 3, name: "Venusaur", type: .🌱, secondType: .🧪, picture: "venusaur")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title="PokeDex"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PokemonsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! PokemonTableViewCell
        cell.numberLabel?.text = "Number :\(PokemonsList[indexPath.row].number)"
        cell.nameLabel?.text="Name : \(PokemonsList[indexPath.row].name)"
        cell.pic.image = UIImage(named: "\(PokemonsList[indexPath.row].picture)")
        cell.typeLabel?.text="Type : \(PokemonsList[indexPath.row].type) , \(PokemonsList[indexPath.row].secondType)"
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPokemonDetail"{
            let destVC = segue.destination as! DetailsViewController
            let indexPath = tableView.indexPathForSelectedRow!
            destVC.selectedPokemon = PokemonsList[indexPath.row]
        }
    }

}
