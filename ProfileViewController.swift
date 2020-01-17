//
//  ProfileViewController.swift
//  NewSideProject
//
//  Created by  on 10/3/19.
//  Copyright © 2019 2EApps. All rights reserved.
//

import UIKit

class ProfileViewController: ViewController {

    @IBOutlet var matchLabel: UILabel!
    var cupWins = 0
    @IBOutlet var cupLabel: UILabel!
    var matchWins = 0
    
    @IBOutlet var favCupText: UITextField!
    @IBOutlet var favCup: UILabel!
    @IBOutlet var favPokemonText: UITextField!
    @IBOutlet var favPokemon: UILabel!
    @IBOutlet var usernameText: UITextField!
    @IBOutlet var username: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "silphIM")!)
        usernameText.text = ""
        favPokemonText.text = ""
        favCupText.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool)
       {
           loadUserDefaults()
       }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func updateProfile(_ sender: Any)
    {
        let pokemon = favPokemonText.text!
        let username1 = usernameText.text!
        let cup = favCupText.text!
        favCup.text = "Favorite cup: \(cup)"
        favPokemon.text = "Favorite pokemon: \(pokemon)"
        username.text = "Username: \(username1)"
        saveUserDefaults()
    }
    
    
  func saveUserDefaults()
   {
  
  let defaults = UserDefaults.standard
defaults.set(matchLabel.text!, forKey: "match")
defaults.set(cupLabel.text!, forKey: "cup")
defaults.set(favCup.text!, forKey: "FavCup")
defaults.set(favPokemon.text!, forKey: "FavPokemon")
defaults.set(username.text!, forKey: "Username")
    }
    
    
    func loadUserDefaults()
    {
       let defaults = UserDefaults.standard
       var matchString = defaults.string(forKey: "match") ?? "0"
        matchLabel.text = matchString
       var cupString = defaults.string(forKey: "cup") ?? "0"
        cupLabel.text = cupString
        var usernameString = defaults.string(forKey: "Username") ?? "Username"
        username.text = usernameString
         var favCupString = defaults.string(forKey: "FavCup") ?? "Favorite Cup"
        favCup.text = favCupString
         var favPokemonString = defaults.string(forKey: "FavPokemon") ?? "Favorite Pokemon"
        favPokemon.text = favPokemonString
        matchWins = Int(matchLabel.text!) ?? 0
        cupWins = Int(cupLabel.text!) ?? 0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
          {
              textField.resignFirstResponder()
              updateProfile(UIButton())
              return true
          }

          override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
              view.endEditing(true)
          }

          override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
              updateProfile(UIButton())
              view.endEditing(true)
          }
          
    
    
    
    
    @IBAction func add1(_ sender: Any)
    {
        matchWins = matchWins + 1
        matchLabel.text = "\(matchWins)"
        saveUserDefaults()
    }
    @IBAction func minus1(_ sender: Any)
    {
        
        matchLabel.text = "\(matchWins)"
        if matchWins == 0
        {
            matchWins = 0
        }
        else if matchWins > 0
        {
           matchWins = matchWins - 1
             matchLabel.text = "\(matchWins)"
        }
        saveUserDefaults()
    }
    
    @IBAction func add2(_ sender: Any)
    {
        cupWins = cupWins + 1
        cupLabel.text = "\(cupWins)"
        saveUserDefaults()
       
    }
    
    @IBAction func minus2(_ sender: Any)
    {
        cupLabel.text = "\(cupWins)"
        if cupWins == 0
        {
            cupWins = 0
        }
        else if cupWins > 0
        {
            cupWins = cupWins - 1
            cupLabel.text = "\(cupWins)"
        }
        saveUserDefaults()
    }
}
