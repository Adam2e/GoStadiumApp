//
//  ThirdViewController.swift
//  NewSideProject
//
//  Created by  on 10/3/19.
//  Copyright © 2019 2EApps. All rights reserved.
//

import UIKit

class ThirdViewController: ViewController 
{
@IBOutlet var pokemonImage6: UIImageView!
    @IBOutlet var pokemonImage5: UIImageView!
    @IBOutlet var pokemonImage4: UIImageView!
    @IBOutlet var pokemonImage3: UIImageView!
    @IBOutlet var pokemonImage2: UIImageView!
    @IBOutlet var pokemonImage1: UIImageView!
    @IBOutlet var pokemon1: UILabel!
    @IBOutlet var pokemon2: UILabel!
    @IBOutlet var pokemon3: UILabel!
    @IBOutlet var pokemon4: UILabel!
    @IBOutlet var pokemon5: UILabel!
    @IBOutlet var pokemon6: UILabel!
       
       @IBOutlet var pokemonText1: UITextField!
       @IBOutlet var pokemonText2: UITextField!
       @IBOutlet var pokemonText3: UITextField!
       @IBOutlet var pokemonText4: UITextField!
       @IBOutlet var pokemonText5: UITextField!
       @IBOutlet var pokemonText6: UITextField!
       
    var value1 = ""
    var value2 = ""
    var value3 = ""
    var value4 = ""
    var value5 = ""
    var value6 = ""
       override func viewDidLoad() {
           super.viewDidLoad()
        
           // Do any additional setup after loading the view.
    
       }
       

       /*
       // MARK: - Navigation

       // In a storyboard-based application, you will often want to do a little preparation before navigation
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           // Get the new view controller using segue.destination.
           // Pass the selected object to the new view controller.
       }
     */
    override func viewWillAppear(_ animated: Bool)
    {
        loadUserDefaults()
    }
    
    
//    override func viewWillDisappear(_ animated: Bool) {
//        saveUserDefaults()
//    }
   @IBAction func linkClicked(sender: AnyObject) {
             openUrl(urlStr: "https://silph.gg/twilight-cup")
    }

    func openUrl(urlStr:String!) {

         if let url = NSURL(string:urlStr) {
             UIApplication.shared.openURL(url as URL)
    }
    }
                    
                    
                    
                    
func loadUserDefaults()
         {
            
            let defaults = UserDefaults.standard
            var image1String = defaults.string(forKey: "TwilightImage1") ?? "Abra"
            image1String = image1String.lowercased()
            pokemonImage1.image = UIImage(named: image1String)
            var image2String = defaults.string(forKey: "TwilightImage2") ?? "Abra"
            image2String = image2String.lowercased()
            pokemonImage2.image = UIImage(named: image2String)
            var image3String = defaults.string(forKey: "TwilightImage3") ?? "Abra"
            image3String = image3String.lowercased()
            pokemonImage3.image = UIImage(named: image3String)
            var image4String = defaults.string(forKey: "TwilightImage4") ?? "Abra"
            image4String = image4String.lowercased()
            pokemonImage4.image = UIImage(named: image4String)
            var image5String = defaults.string(forKey: "TwilightImage5") ?? "Abra"
            image5String = image5String.lowercased()
            pokemonImage5.image = UIImage(named: image5String)
            var image6String = defaults.string(forKey: "TwilightImage6") ?? "Abra"
            image6String = image6String.lowercased()
            pokemonImage6.image = UIImage(named: image6String)
            
            
            pokemonText1.text = image1String
            pokemonText2.text = image2String
             pokemonText3.text = image3String
             pokemonText4.text = image4String
             pokemonText5.text = image5String
             pokemonText6.text = image6String
         }
    
func saveUserDefaults()
         {
        
        let defaults = UserDefaults.standard
        defaults.set(pokemonText1.text!, forKey: "TwilightImage1")
        defaults.set(pokemonText2.text!, forKey: "TwilightImage2")
        defaults.set(pokemonText3.text!, forKey: "TwilightImage3")
        defaults.set(pokemonText4.text!, forKey: "TwilightImage4")
        defaults.set(pokemonText5.text!, forKey: "TwilightImage5")
        defaults.set(pokemonText6.text!, forKey: "TwilightImage6")

         }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
       {
           textField.resignFirstResponder()
           updateTeam(UIButton())
           return true
       }

       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           view.endEditing(true)
       }

       override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
           updateTeam(UIButton())
           view.endEditing(true)
       }
       
    
                    
    
                       

       @IBAction func updateTeam(_ sender: UIButton)
       {
      
        
        var value1 = pokemonText1.text!
        var value2 = pokemonText2.text!
        var value3 = pokemonText3.text!
        var value4 = pokemonText4.text!
        var value5 = pokemonText5.text!
        var value6 = pokemonText6.text!
         saveUserDefaults()
//        pokemonText1.text = ""
//        pokemonText2.text = ""
//        pokemonText3.text = ""
//        pokemonText4.text = ""
//        pokemonText5.text = ""
//        pokemonText6.text = ""
        
         if value1.lowercased() == "bulbasaur"
                            {
                                pokemonImage1.image = UIImage(named: "bulbasaur")!
                            }
                if value1.lowercased() == "ivysaur"
                            {
                                pokemonImage1.image = UIImage(named: "ivysaur")!
                            }
                if value1.lowercased() == "venusaur"
                            {
                                pokemonImage1.image = UIImage(named: "venusaur")!
                            }
                if value1.lowercased() == "charmander"
                            {
                                pokemonImage1.image = UIImage(named: "charmander")!
                            }
                if value1.lowercased() == "charmeleon"
                            {
                                pokemonImage1.image = UIImage(named: "charmeleon")!
                            }
                if value1.lowercased() == "charizard"
                            {
                                pokemonImage1.image = UIImage(named: "charizard")!
                            }
                if value1.lowercased() == "squirtle"
                            {
                                pokemonImage1.image = UIImage(named: "squirtle")!
                            }
                if value1.lowercased() == "wartortle"
                            {
                                pokemonImage1.image = UIImage(named: "wartortle")!
                            }
                if value1.lowercased() == "blastoise"
                            {
                                pokemonImage1.image = UIImage(named: "blastoise")!
                            }
                if value1.lowercased() == "caterpie"
                            {
                                pokemonImage1.image = UIImage(named: "caterpie")!
                            }
                if value1.lowercased() == "metapod"
                            {
                                pokemonImage1.image = UIImage(named: "metapod")!
                            }
                if value1.lowercased() == "butterfree"
                            {
                                pokemonImage1.image = UIImage(named: "butterfree")!
                            }
                if value1.lowercased() == "weedle"
                            {
                                pokemonImage1.image = UIImage(named: "weedle")!
                            }
                if value1.lowercased() == "kakuna"
                            {
                                pokemonImage1.image = UIImage(named: "kakuna")!
                            }
                if value1.lowercased() == "beedrill"
                            {
                                pokemonImage1.image = UIImage(named: "beedrill")!
                            }
                if value1.lowercased() == "pidgey"
                            {
                                pokemonImage1.image = UIImage(named: "pidgey")!
                            }
                if value1.lowercased() == "pidgeotto"
                            {
                                pokemonImage1.image = UIImage(named: "pidgeotto")!
                            }
                if value1.lowercased() == "pidgeot"
                            {
                                pokemonImage1.image = UIImage(named: "pidgeot")!
                            }
                if value1.lowercased() == "rattata"
                            {
                                pokemonImage1.image = UIImage(named: "rattata")!
                            }
                if value1.lowercased() == "raticate"
                            {
                                pokemonImage1.image = UIImage(named: "raticate")!
                            }
                if value1.lowercased() == "alolan rattata"
                            {
                                pokemonImage1.image = UIImage(named: "alolan rattata")!
                            }
                if value1.lowercased() == "alolan raticate"
                            {
                                pokemonImage1.image = UIImage(named: "alolan raticate")!
                            }
                if value1.lowercased() == "spearow"
                            {
                                pokemonImage1.image = UIImage(named: "spearow")!
                            }
                if value1.lowercased() == "fearow"
                            {
                                pokemonImage1.image = UIImage(named: "fearow")!
                            }
                if value1.lowercased() == "ekans"
                            {
                                pokemonImage1.image = UIImage(named: "ekans")!
                            }
                if value1.lowercased() == "arbok"
                            {
                                pokemonImage1.image = UIImage(named: "arbok")!
                            }
                if value1.lowercased() == "pikachu"
                            {
                                pokemonImage1.image = UIImage(named: "pikachu")!
                            }
                if value1.lowercased() == "raichu"
                            {
                                pokemonImage1.image = UIImage(named: "raichu")!
                            }
                if value1.lowercased() == "alolan raichu"
                            {
                                pokemonImage1.image = UIImage(named: "alolan raichu")!
                            }
                if value1.lowercased() == "sandshrew"
                            {
                                pokemonImage1.image = UIImage(named: "sandshrew")!
                            }
                if value1.lowercased() == "sandslash"
                            {
                                pokemonImage1.image = UIImage(named: "sandslash")!
                            }
                if value1.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage1.image = UIImage(named: "alolan sandshrew")!
                            }
                if value1.lowercased() == "alolan sandslash"
                            {
                                pokemonImage1.image = UIImage(named: "alolan sandslash")!
                            }
                if value1.lowercased() == "nidoran f"
                            {
                                pokemonImage1.image = UIImage(named: "nidoran f")!
                            }
                if value1.lowercased() == "nidorina"
                            {
                                pokemonImage1.image = UIImage(named: "nidorina")!
                            }
                if value1.lowercased() == "nidoqueen"
                            {
                                pokemonImage1.image = UIImage(named: "nidoqueen")!
                            }
                if value1.lowercased() == "nidoran m"
                            {
                                pokemonImage1.image = UIImage(named: "nidoran m")!
                            }
                if value1.lowercased() == "nidorino"
                            {
                                pokemonImage1.image = UIImage(named: "nidorino")!
                            }
                if value1.lowercased() == "nidoking"
                            {
                                pokemonImage1.image = UIImage(named: "nidoking")!
                            }
                if value1.lowercased() == "clefairy"
                            {
                                pokemonImage1.image = UIImage(named: "clefairy")!
                            }
                if value1.lowercased() == "clefable"
                            {
                                pokemonImage1.image = UIImage(named: "clefable")!
                            }
                if value1.lowercased() == "vulpix"
                            {
                                pokemonImage1.image = UIImage(named: "vulpix")!
                            }
                if value1.lowercased() == "alolan vulpix"
                            {
                                pokemonImage1.image = UIImage(named: "alolan vulpix")!
                            }
                if value1.lowercased() == "ninetales"
                            {
                                pokemonImage1.image = UIImage(named: "ninetales")!
                            }
                if value1.lowercased() == "alolan ninetales"
                            {
                                pokemonImage1.image = UIImage(named: "alolan ninetales")!
                            }
                if value1.lowercased() == "jigglypuff"
                            {
                                pokemonImage1.image = UIImage(named: "jigglypuff")!
                            }
                if value1.lowercased() == "wigglytuff"
                            {
                                pokemonImage1.image = UIImage(named: "wigglytuff")!
                            }
                if value1.lowercased() == "zubat"
                            {
                                pokemonImage1.image = UIImage(named: "zubat")!
                            }
                if value1.lowercased() == "golbat"
                            {
                                pokemonImage1.image = UIImage(named: "golbat")!
                            }
                if value1.lowercased() == "oddish"
                            {
                                pokemonImage1.image = UIImage(named: "oddish")!
                            }
                if value1.lowercased() == "gloom"
                            {
                                pokemonImage1.image = UIImage(named: "gloom")!
                            }
                if value1.lowercased() == "vileplume"
                            {
                                pokemonImage1.image = UIImage(named: "vileplume")!
                            }
                if value1.lowercased() == "paras"
                            {
                                pokemonImage1.image = UIImage(named: "paras")!
                            }
                if value1.lowercased() == "parasect"
                            {
                                pokemonImage1.image = UIImage(named: "parasect")!
                            }
                if value1.lowercased() == "venonat"
                            {
                                pokemonImage1.image = UIImage(named: "venonat")!
                            }
                if value1.lowercased() == "venomoth"
                            {
                                pokemonImage1.image = UIImage(named: "venomoth")!
                            }
                if value1.lowercased() == "diglett"
                            {
                                pokemonImage1.image = UIImage(named: "diglett")!
                            }
                if value1.lowercased() == "alolan diglett"
                            {
                                pokemonImage1.image = UIImage(named: "alolan diglett")!
                            }
                if value1.lowercased() == "dugtrio"
                            {
                                pokemonImage1.image = UIImage(named: "dugtrio")!
                            }
                if value1.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage1.image = UIImage(named: "alolan dugtrio")!
                            }
                if value1.lowercased() == "meowth"
                            {
                                pokemonImage1.image = UIImage(named: "meowth")!
                            }
                if value1.lowercased() == "alolan meowth"
                            {
                                pokemonImage1.image = UIImage(named: "alolan meowth")!
                            }
                if value1.lowercased() == "persian"
                            {
                                pokemonImage1.image = UIImage(named: "persian")!
                            }
                if value1.lowercased() == "alolan persian"
                            {
                                pokemonImage1.image = UIImage(named: "alolan persian")!
                            }

                if value1.lowercased() == "psyduck"
                            {
                                pokemonImage1.image = UIImage(named: "psyduck")!
                            }
                if value1.lowercased() == "golduck"
                            {
                                pokemonImage1.image = UIImage(named: "golduck")!
                            }
                if value1.lowercased() == "mankey"
                            {
                                pokemonImage1.image = UIImage(named: "mankey")!
                            }
                if value1.lowercased() == "primeape"
                            {
                                pokemonImage1.image = UIImage(named: "primeape")!
                            }
                if value1.lowercased() == "growlithe"
                            {
                                pokemonImage1.image = UIImage(named: "growlithe")!
                            }
                if value1.lowercased() == "arcanine"
                            {
                                pokemonImage1.image = UIImage(named: "arcanine")!
                            }
                if value1.lowercased() == "poliwag"
                            {
                                pokemonImage1.image = UIImage(named: "poliwag")!
                            }
                if value1.lowercased() == "poliwhirl"
                            {
                                pokemonImage1.image = UIImage(named: "poliwhirl")!
                            }
                if value1.lowercased() == "poliwrath"
                            {
                                pokemonImage1.image = UIImage(named: "poliwrath")!
                            }
                if value1.lowercased() == "abra"
                            {
                                pokemonImage1.image = UIImage(named: "abra")!
                            }
                if value1.lowercased() == "kadabra"
                            {
                                pokemonImage1.image = UIImage(named: "kadabra")!
                            }
                if value1.lowercased() == "alakazam"
                            {
                                pokemonImage1.image = UIImage(named: "alakazam")!
                            }
                if value1.lowercased() == "machop"
                            {
                                pokemonImage1.image = UIImage(named: "machop")!
                            }
                if value1.lowercased() == "machoke"
                            {
                                pokemonImage1.image = UIImage(named: "machoke")!
                            }
                if value1.lowercased() == "machamp"
                            {
                                pokemonImage1.image = UIImage(named: "machamp")!
                            }
                if value1.lowercased() == "bellsprout"
                            {
                                pokemonImage1.image = UIImage(named: "bellsprout")!
                            }
                if value1.lowercased() == "weepinbell"
                            {
                                pokemonImage1.image = UIImage(named: "weepinbell")!
                            }
                if value1.lowercased() == "victreebel"
                            {
                                pokemonImage1.image = UIImage(named: "victreebel")!
                            }
                if value1.lowercased() == "tentacool"
                            {
                                pokemonImage1.image = UIImage(named: "tentacool")!
                            }
                if value1.lowercased() == "tentacruel"
                            {
                                pokemonImage1.image = UIImage(named: "tentacruel")!
                            }
                if value1.lowercased() == "geodude"
                            {
                                pokemonImage1.image = UIImage(named: "geodude")!
                            }
                if value1.lowercased() == "alolan geodude"
                            {
                                pokemonImage1.image = UIImage(named: "alolan geodude")!
                            }
                if value1.lowercased() == "graveler"
                            {
                                pokemonImage1.image = UIImage(named: "graveler")!
                            }
                if value1.lowercased() == "alolan graveler"
                            {
                                pokemonImage1.image = UIImage(named: "alolan graveler")!
                            }
                if value1.lowercased() == "golem"
                            {
                                pokemonImage1.image = UIImage(named: "golem")!
                            }
                if value1.lowercased() == "alolan golem"
                            {
                                pokemonImage1.image = UIImage(named: "alolan golem")!
                            }
                if value1.lowercased() == "ponyta"
                            {
                                pokemonImage1.image = UIImage(named: "ponyta")!
                            }
                if value1.lowercased() == "rapidash"
                            {
                                pokemonImage1.image = UIImage(named: "rapidash")!
                            }
                if value1.lowercased() == "slowpoke"
                            {
                                pokemonImage1.image = UIImage(named: "slowpoke")!
                            }
                if value1.lowercased() == "slowbro"
                            {
                                pokemonImage1.image = UIImage(named: "slowbro")!
                            }
                if value1.lowercased() == "magnemite"
                            {
                                pokemonImage1.image = UIImage(named: "magnemite")!
                            }
                if value1.lowercased() == "magneton"
                            {
                                pokemonImage1.image = UIImage(named: "magneton")!
                            }
                if value1.lowercased() == "farfetch’d"
                            {
                                pokemonImage1.image = UIImage(named: "farfetch’d")!
                            }
                if value1.lowercased() == "doduo"
                            {
                                pokemonImage1.image = UIImage(named: "doduo")!
                            }
                if value1.lowercased() == "dodrio"
                            {
                                pokemonImage1.image = UIImage(named: "dodrio")!
                            }
                if value1.lowercased() == "seel"
                            {
                                pokemonImage1.image = UIImage(named: "seel")!
                            }
                if value1.lowercased() == "dewgong"
                            {
                                pokemonImage1.image = UIImage(named: "dewgong")!
                            }
                if value1.lowercased() == "grimer"
                            {
                                pokemonImage1.image = UIImage(named: "grimer")!
                            }
                if value1.lowercased() == "alolan grimer"
                            {
                                pokemonImage1.image = UIImage(named: "alolan grimer")!
                            }
                if value1.lowercased() == "muk"
                            {
                                pokemonImage1.image = UIImage(named: "muk")!
                            }
                if value1.lowercased() == "alolan muk"
                            {
                                pokemonImage1.image = UIImage(named: "alolan muk")!
                            }
                if value1.lowercased() == "shellder"
                            {
                                pokemonImage1.image = UIImage(named: "shellder")!
                            }
                if value1.lowercased() == "cloyster"
                            {
                                pokemonImage1.image = UIImage(named: "cloyster")!
                            }
                if value1.lowercased() == "gastly"
                            {
                                pokemonImage1.image = UIImage(named: "gastly")!
                            }
                if value1.lowercased() == "haunter"
                            {
                                pokemonImage1.image = UIImage(named: "haunter")!
                            }
                if value1.lowercased() == "gengar"
                            {
                                pokemonImage1.image = UIImage(named: "gengar")!
                            }
                if value1.lowercased() == "onix"
                            {
                                pokemonImage1.image = UIImage(named: "onix")!
                            }
                if value1.lowercased() == "drowzee"
                            {
                                pokemonImage1.image = UIImage(named: "drowzee")!
                            }
                if value1.lowercased() == "hypno"
                            {
                                pokemonImage1.image = UIImage(named: "hypno")!
                            }
                if value1.lowercased() == "krabby"
                            {
                                pokemonImage1.image = UIImage(named: "krabby")!
                            }
                if value1.lowercased() == "kingler"
                            {
                                pokemonImage1.image = UIImage(named: "kingler")!
                            }
                if value1.lowercased() == "voltorb"
                            {
                                pokemonImage1.image = UIImage(named: "voltorb")!
                            }
                if value1.lowercased() == "electrode"
                            {
                                pokemonImage1.image = UIImage(named: "electrode")!
                            }
                if value1.lowercased() == "exeggcute"
                            {
                                pokemonImage1.image = UIImage(named: "exeggcute")!
                            }
                if value1.lowercased() == "exeggutor"
                            {
                                pokemonImage1.image = UIImage(named: "exeggutor")!
                            }
                if value1.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage1.image = UIImage(named: "alolan exeggutor")!
                            }
                if value1.lowercased() == "cubone"
                            {
                                pokemonImage1.image = UIImage(named: "cubone")!
                            }
                if value1.lowercased() == "marowak"
                            {
                                pokemonImage1.image = UIImage(named: "marowak")!
                            }
                if value1.lowercased() == "alolan marowak"
                            {
                                pokemonImage1.image = UIImage(named: "alolan marowak")!
                            }
                if value1.lowercased() == "hitmonlee"
                            {
                                pokemonImage1.image = UIImage(named: "hitmonlee")!
                            }
                if value1.lowercased() == "hitmonchan"
                            {
                                pokemonImage1.image = UIImage(named: "hitmonchan")!
                            }
                if value1.lowercased() == "lickitung"
                            {
                                pokemonImage1.image = UIImage(named: "lickitung")!
                            }
                if value1.lowercased() == "koffing"
                            {
                                pokemonImage1.image = UIImage(named: "koffing")!
                            }
                if value1.lowercased() == "weezing"
                            {
                                pokemonImage1.image = UIImage(named: "weezing")!
                            }
                if value1.lowercased() == "rhyhorn"
                            {
                                pokemonImage1.image = UIImage(named: "rhyhorn")!
                            }
                if value1.lowercased() == "rhydon"
                            {
                                pokemonImage1.image = UIImage(named: "rhydon")!
                            }
                if value1.lowercased() == "chansey"
                            {
                                pokemonImage1.image = UIImage(named: "chansey")!
                            }
                if value1.lowercased() == "tangela"
                            {
                                pokemonImage1.image = UIImage(named: "tangela")!
                            }
                if value1.lowercased() == "kangaskhan"
                            {
                                pokemonImage1.image = UIImage(named: "kangaskhan")!
                            }
                if value1.lowercased() == "horsea"
                            {
                                pokemonImage1.image = UIImage(named: "horsea")!
                            }
                if value1.lowercased() == "seadra"
                            {
                                pokemonImage1.image = UIImage(named: "seadra")!
                            }
                if value1.lowercased() == "goldeen"
                            {
                                pokemonImage1.image = UIImage(named: "goldeen")!
                            }
                if value1.lowercased() == "seaking"
                            {
                                pokemonImage1.image = UIImage(named: "seaking")!
                            }
                if value1.lowercased() == "staryu"
                            {
                                pokemonImage1.image = UIImage(named: "staryu")!
                            }
                if value1.lowercased() == "starmie"
                            {
                                pokemonImage1.image = UIImage(named: "starmie")!
                            }
                if value1.lowercased() == "mr.mime"
                            {
                                pokemonImage1.image = UIImage(named: "mr.mime")!
                            }
                if value1.lowercased() == "scyther"
                            {
                                pokemonImage1.image = UIImage(named: "scyther")!
                            }
                if value1.lowercased() == "jynx"
                            {
                                pokemonImage1.image = UIImage(named: "jynx")!
                            }
                if value1.lowercased() == "electabuzz"
                            {
                                pokemonImage1.image = UIImage(named: "electabuzz")!
                            }
                if value1.lowercased() == "magmar"
                            {
                                pokemonImage1.image = UIImage(named: "magmar")!
                            }
                if value1.lowercased() == "pinsir"
                            {
                                pokemonImage1.image = UIImage(named: "pinsir")!
                            }
                if value1.lowercased() == "tauros"
                            {
                                pokemonImage1.image = UIImage(named: "tauros")!
                            }
                if value1.lowercased() == "magikarp"
                            {
                                pokemonImage1.image = UIImage(named: "magikarp")!
                            }
                if value1.lowercased() == "gyarados"
                            {
                                pokemonImage1.image = UIImage(named: "gyarados")!
                            }
                if value1.lowercased() == "lapras"
                            {
                                pokemonImage1.image = UIImage(named: "lapras")!
                            }
                if value1.lowercased() == "ditto"
                            {
                                pokemonImage1.image = UIImage(named: "ditto")!
                            }
                if value1.lowercased() == "eevee"
                            {
                                pokemonImage1.image = UIImage(named: "eevee")!
                            }
                if value1.lowercased() == "vaporeon"
                            {
                                pokemonImage1.image = UIImage(named: "vaporeon")!
                            }
                if value1.lowercased() == "jolteon"
                            {
                                pokemonImage1.image = UIImage(named: "jolteon")!
                            }
                if value1.lowercased() == "flareon"
                            {
                                pokemonImage1.image = UIImage(named: "flareon")!
                            }
                if value1.lowercased() == "porygon"
                            {
                                pokemonImage1.image = UIImage(named: "porygon")!
                            }
                if value1.lowercased() == "omanyte"
                            {
                                pokemonImage1.image = UIImage(named: "omanyte")!
                            }
                if value1.lowercased() == "omastar"
                            {
                                pokemonImage1.image = UIImage(named: "omastar")!
                            }
                if value1.lowercased() == "kabuto"
                            {
                                pokemonImage1.image = UIImage(named: "kabuto")!
                            }
                if value1.lowercased() == "kabutops"
                            {
                                pokemonImage1.image = UIImage(named: "kabutops")!
                            }
                if value1.lowercased() == "aerodactyl"
                            {
                                pokemonImage1.image = UIImage(named: "aerodactyl")!
                            }
                if value1.lowercased() == "snorlax"
                            {
                                pokemonImage1.image = UIImage(named: "snorlax")!
                            }
                if value1.lowercased() == "articuno"
                            {
                                pokemonImage1.image = UIImage(named: "articuno")!
                            }
                if value1.lowercased() == "zapdos"
                            {
                                pokemonImage1.image = UIImage(named: "zapdos")!
                            }
                if value1.lowercased() == "moltres"
                            {
                                pokemonImage1.image = UIImage(named: "moltres")!
                            }
                if value1.lowercased() == "dratini"
                            {
                                pokemonImage1.image = UIImage(named: "dratini")!
                            }
                if value1.lowercased() == "dragonair"
                            {
                                pokemonImage1.image = UIImage(named: "dragonair")!
                            }
                if value1.lowercased() == "mewtwo"
                            {
                                pokemonImage1.image = UIImage(named: "mewtwo")!
                            }
                if value1.lowercased() == "mew"
                            {
                                pokemonImage1.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value1.lowercased() == "chikorita"
                            {
                                pokemonImage1.image = UIImage(named: "chikorita")!
                            }
                if value1.lowercased() == "bayleef"
                            {
                                pokemonImage1.image = UIImage(named: "bayleef")!
                            }
                if value1.lowercased() == "meganium"
                            {
                                pokemonImage1.image = UIImage(named: "meganium")!
                            }
                if value1.lowercased() == "cyndaquil"
                            {
                                pokemonImage1.image = UIImage(named: "cyndaquil")!
                            }
                if value1.lowercased() == "quilava"
                            {
                                pokemonImage1.image = UIImage(named: "quilava")!
                            }
                if value1.lowercased() == "typhlosion"
                            {
                                pokemonImage1.image = UIImage(named: "typhlosion")!
                            }
                if value1.lowercased() == "totodile"
                            {
                                pokemonImage1.image = UIImage(named: "totodile")!
                            }
                if value1.lowercased() == "croconaw"
                            {
                                pokemonImage1.image = UIImage(named: "croconaw")!
                            }
                if value1.lowercased() == "feraligatr"
                            {
                                pokemonImage1.image = UIImage(named: "feraligatr")!
                            }
                if value1.lowercased() == "sentret"
                            {
                                pokemonImage1.image = UIImage(named: "sentret")!
                            }
                if value1.lowercased() == "furret"
                            {
                                pokemonImage1.image = UIImage(named: "furret")!
                            }
                if value1.lowercased() == "hoothoot"
                            {
                                pokemonImage1.image = UIImage(named: "hoothoot")!
                            }
                if value1.lowercased() == "noctowl"
                            {
                                pokemonImage1.image = UIImage(named: "noctowl")!
                            }
                if value1.lowercased() == "ledyba"
                            {
                                pokemonImage1.image = UIImage(named: "ledyba")!
                            }
                if value1.lowercased() == "ledian"
                            {
                                pokemonImage1.image = UIImage(named: "ledian")!
                            }
                if value1.lowercased() == "spinarak"
                            {
                                pokemonImage1.image = UIImage(named: "spinarak")!
                            }
                if value1.lowercased() == "ariados"
                            {
                                pokemonImage1.image = UIImage(named: "ariados")!
                            }
                if value1.lowercased() == "crobat"
                            {
                                pokemonImage1.image = UIImage(named: "crobat")!
                            }
                if value1.lowercased() == "chinchou"
                            {
                                pokemonImage1.image = UIImage(named: "chinchou")!
                            }
                if value1.lowercased() == "lanturn"
                            {
                                pokemonImage1.image = UIImage(named: "lanturn")!
                            }
                if value1.lowercased() == "pichu"
                            {
                                pokemonImage1.image = UIImage(named: "pichu")!
                            }
                 if value1.lowercased() == "cleffa"
                            {
                                pokemonImage1.image = UIImage(named: "cleffa")!
                            }
                if value1.lowercased() == "igglybuff"
                            {
                                pokemonImage1.image = UIImage(named: "igglybuff")!
                            }
                if value1.lowercased() == "togepi"
                            {
                                pokemonImage1.image = UIImage(named: "togepi")!
                            }
                if value1.lowercased() == "togetic"
                            {
                                pokemonImage1.image = UIImage(named: "togetic")!
                            }
                if value1.lowercased() == "natu"
                            {
                                pokemonImage1.image = UIImage(named: "natu")!
                            }
                if value1.lowercased() == "xatu"
                            {
                                pokemonImage1.image = UIImage(named: "xatu")!
                            }
                if value1.lowercased() == "mareep"
                            {
                                pokemonImage1.image = UIImage(named: "mareep")!
                            }
                if value1.lowercased() == "flaaffy"
                            {
                                pokemonImage1.image = UIImage(named: "flaaffy")!
                            }
                if value1.lowercased() == "ampharos"
                            {
                                pokemonImage1.image = UIImage(named: "ampharos")!
                            }
                if value1.lowercased() == "bellossom"
                            {
                                pokemonImage1.image = UIImage(named: "bellossom")!
                            }
                 if value1.lowercased() == "marill"
                            {
                                pokemonImage1.image = UIImage(named: "marill")!
                            }
                if value1.lowercased() == "azumarill"
                            {
                                pokemonImage1.image = UIImage(named: "azumarill")!
                            }
                if value1.lowercased() == "sudowoodo"
                            {
                                pokemonImage1.image = UIImage(named: "sudowoodo")!
                            }
                if value1.lowercased() == "politoed"
                            {
                                pokemonImage1.image = UIImage(named: "politoed")!
                            }
                if value1.lowercased() == "hoppip"
                            {
                                pokemonImage1.image = UIImage(named: "hoppip")!
                            }
                if value1.lowercased() == "skiploom"
                            {
                                pokemonImage1.image = UIImage(named: "skiploom")!
                            }
                if value1.lowercased() == "jumpluff"
                            {
                                pokemonImage1.image = UIImage(named: "jumpluff")!
                            }
                if value1.lowercased() == "aipom"
                            {
                                pokemonImage1.image = UIImage(named: "aipom")!
                            }
                if value1.lowercased() == "sunkern"
                            {
                                pokemonImage1.image = UIImage(named: "sunkern")!
                            }
                if value1.lowercased() == "sunflora"
                            {
                                pokemonImage1.image = UIImage(named: "sunflora")!
                            }
                if value1.lowercased() == "yanma"
                            {
                                pokemonImage1.image = UIImage(named: "yanma")!
                            }
                if value1.lowercased() == "wooper"
                            {
                                pokemonImage1.image = UIImage(named: "wooper")!
                            }
                if value1.lowercased() == "quagsire"
                            {
                                pokemonImage1.image = UIImage(named: "quagsire")!
                            }
                if value1.lowercased() == "espeon"
                            {
                                pokemonImage1.image = UIImage(named: "espeon")!
                            }
                if value1.lowercased() == "umbreon"
                            {
                                pokemonImage1.image = UIImage(named: "umbreon")!
                            }
                if value1.lowercased() == "murkrow"
                            {
                                pokemonImage1.image = UIImage(named: "murkrow")!
                            }
                if value1.lowercased() == "slowking"
                            {
                                pokemonImage1.image = UIImage(named: "slowking")!
                            }
                if value1.lowercased() == "girafarig"
                            {
                                pokemonImage1.image = UIImage(named: "girafarig")!
                            }
                if value1.lowercased() == "misdreavus"
                            {
                                pokemonImage1.image = UIImage(named: "misdreavus")!
                            }
                if value1.lowercased() == "unown"
                            {
                                pokemonImage1.image = UIImage(named: "unown")!
                            }
                if value1.lowercased() == "wobbuffet"
                            {
                                pokemonImage1.image = UIImage(named: "wobbuffet")!
                            }
                if value1.lowercased() == "pineco"
                            {
                                pokemonImage1.image = UIImage(named: "pineco")!
                            }
                if value1.lowercased() == "forretress"
                            {
                                pokemonImage1.image = UIImage(named: "forretress")!
                            }
                if value1.lowercased() == "dunsparce"
                            {
                                pokemonImage1.image = UIImage(named: "dunsparce")!
                            }
                if value1.lowercased() == "gligar"
                            {
                                pokemonImage1.image = UIImage(named: "gligar")!
                            }
                if value1.lowercased() == "steelix"
                            {
                                pokemonImage1.image = UIImage(named: "steelix")!
                            }
                if value1.lowercased() == "snubbull"
                            {
                                pokemonImage1.image = UIImage(named: "snubbull")!
                            }
                if value1.lowercased() == "granbull"
                            {
                                pokemonImage1.image = UIImage(named: "granbull")!
                            }
                if value1.lowercased() == "qwilfish"
                            {
                                pokemonImage1.image = UIImage(named: "qwilfish")!
                            }
                if value1.lowercased() == "scizor"
                            {
                                pokemonImage1.image = UIImage(named: "scizor")!
                            }
                if value1.lowercased() == "shuckle"
                            {
                                pokemonImage1.image = UIImage(named: "shuckle")!
                            }
                if value1.lowercased() == "heracross"
                            {
                                pokemonImage1.image = UIImage(named: "heracross")!
                            }
                if value1.lowercased() == "sneasel"
                            {
                                pokemonImage1.image = UIImage(named: "sneasel")!
                            }
                if value1.lowercased() == "teddiursa"
                            {
                                pokemonImage1.image = UIImage(named: "teddiursa")!
                            }
                if value1.lowercased() == "ursaring"
                            {
                                pokemonImage1.image = UIImage(named: "ursaring")!
                            }
                if value1.lowercased() == "slugma"
                            {
                                pokemonImage1.image = UIImage(named: "slugma")!
                            }
                if value1.lowercased() == "magcargo"
                            {
                                pokemonImage1.image = UIImage(named: "magcargo")!
                            }
                if value1.lowercased() == "swinub"
                            {
                                pokemonImage1.image = UIImage(named: "swinub")!
                            }
                if value1.lowercased() == "piloswine"
                            {
                                pokemonImage1.image = UIImage(named: "piloswine")!
                            }
                if value1.lowercased() == "corsola"
                            {
                                pokemonImage1.image = UIImage(named: "corsola")!
                            }
                if value1.lowercased() == "remoraid"
                            {
                                pokemonImage1.image = UIImage(named: "remoraid")!
                            }
                if value1.lowercased() == "octillery"
                            {
                                pokemonImage1.image = UIImage(named: "octillery")!
                            }
                if value1.lowercased() == "delibird"
                            {
                                pokemonImage1.image = UIImage(named: "delibird")!
                            }
                if value1.lowercased() == "mantine"
                            {
                                pokemonImage1.image = UIImage(named: "mantine")!
                            }
                 if value1.lowercased() == "skarmory"
                            {
                                pokemonImage1.image = UIImage(named: "skarmory")!
                            }
                if value1.lowercased() == "houndour"
                            {
                                pokemonImage1.image = UIImage(named: "houndour")!
                            }
                if value1.lowercased() == "houndoom"
                            {
                                pokemonImage1.image = UIImage(named: "houndoom")!
                            }
                if value1.lowercased() == "kingdra"
                            {
                                pokemonImage1.image = UIImage(named: "kingdra")!
                            }
                if value1.lowercased() == "phanpy"
                            {
                                pokemonImage1.image = UIImage(named: "phanpy")!
                            }
                if value1.lowercased() == "donphan"
                            {
                                pokemonImage1.image = UIImage(named: "donphan")!
                            }
                if value1.lowercased() == "porygon2"
                            {
                                pokemonImage1.image = UIImage(named: "porygon2")!
                            }
                if value1.lowercased() == "stantler"
                            {
                                pokemonImage1.image = UIImage(named: "stantler")!
                            }
                if value1.lowercased() == "smeargle"
                            {
                                pokemonImage1.image = UIImage(named: "smeargle")!
                            }
                if value1.lowercased() == "tyrogue"
                            {
                                pokemonImage1.image = UIImage(named: "tyrogue")!
                            }
                if value1.lowercased() == "hitmontop"
                            {
                                pokemonImage1.image = UIImage(named: "hitmontop")!
                            }
                if value1.lowercased() == "smoochum"
                            {
                                pokemonImage1.image = UIImage(named: "smoochum")!
                            }
                if value1.lowercased() == "elekid"
                            {
                                pokemonImage1.image = UIImage(named: "elekid")!
                            }
                if value1.lowercased() == "magby"
                            {
                                pokemonImage1.image = UIImage(named: "magby")!
                            }
                if value1.lowercased() == "miltank"
                            {
                                pokemonImage1.image = UIImage(named: "miltank")!
                            }
                if value1.lowercased() == "blissey"
                            {
                                pokemonImage1.image = UIImage(named: "blissey")!
                            }
                if value1.lowercased() == "raikou"
                            {
                                pokemonImage1.image = UIImage(named: "raikou")!
                            }
                if value1.lowercased() == "entei"
                            {
                                pokemonImage1.image = UIImage(named: "entei")!
                            }
                if value1.lowercased() == "suicune"
                            {
                                pokemonImage1.image = UIImage(named: "suicune")!
                            }
                if value1.lowercased() == "larvitar"
                            {
                                pokemonImage1.image = UIImage(named: "larvitar")!
                            }
                if value1.lowercased() == "pupitar"
                            {
                                pokemonImage1.image = UIImage(named: "pupitar")!
                            }
                if value1.lowercased() == "tyranitar"
                            {
                                pokemonImage1.image = UIImage(named: "tyranitar")!
                            }
                if value1.lowercased() == "ho-oh"
                            {
                                pokemonImage1.image = UIImage(named: "ho-oh")!
                            }
                if value1.lowercased() == "lugia"
                            {
                                pokemonImage1.image = UIImage(named: "lugia")!
                            }
                if value1.lowercased() == "celebi"
                            {
                                pokemonImage1.image = UIImage(named: "celebi")!
                            }
                if value1.lowercased() == "treecko"
                            {
                                pokemonImage1.image = UIImage(named: "treecko")!
                            }
                if value1.lowercased() == "grovyle"
                            {
                                pokemonImage1.image = UIImage(named: "grovyle")!
                            }
                if value1.lowercased() == "sceptile"
                            {
                                pokemonImage1.image = UIImage(named: "sceptile")!
                            }
                if value1.lowercased() == "torchic"
                            {
                                pokemonImage1.image = UIImage(named: "torchic")!
                            }
                if value1.lowercased() == "combusken"
                            {
                                pokemonImage1.image = UIImage(named: "combusken")!
                            }
                if value1.lowercased() == "blaziken"
                            {
                                pokemonImage1.image = UIImage(named: "blaziken")!
                            }
                if value1.lowercased() == "mudkip"
                            {
                                pokemonImage1.image = UIImage(named: "mudkip")!
                            }
                if value1.lowercased() == "marshtomp"
                            {
                                pokemonImage1.image = UIImage(named: "marshtomp")!
                            }
                if value1.lowercased() == "swampert"
                            {
                                pokemonImage1.image = UIImage(named: "swampert")!
                            }
                if value1.lowercased() == "poochyena"
                            {
                                pokemonImage1.image = UIImage(named: "poochyena")!
                            }
                if value1.lowercased() == "mightyena"
                            {
                                pokemonImage1.image = UIImage(named: "mightyena")!
                            }
                if value1.lowercased() == "zigzagoon"
                            {
                                pokemonImage1.image = UIImage(named: "zigzagoon")!
                            }
                if value1.lowercased() == "linoone"
                            {
                                pokemonImage1.image = UIImage(named: "linoone")!
                            }
                if value1.lowercased() == "wurmple"
                            {
                                pokemonImage1.image = UIImage(named: "wurmple")!
                            }
                if value1.lowercased() == "silcoon"
                            {
                                pokemonImage1.image = UIImage(named: "silcoon")!
                            }
                if value1.lowercased() == "beautifly"
                            {
                                pokemonImage1.image = UIImage(named: "beautifly")!
                            }
                if value1.lowercased() == "cascoon"
                            {
                                pokemonImage1.image = UIImage(named: "cascoon")!
                            }
                if value1.lowercased() == "dustox"
                            {
                                pokemonImage1.image = UIImage(named: "dustox")!
                            }
                if value1.lowercased() == "lotad"
                            {
                                pokemonImage1.image = UIImage(named: "lotad")!
                            }
                if value1.lowercased() == "lombre"
                            {
                                pokemonImage1.image = UIImage(named: "lombre")!
                            }
                if value1.lowercased() == "ludicolo"
                            {
                                pokemonImage1.image = UIImage(named: "ludicolo")!
                            }
                if value1.lowercased() == "seedot"
                            {
                                pokemonImage1.image = UIImage(named: "seedot")!
                            }
                if value1.lowercased() == "nuzleaf"
                            {
                                pokemonImage1.image = UIImage(named: "nuzleaf")!
                            }
                if value1.lowercased() == "shiftry"
                            {
                                pokemonImage1.image = UIImage(named: "shiftry")!
                            }
                if value1.lowercased() == "taillow"
                            {
                                pokemonImage1.image = UIImage(named: "taillow")!
                            }
                if value1.lowercased() == "swellow"
                                    {
                                        pokemonImage1.image = UIImage(named: "swellow")!
                                    }
                if value1.lowercased() == "wingull"
                            {
                                pokemonImage1.image = UIImage(named: "wingull")!
                            }
                if value1.lowercased() == "pelipper"
                            {
                                pokemonImage1.image = UIImage(named: "pelipper")!
                            }
                if value1.lowercased() == "ralts"
                            {
                                pokemonImage1.image = UIImage(named: "ralts")!
                            }
                if value1.lowercased() == "kirlia"
                            {
                                pokemonImage1.image = UIImage(named: "kirlia")!
                            }
                if value1.lowercased() == "gardevoir"
                            {
                                pokemonImage1.image = UIImage(named: "gardevoir")!
                            }
                if value1.lowercased() == "surskit"
                            {
                                pokemonImage1.image = UIImage(named: "surskit")!
                            }
                if value1.lowercased() == "masquerain"
                            {
                                pokemonImage1.image = UIImage(named: "masquerain")!
                            }
                if value1.lowercased() == "shroomish"
                            {
                                pokemonImage1.image = UIImage(named: "shroomish")!
                            }
                if value1.lowercased() == "breloom"
                            {
                                pokemonImage1.image = UIImage(named: "breloom")!
                            }
                if value1.lowercased() == "slakoth"
                            {
                                pokemonImage1.image = UIImage(named: "slakoth")!
                            }
                if value1.lowercased() == "vigoroth"
                            {
                                pokemonImage1.image = UIImage(named: "vigoroth")!
                            }
                if value1.lowercased() == "slaking"
                            {
                                pokemonImage1.image = UIImage(named: "slaking")!
                            }
                if value1.lowercased() == "nincada"
                            {
                                pokemonImage1.image = UIImage(named: "nincada")!
                            }
                if value1.lowercased() == "ninjask"
                            {
                                pokemonImage1.image = UIImage(named: "ninjask")!
                            }
                if value1.lowercased() == "shedinja"
                            {
                                pokemonImage1.image = UIImage(named: "shedinja")!
                            }
                if value1.lowercased() == "whismur"
                            {
                                pokemonImage1.image = UIImage(named: "whismur")!
                            }
                if value1.lowercased() == "loudred"
                            {
                                pokemonImage1.image = UIImage(named: "loudred")!
                            }
                if value1.lowercased() == "exploud"
                            {
                                pokemonImage1.image = UIImage(named: "exploud")!
                            }
                if value1.lowercased() == "makuhita"
                            {
                                pokemonImage1.image = UIImage(named: "makuhita")!
                            }
                if value1.lowercased() == "hariyama"
                            {
                                pokemonImage1.image = UIImage(named: "hariyama")!
                            }
                if value1.lowercased() == "azurill"
                            {
                                pokemonImage1.image = UIImage(named: "azurill")!
                            }
                if value1.lowercased() == "nosepass"
                            {
                                pokemonImage1.image = UIImage(named: "nosepass")!
                            }
                if value1.lowercased() == "skitty"
                            {
                                pokemonImage1.image = UIImage(named: "skitty")!
                            }
                if value1.lowercased() == "delcatty"
                            {
                                pokemonImage1.image = UIImage(named: "delcatty")!
                            }
                if value1.lowercased() == "sableye"
                            {
                                pokemonImage1.image = UIImage(named: "sableye")!
                            }
                if value1.lowercased() == "mawile"
                            {
                                pokemonImage1.image = UIImage(named: "mawile")!
                            }
                if value1.lowercased() == "aron"
                            {
                                pokemonImage1.image = UIImage(named: "aron")!
                            }
                if value1.lowercased() == "lairon"
                            {
                                pokemonImage1.image = UIImage(named: "lairon")!
                            }
                if value1.lowercased() == "aggron"
                            {
                                pokemonImage1.image = UIImage(named: "aggron")!
                            }
                if value1.lowercased() == "meditite"
                            {
                                pokemonImage1.image = UIImage(named: "meditite")!
                            }
                if value1.lowercased() == "medicham"
                            {
                                pokemonImage1.image = UIImage(named: "medicham")!
                            }
                if value1.lowercased() == "electrike"
                            {
                                pokemonImage1.image = UIImage(named: "electrike")!
                            }
                if value1.lowercased() == "manectric"
                            {
                                pokemonImage1.image = UIImage(named: "manectric")!
                            }
                if value1.lowercased() == "plusle"
                            {
                                pokemonImage1.image = UIImage(named: "plusle")!
                            }
                if value1.lowercased() == "minun"
                            {
                                pokemonImage1.image = UIImage(named: "minun")!
                            }
                if value1.lowercased() == "volbeat"
                            {
                                pokemonImage1.image = UIImage(named: "volbeat")!
                            }
                if value1.lowercased() == "illumise"
                            {
                                pokemonImage1.image = UIImage(named: "illumise")!
                            }
                if value1.lowercased() == "roselia"
                            {
                                pokemonImage1.image = UIImage(named: "roselia")!
                            }
                if value1.lowercased() == "gulpin"
                            {
                                pokemonImage1.image = UIImage(named: "gulpin")!
                            }
                if value1.lowercased() == "swalot"
                            {
                                pokemonImage1.image = UIImage(named: "swalot")!
                            }
                if value1.lowercased() == "carvana"
                            {
                                pokemonImage1.image = UIImage(named: "carvana")!
                            }
                if value1.lowercased() == "sharpedo"
                            {
                                pokemonImage1.image = UIImage(named: "sharpedo")!
                            }
                if value1.lowercased() == "wailmer"
                            {
                                pokemonImage1.image = UIImage(named: "wailmer")!
                            }
                if value1.lowercased() == "wailord"
                            {
                                pokemonImage1.image = UIImage(named: "wailord")!
                            }
                if value1.lowercased() == "numel"
                            {
                                pokemonImage1.image = UIImage(named: "numel")!
                            }
                if value1.lowercased() == "camerupt"
                            {
                                pokemonImage1.image = UIImage(named: "camerupt")!
                            }
                if value1.lowercased() == "torkoal"
                            {
                                pokemonImage1.image = UIImage(named: "torkoal")!
                            }
                if value1.lowercased() == "spoink"
                            {
                                pokemonImage1.image = UIImage(named: "spoink")!
                            }
                if value1.lowercased() == "grumpig"
                            {
                                pokemonImage1.image = UIImage(named: "grumpig")!
                            }
                if value1.lowercased() == "spinda"
                            {
                                pokemonImage1.image = UIImage(named: "spinda")!
                            }
                if value1.lowercased() == "trapinch"
                            {
                                pokemonImage1.image = UIImage(named: "trapinch")!
                            }
                if value1.lowercased() == "vibrava"
                            {
                                pokemonImage1.image = UIImage(named: "vibrava")!
                            }
                if value1.lowercased() == "flygon"
                            {
                                pokemonImage1.image = UIImage(named: "flygon")!
                            }
                if value1.lowercased() == "cacnea"
                            {
                                pokemonImage1.image = UIImage(named: "cacnea")!
                            }
                if value1.lowercased() == "cacturne"
                            {
                                pokemonImage1.image = UIImage(named: "cacturne")!
                            }
                if value1.lowercased() == "swablu"
                            {
                                pokemonImage1.image = UIImage(named: "swablu")!
                            }
                if value1.lowercased() == "altaria"
                            {
                                pokemonImage1.image = UIImage(named: "altaria")!
                            }
                if value1.lowercased() == "zangoose"
                            {
                                pokemonImage1.image = UIImage(named: "zangoose")!
                            }
                if value1.lowercased() == "seviper"
                            {
                                pokemonImage1.image = UIImage(named: "seviper")!
                            }
                if value1.lowercased() == "lunatone"
                            {
                                pokemonImage1.image = UIImage(named: "lunatone")!
                            }
                if value1.lowercased() == "solrock"
                            {
                                pokemonImage1.image = UIImage(named: "solrock")!
                            }
                if value1.lowercased() == "barboach"
                            {
                                pokemonImage1.image = UIImage(named: "barboach")!
                            }
                if value1.lowercased() == "whiscash"
                            {
                                pokemonImage1.image = UIImage(named: "whiscash")!
                            }
                if value1.lowercased() == "corphish"
                            {
                                pokemonImage1.image = UIImage(named: "corphish")!
                            }
                if value1.lowercased() == "crawdaunt"
                            {
                                pokemonImage1.image = UIImage(named: "crawdaunt")!
                            }
                if value1.lowercased() == "baltoy"
                            {
                                pokemonImage1.image = UIImage(named: "baltoy")!
                            }
                if value1.lowercased() == "claydol"
                            {
                                pokemonImage1.image = UIImage(named: "claydol")!
                            }
                if value1.lowercased() == "lileep"
                            {
                                pokemonImage1.image = UIImage(named: "lileep")!
                            }
                if value1.lowercased() == "cradily"
                            {
                                pokemonImage1.image = UIImage(named: "cradily")!
                            }
                if value1.lowercased() == "anorith"
                            {
                                pokemonImage1.image = UIImage(named: "anorith")!
                            }
                if value1.lowercased() == "armaldo"
                            {
                                pokemonImage1.image = UIImage(named: "armaldo")!
                            }
                if value1.lowercased() == "feebas"
                            {
                                pokemonImage1.image = UIImage(named: "feebas")!
                            }
                if value1.lowercased() == "milotic"
                            {
                                pokemonImage1.image = UIImage(named: "milotic")!
                            }
                if value1.lowercased() == "castform"
                            {
                                pokemonImage1.image = UIImage(named: "castform")!
                            }
                if value1.lowercased() == "sunny castform"
                            {
                                pokemonImage1.image = UIImage(named: "sunny castform")!
                            }
                if value1.lowercased() == "snowy castform"
                            {
                                pokemonImage1.image = UIImage(named: "snowy castform")!
                            }
                if value1.lowercased() == "rainy castform"
                            {
                                pokemonImage1.image = UIImage(named: "rainy castform")!
                            }
                if value1.lowercased() == "kecleon"
                            {
                                pokemonImage1.image = UIImage(named: "kecleon")!
                            }
                if value1.lowercased() == "shuppet"
                            {
                                pokemonImage1.image = UIImage(named: "shuppet")!
                            }
                if value1.lowercased() == "banette"
                            {
                                pokemonImage1.image = UIImage(named: "banette")!
                            }
                if value1.lowercased() == "duskull"
                            {
                                pokemonImage1.image = UIImage(named: "duskull")!
                            }
                if value1.lowercased() == "dusclops"
                            {
                                pokemonImage1.image = UIImage(named: "dusclops")!
                            }
                if value1.lowercased() == "tropius"
                            {
                                pokemonImage1.image = UIImage(named: "tropius")!
                            }
                if value1.lowercased() == "chimecho"
                            {
                                pokemonImage1.image = UIImage(named: "chimecho")!
                            }
                if value1.lowercased() == "absol"
                            {
                                pokemonImage1.image = UIImage(named: "absol")!
                            }
                if value1.lowercased() == "wynaut"
                            {
                                pokemonImage1.image = UIImage(named: "wynaut")!
                            }
                if value1.lowercased() == "snorunt"
                            {
                                pokemonImage1.image = UIImage(named: "snorunt")!
                            }
                if value1.lowercased() == "glalie"
                            {
                                pokemonImage1.image = UIImage(named: "glalie")!
                            }
                if value1.lowercased() == "spheal"
                            {
                                pokemonImage1.image = UIImage(named: "spheal")!
                            }
                if value1.lowercased() == "sealeo"
                            {
                                pokemonImage1.image = UIImage(named: "sealeo")!
                            }
                if value1.lowercased() == "walrein"
                            {
                                pokemonImage1.image = UIImage(named: "walrein")!
                            }
                if value1.lowercased() == "clamperl"
                            {
                                pokemonImage1.image = UIImage(named: "clamperl")!
                            }
                if value1.lowercased() == "huntail"
                            {
                                pokemonImage1.image = UIImage(named: "huntail")!
                            }
                if value1.lowercased() == "gorebyss"
                            {
                                pokemonImage1.image = UIImage(named: "gorebyss")!
                            }
                if value1.lowercased() == "relicanth"
                            {
                                pokemonImage1.image = UIImage(named: "relicanth")!
                            }
                if value1.lowercased() == "luvdisc"
                            {
                                pokemonImage1.image = UIImage(named: "luvdisc")!
                            }
                if value1.lowercased() == "bagon"
                            {
                                pokemonImage1.image = UIImage(named: "bagon")!
                            }
                if value1.lowercased() == "shelgon"
                            {
                                pokemonImage1.image = UIImage(named: "shelgon")!
                            }
                if value1.lowercased() == "salamence"
                            {
                                pokemonImage1.image = UIImage(named: "salamence")!
                            }
                if value1.lowercased() == "beldum"
                            {
                                pokemonImage1.image = UIImage(named: "beldum")!
                            }
                if value1.lowercased() == "metang"
                            {
                                pokemonImage1.image = UIImage(named: "metang")!
                            }
                if value1.lowercased() == "metagross"
                            {
                                pokemonImage1.image = UIImage(named: "metagross")!
                            }
                if value1.lowercased() == "regirock"
                            {
                                pokemonImage1.image = UIImage(named: "regirock")!
                            }
                if value1.lowercased() == "regice"
                            {
                                pokemonImage1.image = UIImage(named: "regice")!
                            }
                if value1.lowercased() == "registeel"
                            {
                                pokemonImage1.image = UIImage(named: "registeel")!
                            }
                if value1.lowercased() == "latias"
                            {
                                pokemonImage1.image = UIImage(named: "latias")!
                            }
                if value1.lowercased() == "latios"
                            {
                                pokemonImage1.image = UIImage(named: "latios")!
                            }
                if value1.lowercased() == "kyogre"
                            {
                                pokemonImage1.image = UIImage(named: "kyogre")!
                            }
                if value1.lowercased() == "groudon"
                            {
                                pokemonImage1.image = UIImage(named: "groudon")!
                            }
                if value1.lowercased() == "rayquaza"
                            {
                                pokemonImage1.image = UIImage(named: "rayquaza")!
                            }
                if value1.lowercased() == "jirachi"
                            {
                                pokemonImage1.image = UIImage(named: "jirachi")!
                            }
                if value1.lowercased() == "deoxys"
                            {
                                pokemonImage1.image = UIImage(named: "deoxys")!
                            }
                if value1.lowercased() == "defence deoxys"
                            {
                                pokemonImage1.image = UIImage(named: "defence deoxys")!
                            }
                if value1.lowercased() == "attack deoxys"
                            {
                                pokemonImage1.image = UIImage(named: "attack deoxys")!
                            }
                if value1.lowercased() == "speed deoxys"
                            {
                                pokemonImage1.image = UIImage(named: "speed deoxys")!
                            }
                if value1.lowercased() == "turtwig"
                            {
                                pokemonImage1.image = UIImage(named: "turtwig")!
                            }
                if value1.lowercased() == "grotle"
                            {
                                pokemonImage1.image = UIImage(named: "grotle")!
                            }
                if value1.lowercased() == "torterra"
                            {
                                pokemonImage1.image = UIImage(named: "torterra")!
                            }
                if value1.lowercased() == "chimchar"
                            {
                                pokemonImage1.image = UIImage(named: "chimchar")!
                            }
                if value1.lowercased() == "monferno"
                            {
                                pokemonImage1.image = UIImage(named: "monferno")!
                            }
                if value1.lowercased() == "infernape"
                            {
                                pokemonImage1.image = UIImage(named: "infernape")!
                            }
                if value1.lowercased() == "piplup"
                            {
                                pokemonImage1.image = UIImage(named: "piplup")!
                            }
                if value1.lowercased() == "prinplup"
                            {
                                pokemonImage1.image = UIImage(named: "prinplup")!
                            }
                if value1.lowercased() == "empoleon"
                            {
                                pokemonImage1.image = UIImage(named: "empoleon")!
                            }
                if value1.lowercased() == "starly"
                            {
                                pokemonImage1.image = UIImage(named: "starly")!
                            }
                if value1.lowercased() == "staravia"
                            {
                                pokemonImage1.image = UIImage(named: "starvaria")!
                            }
                if value1.lowercased() == "staraptor"
                            {
                                pokemonImage1.image = UIImage(named: "staraptor")!
                            }
                if value1.lowercased() == "bidoof"
                            {
                                pokemonImage1.image = UIImage(named: "bidoof")!
                            }
                if value1.lowercased() == "bibarel"
                            {
                                pokemonImage1.image = UIImage(named: "bibarel")!
                            }
                if value1.lowercased() == "kricketot"
                            {
                                pokemonImage1.image = UIImage(named: "kricketot")!
                            }
                if value1.lowercased() == "kricketune"
                            {
                                pokemonImage1.image = UIImage(named: "kricketune")!
                            }
                if value1.lowercased() == "shinx"
                            {
                                pokemonImage1.image = UIImage(named: "shinx")!
                            }
                if value1.lowercased() == "luxio"
                       {
                           pokemonImage1.image = UIImage(named: "luxio")!
                       }
                if value1.lowercased() == "luxray"
                            {
                                pokemonImage1.image = UIImage(named: "luxray")!
                            }
                if value1.lowercased() == "budew"
                            {
                                pokemonImage1.image = UIImage(named: "budew")!
                            }
                if value1.lowercased() == "roserade"
                            {
                                pokemonImage1.image = UIImage(named: "roserade")!
                            }
                if value1.lowercased() == "cranidos"
                            {
                                pokemonImage1.image = UIImage(named: "cranidos")!
                            }
                if value1.lowercased() == "rampardos"
                            {
                                pokemonImage1.image = UIImage(named: "rampardos")!
                            }
                if value1.lowercased() == "shieldon"
                            {
                                pokemonImage1.image = UIImage(named: "shieldon")!
                            }
                if value1.lowercased() == "bastiodon"
                            {
                                pokemonImage1.image = UIImage(named: "bastiodon")!
                            }
                if value1.lowercased() == "plant burmy"
                            {
                                pokemonImage1.image = UIImage(named: "plant burmy")!
                            }
                if value1.lowercased() == "trash burmy"
                            {
                                pokemonImage1.image = UIImage(named: "trash burmy")!
                            }
                if value1.lowercased() == "sand burmy"
                            {
                                pokemonImage1.image = UIImage(named: "sand burmy")!
                            }
                if value1.lowercased() == "plant wormadam"
                            {
                                pokemonImage1.image = UIImage(named: "plant wormadam")!
                            }
                if value1.lowercased() == "trash wormadam"
                            {
                                pokemonImage1.image = UIImage(named: "trash wormadam")!
                            }
                if value1.lowercased() == "sand wormadam"
                            {
                                pokemonImage1.image = UIImage(named: "sand wormadam")!
                            }
                if value1.lowercased() == "mothim"
                            {
                                pokemonImage1.image = UIImage(named: "mothim")!
                            }
                if value1.lowercased() == "combee"
                            {
                                pokemonImage1.image = UIImage(named: "combee")!
                            }
                if value1.lowercased() == "vespiquen"
                            {
                                pokemonImage1.image = UIImage(named: "vespiquen")!
                            }
                if value1.lowercased() == "pachirisu"
                            {
                                pokemonImage1.image = UIImage(named: "pachirisu")!
                            }
                if value1.lowercased() == "buizel"
                            {
                                pokemonImage1.image = UIImage(named: "buizel")!
                            }
                if value1.lowercased() == "floatzel"
                            {
                                pokemonImage1.image = UIImage(named: "floatzel")!
                            }
                if value1.lowercased() == "cherubi"
                            {
                                pokemonImage1.image = UIImage(named: "cherubi")!
                            }
                if value1.lowercased() == "overcast cherrim"
                            {
                                pokemonImage1.image = UIImage(named: "overcast cherrim")!
                            }
                if value1.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage1.image = UIImage(named: "sunshine cherrim")!
                            }
                if value1.lowercased() == "east shellos"
                            {
                                pokemonImage1.image = UIImage(named: "east shellos")!
                            }
                if value1.lowercased() == "west shellos"
                            {
                                pokemonImage1.image = UIImage(named: "west shellos")!
                            }
                if value1.lowercased() == "east gastrodon"
                            {
                                pokemonImage1.image = UIImage(named: "east gastrodon")!
                            }
                if value1.lowercased() == "west gastrodon"
                            {
                                pokemonImage1.image = UIImage(named: "west gastrodon")!
                            }
                if value1.lowercased() == "ambipom"
                            {
                                pokemonImage1.image = UIImage(named: "ambipom")!
                            }
                if value1.lowercased() == "drifloon"
                            {
                                pokemonImage1.image = UIImage(named: "drifloon")!
                            }
                if value1.lowercased() == "drifblim"
                            {
                                pokemonImage1.image = UIImage(named: "drifblim")!
                            }
                if value1.lowercased() == "buneary"
                            {
                                pokemonImage1.image = UIImage(named: "buneary")!
                            }
                if value1.lowercased() == "lopunny"
                            {
                                pokemonImage1.image = UIImage(named: "lopunny")!
                            }
                if value1.lowercased() == "mismagius"
                            {
                                pokemonImage1.image = UIImage(named: "mismagius")!
                            }
                if value1.lowercased() == "honchkrow"
                            {
                                pokemonImage1.image = UIImage(named: "honchkrow")!
                            }
                if value1.lowercased() == "glameow"
                            {
                                pokemonImage1.image = UIImage(named: "glameow")!
                            }
                if value1.lowercased() == "purugly"
                            {
                                pokemonImage1.image = UIImage(named: "purugly")!
                            }
                if value1.lowercased() == "chingling"
                            {
                                pokemonImage1.image = UIImage(named: "chingling")!
                            }
                if value1.lowercased() == "stunky"
                            {
                                pokemonImage1.image = UIImage(named: "stunky")!
                            }
                if value1.lowercased() == "skuntank"
                            {
                                pokemonImage1.image = UIImage(named: "skuntank")!
                            }
                if value1.lowercased() == "bronzor"
                            {
                                pokemonImage1.image = UIImage(named: "bronzor")!
                            }
                if value1.lowercased() == "bronzong"
                            {
                                pokemonImage1.image = UIImage(named: "bronzong")!
                            }
                if value1.lowercased() == "bonsly"
                            {
                                pokemonImage1.image = UIImage(named: "bonsly")!
                            }
                if value1.lowercased() == "mime jr."
                            {
                                pokemonImage1.image = UIImage(named: "mime jr.")!
                            }
                if value1.lowercased() == "happiny"
                            {
                                pokemonImage1.image = UIImage(named: "happiny")!
                            }
                if value1.lowercased() == "chatot"
                            {
                                pokemonImage1.image = UIImage(named: "chatot")!
                            }
                if value1.lowercased() == "spiritomb"
                            {
                                pokemonImage1.image = UIImage(named: "spiritomb")!
                            }
                if value1.lowercased() == "gible"
                            {
                                pokemonImage1.image = UIImage(named: "gible")!
                            }
                if value1.lowercased() == "gabite"
                            {
                                pokemonImage1.image = UIImage(named: "gabite")!
                            }
                if value1.lowercased() == "garchomp"
                            {
                                pokemonImage1.image = UIImage(named: "garchomp")!
                            }
                if value1.lowercased() == "munchlax"
                            {
                                pokemonImage1.image = UIImage(named: "munchlax")!
                            }
                if value1.lowercased() == "riolu"
                            {
                                pokemonImage1.image = UIImage(named: "riolu")!
                            }
                if value1.lowercased() == "lucario"
                            {
                                pokemonImage1.image = UIImage(named: "lucario")!
                            }
                if value1.lowercased() == "hippopotas"
                            {
                                pokemonImage1.image = UIImage(named: "hippopotas")!
                            }
                if value1.lowercased() == "hippowdon"
                            {
                                pokemonImage1.image = UIImage(named: "hippowdon")!
                            }
                if value1.lowercased() == "skorupi"
                            {
                                pokemonImage1.image = UIImage(named: "skorupi")!
                            }
                if value1.lowercased() == "drapion"
                            {
                                pokemonImage1.image = UIImage(named: "drapion")!
                            }
                if value1.lowercased() == "croagunk"
                            {
                                pokemonImage1.image = UIImage(named: "croagunk")!
                            }
                if value1.lowercased() == "toxicroak"
                            {
                                pokemonImage1.image = UIImage(named: "toxicroak")!
                            }
                if value1.lowercased() == "carnivine"
                            {
                                pokemonImage1.image = UIImage(named: "carnivine")!
                            }
                if value1.lowercased() == "finneon"
                            {
                                pokemonImage1.image = UIImage(named: "finneon")!
                            }
                if value1.lowercased() == "lumineon"
                            {
                                pokemonImage1.image = UIImage(named: "lumineon")!
                            }
                if value1.lowercased() == "mantyke"
                            {
                                pokemonImage1.image = UIImage(named: "mantyke")!
                            }
                if value1.lowercased() == "snover"
                            {
                                pokemonImage1.image = UIImage(named: "snover")!
                            }
                if value1.lowercased() == "Abomasnow"
                            {
                                pokemonImage1.image = UIImage(named: "abomasnow")!
                            }
                if value1.lowercased() == "weavile"
                            {
                                pokemonImage1.image = UIImage(named: "weavile")!
                            }
                if value1.lowercased() == "magnezone"
                            {
                                pokemonImage1.image = UIImage(named: "magnezone")!
                            }
                if value1.lowercased() == "lickilicky"
                            {
                                pokemonImage1.image = UIImage(named: "lickilicky")!
                            }
                if value1.lowercased() == "rhyperior"
                            {
                                pokemonImage1.image = UIImage(named: "rhyperior")!
                            }
                if value1.lowercased() == "tangrowth"
                            {
                                pokemonImage1.image = UIImage(named: "tangrowth")!
                            }
                if value1.lowercased() == "electivire"
                            {
                                pokemonImage1.image = UIImage(named: "electivire")!
                            }
                if value1.lowercased() == "magmortar"
                            {
                                pokemonImage1.image = UIImage(named: "magmortar")!
                            }
                if value1.lowercased() == "togekiss"
                            {
                                pokemonImage1.image = UIImage(named: "togekiss")!
                            }
                if value1.lowercased() == "yanmega"
                            {
                                pokemonImage1.image = UIImage(named: "yanmega")!
                            }
                if value1.lowercased() == "leafeon"
                            {
                                pokemonImage1.image = UIImage(named: "leafeon")!
                            }
                if value1.lowercased() == "glaceon"
                            {
                                pokemonImage1.image = UIImage(named: "glaceon")!
                            }
                if value1.lowercased() == "gliscor"
                            {
                                pokemonImage1.image = UIImage(named: "gliscor")!
                            }
                if value1.lowercased() == "mamoswine"
                            {
                                pokemonImage1.image = UIImage(named: "mamoswine")!
                            }
                if value1.lowercased() == "porygon-z"
                            {
                                pokemonImage1.image = UIImage(named: "porygon-z")!
                            }
                if value1.lowercased() == "gallade"
                            {
                                pokemonImage1.image = UIImage(named: "gallade")!
                            }
                if value1.lowercased() == "probopass"
                            {
                                pokemonImage1.image = UIImage(named: "probopass")!
                            }
                if value1.lowercased() == "dusknoir"
                            {
                                pokemonImage1.image = UIImage(named: "dusknoir")!
                            }
                if value1.lowercased() == "froslass"
                            {
                                pokemonImage1.image = UIImage(named: "froslass")!
                            }
                if value1.lowercased() == "uxie"
                            {
                                pokemonImage1.image = UIImage(named: "uxie")!
                            }
                if value1.lowercased() == "azelf"
                            {
                                pokemonImage1.image = UIImage(named: "azelf")!
                            }
                if value1.lowercased() == "mesprit"
                            {
                                pokemonImage1.image = UIImage(named: "mesprit")!
                            }
                if value1.lowercased() == "dialga"
                            {
                                pokemonImage1.image = UIImage(named: "dialga")!
                            }
                if value1.lowercased() == "palkia"
                            {
                                pokemonImage1.image = UIImage(named: "palkia")!
                            }
                if value1.lowercased() == "heatran"
                            {
                                pokemonImage1.image = UIImage(named: "heatran")!
                            }
                if value1.lowercased() == "regigigas"
                            {
                                pokemonImage1.image = UIImage(named: "regigigas")!
                            }
                if value1.lowercased() == "altered giratina"
                            {
                                pokemonImage1.image = UIImage(named: "altered giratina")!
                            }
                if value1.lowercased() == "origin giratina"
                            {
                                pokemonImage1.image = UIImage(named: "origin giratina")!
                            }
                if value1.lowercased() == "cresselia"
                            {
                                pokemonImage1.image = UIImage(named: "cresselia")!
                            }
                if value1.lowercased() == "phione"
                            {
                                pokemonImage1.image = UIImage(named: "phione")!
                            }
                if value1.lowercased() == "manaphy"
                            {
                                pokemonImage1.image = UIImage(named: "manaphy")!
                            }
                if value1.lowercased() == "darkrai"
                            {
                                pokemonImage1.image = UIImage(named: "darkrai")!
                            }
                if value1.lowercased() == "shaymin"
                            {
                                pokemonImage1.image = UIImage(named: "shaymin")!
                            }
                if value1.lowercased() == "shaymin sky"
                            {
                                pokemonImage1.image = UIImage(named: "shaymin sky")!
                            }
                if value1.lowercased() == "arceus"
                            {
                                pokemonImage1.image = UIImage(named: "arceus")!
                            }


                if value2.lowercased() == "bulbasaur"
                            {
                                pokemonImage2.image = UIImage(named: "bulbasaur")!
                            }
                if value2.lowercased() == "ivysaur"
                            {
                                pokemonImage2.image = UIImage(named: "ivysaur")!
                            }
                if value2.lowercased() == "venusaur"
                            {
                                pokemonImage2.image = UIImage(named: "venusaur")!
                            }
                if value2.lowercased() == "charmander"
                            {
                                pokemonImage2.image = UIImage(named: "charmander")!
                            }
                if value2.lowercased() == "charmeleon"
                            {
                                pokemonImage2.image = UIImage(named: "charmeleon")!
                            }
                if value2.lowercased() == "charizard"
                            {
                                pokemonImage2.image = UIImage(named: "charizard")!
                            }
                if value2.lowercased() == "squirtle"
                            {
                                pokemonImage2.image = UIImage(named: "squirtle")!
                            }
                if value2.lowercased() == "wartortle"
                            {
                                pokemonImage2.image = UIImage(named: "wartortle")!
                            }
                if value2.lowercased() == "blastoise"
                            {
                                pokemonImage2.image = UIImage(named: "blastoise")!
                            }
                if value2.lowercased() == "caterpie"
                            {
                                pokemonImage2.image = UIImage(named: "caterpie")!
                            }
                if value2.lowercased() == "metapod"
                            {
                                pokemonImage2.image = UIImage(named: "metapod")!
                            }
                if value2.lowercased() == "butterfree"
                            {
                                pokemonImage2.image = UIImage(named: "butterfree")!
                            }
                if value2.lowercased() == "weedle"
                            {
                                pokemonImage2.image = UIImage(named: "weedle")!
                            }
                if value2.lowercased() == "kakuna"
                            {
                                pokemonImage2.image = UIImage(named: "kakuna")!
                            }
                if value2.lowercased() == "beedrill"
                            {
                                pokemonImage2.image = UIImage(named: "beedrill")!
                            }
                if value2.lowercased() == "pidgey"
                            {
                                pokemonImage2.image = UIImage(named: "pidgey")!
                            }
                if value2.lowercased() == "pidgeotto"
                            {
                                pokemonImage2.image = UIImage(named: "pidgeotto")!
                            }
                if value2.lowercased() == "pidgeot"
                            {
                                pokemonImage2.image = UIImage(named: "pidgeot")!
                            }
                if value2.lowercased() == "rattata"
                            {
                                pokemonImage2.image = UIImage(named: "rattata")!
                            }
                if value2.lowercased() == "raticate"
                            {
                                pokemonImage2.image = UIImage(named: "raticate")!
                            }
                if value2.lowercased() == "alolan rattata"
                            {
                                pokemonImage2.image = UIImage(named: "alolan rattata")!
                            }
                if value2.lowercased() == "alolan raticate"
                            {
                                pokemonImage2.image = UIImage(named: "alolan raticate")!
                            }
                if value2.lowercased() == "spearow"
                            {
                                pokemonImage2.image = UIImage(named: "spearow")!
                            }
                if value2.lowercased() == "fearow"
                            {
                                pokemonImage2.image = UIImage(named: "fearow")!
                            }
                if value2.lowercased() == "ekans"
                            {
                                pokemonImage2.image = UIImage(named: "ekans")!
                            }
                if value2.lowercased() == "arbok"
                            {
                                pokemonImage2.image = UIImage(named: "arbok")!
                            }
                if value2.lowercased() == "pikachu"
                            {
                                pokemonImage2.image = UIImage(named: "pikachu")!
                            }
                if value2.lowercased() == "raichu"
                            {
                                pokemonImage2.image = UIImage(named: "raichu")!
                            }
                if value2.lowercased() == "alolan raichu"
                            {
                                pokemonImage2.image = UIImage(named: "alolan raichu")!
                            }
                if value2.lowercased() == "sandshrew"
                            {
                                pokemonImage2.image = UIImage(named: "sandshrew")!
                            }
                if value2.lowercased() == "sandslash"
                            {
                                pokemonImage2.image = UIImage(named: "sandslash")!
                            }
                if value2.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage2.image = UIImage(named: "alolan sandshrew")!
                            }
                if value2.lowercased() == "alolan sandslash"
                            {
                                pokemonImage2.image = UIImage(named: "alolan sandslash")!
                            }
                if value2.lowercased() == "nidoran f"
                            {
                                pokemonImage2.image = UIImage(named: "nidoran f")!
                            }
                if value2.lowercased() == "nidorina"
                            {
                                pokemonImage2.image = UIImage(named: "nidorina")!
                            }
                if value2.lowercased() == "nidoqueen"
                            {
                                pokemonImage2.image = UIImage(named: "nidoqueen")!
                            }
                if value2.lowercased() == "nidoran m"
                            {
                                pokemonImage2.image = UIImage(named: "nidoran m")!
                            }
                if value2.lowercased() == "nidorino"
                            {
                                pokemonImage2.image = UIImage(named: "nidorino")!
                            }
                if value2.lowercased() == "nidoking"
                            {
                                pokemonImage2.image = UIImage(named: "nidoking")!
                            }
                if value2.lowercased() == "clefairy"
                            {
                                pokemonImage2.image = UIImage(named: "clefairy")!
                            }
                if value2.lowercased() == "clefable"
                            {
                                pokemonImage2.image = UIImage(named: "clefable")!
                            }
                if value2.lowercased() == "vulpix"
                            {
                                pokemonImage2.image = UIImage(named: "vulpix")!
                            }
                if value2.lowercased() == "alolan vulpix"
                            {
                                pokemonImage2.image = UIImage(named: "alolan vulpix")!
                            }
                if value2.lowercased() == "ninetales"
                            {
                                pokemonImage2.image = UIImage(named: "ninetales")!
                            }
                if value2.lowercased() == "alolan ninetales"
                            {
                                pokemonImage2.image = UIImage(named: "alolan ninetales")!
                            }
                if value2.lowercased() == "jigglypuff"
                            {
                                pokemonImage2.image = UIImage(named: "jigglypuff")!
                            }
                if value2.lowercased() == "wigglytuff"
                            {
                                pokemonImage2.image = UIImage(named: "wigglytuff")!
                            }
                if value2.lowercased() == "zubat"
                            {
                                pokemonImage2.image = UIImage(named: "zubat")!
                            }
                if value2.lowercased() == "golbat"
                            {
                                pokemonImage2.image = UIImage(named: "golbat")!
                            }
                if value2.lowercased() == "oddish"
                            {
                                pokemonImage2.image = UIImage(named: "oddish")!
                            }
                if value2.lowercased() == "gloom"
                            {
                                pokemonImage2.image = UIImage(named: "gloom")!
                            }
                if value2.lowercased() == "vileplume"
                            {
                                pokemonImage2.image = UIImage(named: "vileplume")!
                            }
                if value2.lowercased() == "paras"
                            {
                                pokemonImage2.image = UIImage(named: "paras")!
                            }
                if value2.lowercased() == "parasect"
                            {
                                pokemonImage2.image = UIImage(named: "parasect")!
                            }
                if value2.lowercased() == "venonat"
                            {
                                pokemonImage2.image = UIImage(named: "venonat")!
                            }
                if value2.lowercased() == "venomoth"
                            {
                                pokemonImage2.image = UIImage(named: "venomoth")!
                            }
                if value2.lowercased() == "diglett"
                            {
                                pokemonImage2.image = UIImage(named: "diglett")!
                            }
                if value2.lowercased() == "alolan diglett"
                            {
                                pokemonImage2.image = UIImage(named: "alolan diglett")!
                            }
                if value2.lowercased() == "dugtrio"
                            {
                                pokemonImage2.image = UIImage(named: "dugtrio")!
                            }
                if value2.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage2.image = UIImage(named: "alolan dugtrio")!
                            }
                if value2.lowercased() == "meowth"
                            {
                                pokemonImage2.image = UIImage(named: "meowth")!
                            }
                if value2.lowercased() == "alolan meowth"
                            {
                                pokemonImage2.image = UIImage(named: "alolan meowth")!
                            }
                if value2.lowercased() == "persian"
                            {
                                pokemonImage2.image = UIImage(named: "persian")!
                            }
                if value2.lowercased() == "alolan persian"
                            {
                                pokemonImage2.image = UIImage(named: "alolan persian")!
                            }

                if value2.lowercased() == "psyduck"
                            {
                                pokemonImage2.image = UIImage(named: "psyduck")!
                            }
                if value2.lowercased() == "golduck"
                            {
                                pokemonImage2.image = UIImage(named: "golduck")!
                            }
                if value2.lowercased() == "mankey"
                            {
                                pokemonImage2.image = UIImage(named: "mankey")!
                            }
                if value2.lowercased() == "primeape"
                            {
                                pokemonImage2.image = UIImage(named: "primeape")!
                            }
                if value2.lowercased() == "growlithe"
                            {
                                pokemonImage2.image = UIImage(named: "growlithe")!
                            }
                if value2.lowercased() == "arcanine"
                            {
                                pokemonImage2.image = UIImage(named: "arcanine")!
                            }
                if value2.lowercased() == "poliwag"
                            {
                                pokemonImage2.image = UIImage(named: "poliwag")!
                            }
                if value2.lowercased() == "poliwhirl"
                            {
                                pokemonImage2.image = UIImage(named: "poliwhirl")!
                            }
                if value2.lowercased() == "poliwrath"
                            {
                                pokemonImage2.image = UIImage(named: "poliwrath")!
                            }
                if value2.lowercased() == "abra"
                            {
                                pokemonImage2.image = UIImage(named: "abra")!
                            }
                if value2.lowercased() == "kadabra"
                            {
                                pokemonImage2.image = UIImage(named: "kadabra")!
                            }
                if value2.lowercased() == "alakazam"
                            {
                                pokemonImage2.image = UIImage(named: "alakazam")!
                            }
                if value2.lowercased() == "machop"
                            {
                                pokemonImage2.image = UIImage(named: "machop")!
                            }
                if value2.lowercased() == "machoke"
                            {
                                pokemonImage2.image = UIImage(named: "machoke")!
                            }
                if value2.lowercased() == "machamp"
                            {
                                pokemonImage2.image = UIImage(named: "machamp")!
                            }
                if value2.lowercased() == "bellsprout"
                            {
                                pokemonImage2.image = UIImage(named: "bellsprout")!
                            }
                if value2.lowercased() == "weepinbell"
                            {
                                pokemonImage2.image = UIImage(named: "weepinbell")!
                            }
                if value2.lowercased() == "victreebel"
                            {
                                pokemonImage2.image = UIImage(named: "victreebel")!
                            }
                if value2.lowercased() == "tentacool"
                            {
                                pokemonImage2.image = UIImage(named: "tentacool")!
                            }
                if value2.lowercased() == "tentacruel"
                            {
                                pokemonImage2.image = UIImage(named: "tentacruel")!
                            }
                if value2.lowercased() == "geodude"
                            {
                                pokemonImage2.image = UIImage(named: "geodude")!
                            }
                if value2.lowercased() == "alolan geodude"
                            {
                                pokemonImage2.image = UIImage(named: "alolan geodude")!
                            }
                if value2.lowercased() == "graveler"
                            {
                                pokemonImage2.image = UIImage(named: "graveler")!
                            }
                if value2.lowercased() == "alolan graveler"
                            {
                                pokemonImage2.image = UIImage(named: "alolan graveler")!
                            }
                if value2.lowercased() == "golem"
                            {
                                pokemonImage2.image = UIImage(named: "golem")!
                            }
                if value2.lowercased() == "alolan golem"
                            {
                                pokemonImage2.image = UIImage(named: "alolan golem")!
                            }
                if value2.lowercased() == "ponyta"
                            {
                                pokemonImage2.image = UIImage(named: "ponyta")!
                            }
                if value2.lowercased() == "rapidash"
                            {
                                pokemonImage2.image = UIImage(named: "rapidash")!
                            }
                if value2.lowercased() == "slowpoke"
                            {
                                pokemonImage2.image = UIImage(named: "slowpoke")!
                            }
                if value2.lowercased() == "slowbro"
                            {
                                pokemonImage2.image = UIImage(named: "slowbro")!
                            }
                if value2.lowercased() == "magnemite"
                            {
                                pokemonImage2.image = UIImage(named: "magnemite")!
                            }
                if value2.lowercased() == "magneton"
                            {
                                pokemonImage2.image = UIImage(named: "magneton")!
                            }
                if value2.lowercased() == "farfetch’d"
                            {
                                pokemonImage2.image = UIImage(named: "farfetch’d")!
                            }
                if value2.lowercased() == "doduo"
                            {
                                pokemonImage2.image = UIImage(named: "doduo")!
                            }
                if value2.lowercased() == "dodrio"
                            {
                                pokemonImage2.image = UIImage(named: "dodrio")!
                            }
                if value2.lowercased() == "seel"
                            {
                                pokemonImage2.image = UIImage(named: "seel")!
                            }
                if value2.lowercased() == "dewgong"
                            {
                                pokemonImage2.image = UIImage(named: "dewgong")!
                            }
                if value2.lowercased() == "grimer"
                            {
                                pokemonImage2.image = UIImage(named: "grimer")!
                            }
                if value2.lowercased() == "alolan grimer"
                            {
                                pokemonImage2.image = UIImage(named: "alolan grimer")!
                            }
                if value2.lowercased() == "muk"
                            {
                                pokemonImage2.image = UIImage(named: "muk")!
                            }
                if value2.lowercased() == "alolan muk"
                            {
                                pokemonImage2.image = UIImage(named: "alolan muk")!
                            }
                if value2.lowercased() == "shellder"
                            {
                                pokemonImage2.image = UIImage(named: "shellder")!
                            }
                if value2.lowercased() == "cloyster"
                            {
                                pokemonImage2.image = UIImage(named: "cloyster")!
                            }
                if value2.lowercased() == "gastly"
                            {
                                pokemonImage2.image = UIImage(named: "gastly")!
                            }
                if value2.lowercased() == "haunter"
                            {
                                pokemonImage2.image = UIImage(named: "haunter")!
                            }
                if value2.lowercased() == "gengar"
                            {
                                pokemonImage2.image = UIImage(named: "gengar")!
                            }
                if value2.lowercased() == "onix"
                            {
                                pokemonImage2.image = UIImage(named: "onix")!
                            }
                if value2.lowercased() == "drowzee"
                            {
                                pokemonImage2.image = UIImage(named: "drowzee")!
                            }
                if value2.lowercased() == "hypno"
                            {
                                pokemonImage2.image = UIImage(named: "hypno")!
                            }
                if value2.lowercased() == "krabby"
                            {
                                pokemonImage2.image = UIImage(named: "krabby")!
                            }
                if value2.lowercased() == "kingler"
                            {
                                pokemonImage2.image = UIImage(named: "kingler")!
                            }
                if value2.lowercased() == "voltorb"
                            {
                                pokemonImage2.image = UIImage(named: "voltorb")!
                            }
                if value2.lowercased() == "electrode"
                            {
                                pokemonImage2.image = UIImage(named: "electrode")!
                            }
                if value2.lowercased() == "exeggcute"
                            {
                                pokemonImage2.image = UIImage(named: "exeggcute")!
                            }
                if value2.lowercased() == "exeggutor"
                            {
                                pokemonImage2.image = UIImage(named: "exeggutor")!
                            }
                if value2.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage2.image = UIImage(named: "alolan exeggutor")!
                            }
                if value2.lowercased() == "cubone"
                            {
                                pokemonImage2.image = UIImage(named: "cubone")!
                            }
                if value2.lowercased() == "marowak"
                            {
                                pokemonImage2.image = UIImage(named: "marowak")!
                            }
                if value2.lowercased() == "alolan marowak"
                            {
                                pokemonImage2.image = UIImage(named: "alolan marowak")!
                            }
                if value2.lowercased() == "hitmonlee"
                            {
                                pokemonImage2.image = UIImage(named: "hitmonlee")!
                            }
                if value2.lowercased() == "hitmonchan"
                            {
                                pokemonImage2.image = UIImage(named: "hitmonchan")!
                            }
                if value2.lowercased() == "lickitung"
                            {
                                pokemonImage2.image = UIImage(named: "lickitung")!
                            }
                if value2.lowercased() == "koffing"
                            {
                                pokemonImage2.image = UIImage(named: "koffing")!
                            }
                if value2.lowercased() == "weezing"
                            {
                                pokemonImage2.image = UIImage(named: "weezing")!
                            }
                if value2.lowercased() == "rhyhorn"
                            {
                                pokemonImage2.image = UIImage(named: "rhyhorn")!
                            }
                if value2.lowercased() == "rhydon"
                            {
                                pokemonImage2.image = UIImage(named: "rhydon")!
                            }
                if value2.lowercased() == "chansey"
                            {
                                pokemonImage2.image = UIImage(named: "chansey")!
                            }
                if value2.lowercased() == "tangela"
                            {
                                pokemonImage2.image = UIImage(named: "tangela")!
                            }
                if value2.lowercased() == "kangaskhan"
                            {
                                pokemonImage2.image = UIImage(named: "kangaskhan")!
                            }
                if value2.lowercased() == "horsea"
                            {
                                pokemonImage2.image = UIImage(named: "horsea")!
                            }
                if value2.lowercased() == "seadra"
                            {
                                pokemonImage2.image = UIImage(named: "seadra")!
                            }
                if value2.lowercased() == "goldeen"
                            {
                                pokemonImage2.image = UIImage(named: "goldeen")!
                            }
                if value2.lowercased() == "seaking"
                            {
                                pokemonImage2.image = UIImage(named: "seaking")!
                            }
                if value2.lowercased() == "staryu"
                            {
                                pokemonImage2.image = UIImage(named: "staryu")!
                            }
                if value2.lowercased() == "starmie"
                            {
                                pokemonImage2.image = UIImage(named: "starmie")!
                            }
                if value2.lowercased() == "mr.mime"
                            {
                                pokemonImage2.image = UIImage(named: "mr.mime")!
                            }
                if value2.lowercased() == "scyther"
                            {
                                pokemonImage2.image = UIImage(named: "scyther")!
                            }
                if value2.lowercased() == "jynx"
                            {
                                pokemonImage2.image = UIImage(named: "jynx")!
                            }
                if value2.lowercased() == "electabuzz"
                            {
                                pokemonImage2.image = UIImage(named: "electabuzz")!
                            }
                if value2.lowercased() == "magmar"
                            {
                                pokemonImage2.image = UIImage(named: "magmar")!
                            }
                if value2.lowercased() == "pinsir"
                            {
                                pokemonImage2.image = UIImage(named: "pinsir")!
                            }
                if value2.lowercased() == "tauros"
                            {
                                pokemonImage2.image = UIImage(named: "tauros")!
                            }
                if value2.lowercased() == "magikarp"
                            {
                                pokemonImage2.image = UIImage(named: "magikarp")!
                            }
                if value2.lowercased() == "gyarados"
                            {
                                pokemonImage2.image = UIImage(named: "gyarados")!
                            }
                if value2.lowercased() == "lapras"
                            {
                                pokemonImage2.image = UIImage(named: "lapras")!
                            }
                if value2.lowercased() == "ditto"
                            {
                                pokemonImage2.image = UIImage(named: "ditto")!
                            }
                if value2.lowercased() == "eevee"
                            {
                                pokemonImage2.image = UIImage(named: "eevee")!
                            }
                if value2.lowercased() == "vaporeon"
                            {
                                pokemonImage2.image = UIImage(named: "vaporeon")!
                            }
                if value2.lowercased() == "jolteon"
                            {
                                pokemonImage2.image = UIImage(named: "jolteon")!
                            }
                if value2.lowercased() == "flareon"
                            {
                                pokemonImage2.image = UIImage(named: "flareon")!
                            }
                if value2.lowercased() == "porygon"
                            {
                                pokemonImage2.image = UIImage(named: "porygon")!
                            }
                if value2.lowercased() == "omanyte"
                            {
                                pokemonImage2.image = UIImage(named: "omanyte")!
                            }
                if value2.lowercased() == "omastar"
                            {
                                pokemonImage2.image = UIImage(named: "omastar")!
                            }
                if value2.lowercased() == "kabuto"
                            {
                                pokemonImage2.image = UIImage(named: "kabuto")!
                            }
                if value2.lowercased() == "kabutops"
                            {
                                pokemonImage2.image = UIImage(named: "kabutops")!
                            }
                if value2.lowercased() == "aerodactyl"
                            {
                                pokemonImage2.image = UIImage(named: "aerodactyl")!
                            }
                if value2.lowercased() == "snorlax"
                            {
                                pokemonImage2.image = UIImage(named: "snorlax")!
                            }
                if value2.lowercased() == "articuno"
                            {
                                pokemonImage2.image = UIImage(named: "articuno")!
                            }
                if value2.lowercased() == "zapdos"
                            {
                                pokemonImage2.image = UIImage(named: "zapdos")!
                            }
                if value2.lowercased() == "moltres"
                            {
                                pokemonImage2.image = UIImage(named: "moltres")!
                            }
                if value2.lowercased() == "dratini"
                            {
                                pokemonImage2.image = UIImage(named: "dratini")!
                            }
                if value2.lowercased() == "dragonair"
                            {
                                pokemonImage2.image = UIImage(named: "dragonair")!
                            }
                if value2.lowercased() == "mewtwo"
                            {
                                pokemonImage2.image = UIImage(named: "mewtwo")!
                            }
                if value2.lowercased() == "mew"
                            {
                                pokemonImage2.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value2.lowercased() == "chikorita"
                            {
                                pokemonImage2.image = UIImage(named: "chikorita")!
                            }
                if value2.lowercased() == "bayleef"
                            {
                                pokemonImage2.image = UIImage(named: "bayleef")!
                            }
                if value2.lowercased() == "meganium"
                            {
                                pokemonImage2.image = UIImage(named: "meganium")!
                            }
                if value2.lowercased() == "cyndaquil"
                            {
                                pokemonImage2.image = UIImage(named: "cyndaquil")!
                            }
                if value2.lowercased() == "quilava"
                            {
                                pokemonImage2.image = UIImage(named: "quilava")!
                            }
                if value2.lowercased() == "typhlosion"
                            {
                                pokemonImage2.image = UIImage(named: "typhlosion")!
                            }
                if value2.lowercased() == "totodile"
                            {
                                pokemonImage2.image = UIImage(named: "totodile")!
                            }
                if value2.lowercased() == "croconaw"
                            {
                                pokemonImage2.image = UIImage(named: "croconaw")!
                            }
                if value2.lowercased() == "feraligatr"
                            {
                                pokemonImage2.image = UIImage(named: "feraligatr")!
                            }
                if value2.lowercased() == "sentret"
                            {
                                pokemonImage2.image = UIImage(named: "sentret")!
                            }
                if value2.lowercased() == "furret"
                            {
                                pokemonImage2.image = UIImage(named: "furret")!
                            }
                if value2.lowercased() == "hoothoot"
                            {
                                pokemonImage2.image = UIImage(named: "hoothoot")!
                            }
                if value2.lowercased() == "noctowl"
                            {
                                pokemonImage2.image = UIImage(named: "noctowl")!
                            }
                if value2.lowercased() == "ledyba"
                            {
                                pokemonImage2.image = UIImage(named: "ledyba")!
                            }
                if value2.lowercased() == "ledian"
                            {
                                pokemonImage2.image = UIImage(named: "ledian")!
                            }
                if value2.lowercased() == "spinarak"
                            {
                                pokemonImage2.image = UIImage(named: "spinarak")!
                            }
                if value2.lowercased() == "ariados"
                            {
                                pokemonImage2.image = UIImage(named: "ariados")!
                            }
                if value2.lowercased() == "crobat"
                            {
                                pokemonImage2.image = UIImage(named: "crobat")!
                            }
                if value2.lowercased() == "chinchou"
                            {
                                pokemonImage2.image = UIImage(named: "chinchou")!
                            }
                if value2.lowercased() == "lanturn"
                            {
                                pokemonImage2.image = UIImage(named: "lanturn")!
                            }
                if value2.lowercased() == "pichu"
                            {
                                pokemonImage2.image = UIImage(named: "pichu")!
                            }
                 if value2.lowercased() == "cleffa"
                            {
                                pokemonImage2.image = UIImage(named: "cleffa")!
                            }
                if value2.lowercased() == "igglybuff"
                            {
                                pokemonImage2.image = UIImage(named: "igglybuff")!
                            }
                if value2.lowercased() == "togepi"
                            {
                                pokemonImage2.image = UIImage(named: "togepi")!
                            }
                if value2.lowercased() == "togetic"
                            {
                                pokemonImage2.image = UIImage(named: "togetic")!
                            }
                if value2.lowercased() == "natu"
                            {
                                pokemonImage2.image = UIImage(named: "natu")!
                            }
                if value2.lowercased() == "xatu"
                            {
                                pokemonImage2.image = UIImage(named: "xatu")!
                            }
                if value2.lowercased() == "mareep"
                            {
                                pokemonImage2.image = UIImage(named: "mareep")!
                            }
                if value2.lowercased() == "flaaffy"
                            {
                                pokemonImage2.image = UIImage(named: "flaaffy")!
                            }
                if value2.lowercased() == "ampharos"
                            {
                                pokemonImage2.image = UIImage(named: "ampharos")!
                            }
                if value2.lowercased() == "bellossom"
                            {
                                pokemonImage2.image = UIImage(named: "bellossom")!
                            }
                 if value2.lowercased() == "marill"
                            {
                                pokemonImage2.image = UIImage(named: "marill")!
                            }
                if value2.lowercased() == "azumarill"
                            {
                                pokemonImage2.image = UIImage(named: "azumarill")!
                            }
                if value2.lowercased() == "sudowoodo"
                            {
                                pokemonImage2.image = UIImage(named: "sudowoodo")!
                            }
                if value2.lowercased() == "politoed"
                            {
                                pokemonImage2.image = UIImage(named: "politoed")!
                            }
                if value2.lowercased() == "hoppip"
                            {
                                pokemonImage2.image = UIImage(named: "hoppip")!
                            }
                if value2.lowercased() == "skiploom"
                            {
                                pokemonImage2.image = UIImage(named: "skiploom")!
                            }
                if value2.lowercased() == "jumpluff"
                            {
                                pokemonImage2.image = UIImage(named: "jumpluff")!
                            }
                if value2.lowercased() == "aipom"
                            {
                                pokemonImage2.image = UIImage(named: "aipom")!
                            }
                if value2.lowercased() == "sunkern"
                            {
                                pokemonImage2.image = UIImage(named: "sunkern")!
                            }
                if value2.lowercased() == "sunflora"
                            {
                                pokemonImage2.image = UIImage(named: "sunflora")!
                            }
                if value2.lowercased() == "yanma"
                            {
                                pokemonImage2.image = UIImage(named: "yanma")!
                            }
                if value2.lowercased() == "wooper"
                            {
                                pokemonImage2.image = UIImage(named: "wooper")!
                            }
                if value2.lowercased() == "quagsire"
                            {
                                pokemonImage2.image = UIImage(named: "quagsire")!
                            }
                if value2.lowercased() == "espeon"
                            {
                                pokemonImage2.image = UIImage(named: "espeon")!
                            }
                if value2.lowercased() == "umbreon"
                            {
                                pokemonImage2.image = UIImage(named: "umbreon")!
                            }
                if value2.lowercased() == "murkrow"
                            {
                                pokemonImage2.image = UIImage(named: "murkrow")!
                            }
                if value2.lowercased() == "slowking"
                            {
                                pokemonImage2.image = UIImage(named: "slowking")!
                            }
                if value2.lowercased() == "girafarig"
                            {
                                pokemonImage2.image = UIImage(named: "girafarig")!
                            }
                if value2.lowercased() == "misdreavus"
                            {
                                pokemonImage2.image = UIImage(named: "misdreavus")!
                            }
                if value2.lowercased() == "unown"
                            {
                                pokemonImage2.image = UIImage(named: "unown")!
                            }
                if value2.lowercased() == "wobbuffet"
                            {
                                pokemonImage2.image = UIImage(named: "wobbuffet")!
                            }
                if value2.lowercased() == "pineco"
                            {
                                pokemonImage2.image = UIImage(named: "pineco")!
                            }
                if value2.lowercased() == "forretress"
                            {
                                pokemonImage2.image = UIImage(named: "forretress")!
                            }
                if value2.lowercased() == "dunsparce"
                            {
                                pokemonImage2.image = UIImage(named: "dunsparce")!
                            }
                if value2.lowercased() == "gligar"
                            {
                                pokemonImage2.image = UIImage(named: "gligar")!
                            }
                if value2.lowercased() == "steelix"
                            {
                                pokemonImage2.image = UIImage(named: "steelix")!
                            }
                if value2.lowercased() == "snubbull"
                            {
                                pokemonImage2.image = UIImage(named: "snubbull")!
                            }
                if value2.lowercased() == "granbull"
                            {
                                pokemonImage2.image = UIImage(named: "granbull")!
                            }
                if value2.lowercased() == "qwilfish"
                            {
                                pokemonImage2.image = UIImage(named: "qwilfish")!
                            }
                if value2.lowercased() == "scizor"
                            {
                                pokemonImage2.image = UIImage(named: "scizor")!
                            }
                if value2.lowercased() == "shuckle"
                            {
                                pokemonImage2.image = UIImage(named: "shuckle")!
                            }
                if value2.lowercased() == "heracross"
                            {
                                pokemonImage2.image = UIImage(named: "heracross")!
                            }
                if value2.lowercased() == "sneasel"
                            {
                                pokemonImage2.image = UIImage(named: "sneasel")!
                            }
                if value2.lowercased() == "teddiursa"
                            {
                                pokemonImage2.image = UIImage(named: "teddiursa")!
                            }
                if value2.lowercased() == "ursaring"
                            {
                                pokemonImage2.image = UIImage(named: "ursaring")!
                            }
                if value2.lowercased() == "slugma"
                            {
                                pokemonImage2.image = UIImage(named: "slugma")!
                            }
                if value2.lowercased() == "magcargo"
                            {
                                pokemonImage2.image = UIImage(named: "magcargo")!
                            }
                if value2.lowercased() == "swinub"
                            {
                                pokemonImage2.image = UIImage(named: "swinub")!
                            }
                if value2.lowercased() == "piloswine"
                            {
                                pokemonImage2.image = UIImage(named: "piloswine")!
                            }
                if value2.lowercased() == "corsola"
                            {
                                pokemonImage2.image = UIImage(named: "corsola")!
                            }
                if value2.lowercased() == "remoraid"
                            {
                                pokemonImage2.image = UIImage(named: "remoraid")!
                            }
                if value2.lowercased() == "octillery"
                            {
                                pokemonImage2.image = UIImage(named: "octillery")!
                            }
                if value2.lowercased() == "delibird"
                            {
                                pokemonImage2.image = UIImage(named: "delibird")!
                            }
                if value2.lowercased() == "mantine"
                            {
                                pokemonImage2.image = UIImage(named: "mantine")!
                            }
                 if value2.lowercased() == "skarmory"
                            {
                                pokemonImage2.image = UIImage(named: "skarmory")!
                            }
                if value2.lowercased() == "houndour"
                            {
                                pokemonImage2.image = UIImage(named: "houndour")!
                            }
                if value2.lowercased() == "houndoom"
                            {
                                pokemonImage2.image = UIImage(named: "houndoom")!
                            }
                if value2.lowercased() == "kingdra"
                            {
                                pokemonImage2.image = UIImage(named: "kingdra")!
                            }
                if value2.lowercased() == "phanpy"
                            {
                                pokemonImage2.image = UIImage(named: "phanpy")!
                            }
                if value2.lowercased() == "donphan"
                            {
                                pokemonImage2.image = UIImage(named: "donphan")!
                            }
                if value2.lowercased() == "porygon2"
                            {
                                pokemonImage2.image = UIImage(named: "porygon2")!
                            }
                if value2.lowercased() == "stantler"
                            {
                                pokemonImage2.image = UIImage(named: "stantler")!
                            }
                if value2.lowercased() == "smeargle"
                            {
                                pokemonImage2.image = UIImage(named: "smeargle")!
                            }
                if value2.lowercased() == "tyrogue"
                            {
                                pokemonImage2.image = UIImage(named: "tyrogue")!
                            }
                if value2.lowercased() == "hitmontop"
                            {
                                pokemonImage2.image = UIImage(named: "hitmontop")!
                            }
                if value2.lowercased() == "smoochum"
                            {
                                pokemonImage2.image = UIImage(named: "smoochum")!
                            }
                if value2.lowercased() == "elekid"
                            {
                                pokemonImage2.image = UIImage(named: "elekid")!
                            }
                if value2.lowercased() == "magby"
                            {
                                pokemonImage2.image = UIImage(named: "magby")!
                            }
                if value2.lowercased() == "miltank"
                            {
                                pokemonImage2.image = UIImage(named: "miltank")!
                            }
                if value2.lowercased() == "blissey"
                            {
                                pokemonImage2.image = UIImage(named: "blissey")!
                            }
                if value2.lowercased() == "raikou"
                            {
                                pokemonImage2.image = UIImage(named: "raikou")!
                            }
                if value2.lowercased() == "entei"
                            {
                                pokemonImage2.image = UIImage(named: "entei")!
                            }
                if value2.lowercased() == "suicune"
                            {
                                pokemonImage2.image = UIImage(named: "suicune")!
                            }
                if value2.lowercased() == "larvitar"
                            {
                                pokemonImage2.image = UIImage(named: "larvitar")!
                            }
                if value2.lowercased() == "pupitar"
                            {
                                pokemonImage2.image = UIImage(named: "pupitar")!
                            }
                if value2.lowercased() == "tyranitar"
                            {
                                pokemonImage2.image = UIImage(named: "tyranitar")!
                            }
                if value2.lowercased() == "ho-oh"
                            {
                                pokemonImage2.image = UIImage(named: "ho-oh")!
                            }
                if value2.lowercased() == "lugia"
                            {
                                pokemonImage2.image = UIImage(named: "lugia")!
                            }
                if value2.lowercased() == "celebi"
                            {
                                pokemonImage2.image = UIImage(named: "celebi")!
                            }
                if value2.lowercased() == "treecko"
                            {
                                pokemonImage2.image = UIImage(named: "treecko")!
                            }
                if value2.lowercased() == "grovyle"
                            {
                                pokemonImage2.image = UIImage(named: "grovyle")!
                            }
                if value2.lowercased() == "sceptile"
                            {
                                pokemonImage2.image = UIImage(named: "sceptile")!
                            }
                if value2.lowercased() == "torchic"
                            {
                                pokemonImage2.image = UIImage(named: "torchic")!
                            }
                if value2.lowercased() == "combusken"
                            {
                                pokemonImage2.image = UIImage(named: "combusken")!
                            }
                if value2.lowercased() == "blaziken"
                            {
                                pokemonImage2.image = UIImage(named: "blaziken")!
                            }
                if value2.lowercased() == "mudkip"
                            {
                                pokemonImage2.image = UIImage(named: "mudkip")!
                            }
                if value2.lowercased() == "marshtomp"
                            {
                                pokemonImage2.image = UIImage(named: "marshtomp")!
                            }
                if value2.lowercased() == "swampert"
                            {
                                pokemonImage2.image = UIImage(named: "swampert")!
                            }
                if value2.lowercased() == "poochyena"
                            {
                                pokemonImage2.image = UIImage(named: "poochyena")!
                            }
                if value2.lowercased() == "mightyena"
                            {
                                pokemonImage2.image = UIImage(named: "mightyena")!
                            }
                if value2.lowercased() == "zigzagoon"
                            {
                                pokemonImage2.image = UIImage(named: "zigzagoon")!
                            }
                if value2.lowercased() == "linoone"
                            {
                                pokemonImage2.image = UIImage(named: "linoone")!
                            }
                if value2.lowercased() == "wurmple"
                            {
                                pokemonImage2.image = UIImage(named: "wurmple")!
                            }
                if value2.lowercased() == "silcoon"
                            {
                                pokemonImage2.image = UIImage(named: "silcoon")!
                            }
                if value2.lowercased() == "beautifly"
                            {
                                pokemonImage2.image = UIImage(named: "beautifly")!
                            }
                if value2.lowercased() == "cascoon"
                            {
                                pokemonImage2.image = UIImage(named: "cascoon")!
                            }
                if value2.lowercased() == "dustox"
                            {
                                pokemonImage2.image = UIImage(named: "dustox")!
                            }
                if value2.lowercased() == "lotad"
                            {
                                pokemonImage2.image = UIImage(named: "lotad")!
                            }
                if value2.lowercased() == "lombre"
                            {
                                pokemonImage2.image = UIImage(named: "lombre")!
                            }
                if value2.lowercased() == "ludicolo"
                            {
                                pokemonImage2.image = UIImage(named: "ludicolo")!
                            }
                if value2.lowercased() == "seedot"
                            {
                                pokemonImage2.image = UIImage(named: "seedot")!
                            }
                if value2.lowercased() == "nuzleaf"
                            {
                                pokemonImage2.image = UIImage(named: "nuzleaf")!
                            }
                if value2.lowercased() == "shiftry"
                            {
                                pokemonImage2.image = UIImage(named: "shiftry")!
                            }
                if value2.lowercased() == "taillow"
                            {
                                pokemonImage2.image = UIImage(named: "taillow")!
                            }
                if value2.lowercased() == "swellow"
                                    {
                                        pokemonImage2.image = UIImage(named: "swellow")!
                                    }
                if value2.lowercased() == "wingull"
                            {
                                pokemonImage2.image = UIImage(named: "wingull")!
                            }
                if value2.lowercased() == "pelipper"
                            {
                                pokemonImage2.image = UIImage(named: "pelipper")!
                            }
                if value2.lowercased() == "ralts"
                            {
                                pokemonImage2.image = UIImage(named: "ralts")!
                            }
                if value2.lowercased() == "kirlia"
                            {
                                pokemonImage2.image = UIImage(named: "kirlia")!
                            }
                if value2.lowercased() == "gardevoir"
                            {
                                pokemonImage2.image = UIImage(named: "gardevoir")!
                            }
                if value2.lowercased() == "surskit"
                            {
                                pokemonImage2.image = UIImage(named: "surskit")!
                            }
                if value2.lowercased() == "masquerain"
                            {
                                pokemonImage2.image = UIImage(named: "masquerain")!
                            }
                if value2.lowercased() == "shroomish"
                            {
                                pokemonImage2.image = UIImage(named: "shroomish")!
                            }
                if value2.lowercased() == "breloom"
                            {
                                pokemonImage2.image = UIImage(named: "breloom")!
                            }
                if value2.lowercased() == "slakoth"
                            {
                                pokemonImage2.image = UIImage(named: "slakoth")!
                            }
                if value2.lowercased() == "vigoroth"
                            {
                                pokemonImage2.image = UIImage(named: "vigoroth")!
                            }
                if value2.lowercased() == "slaking"
                            {
                                pokemonImage2.image = UIImage(named: "slaking")!
                            }
                if value2.lowercased() == "nincada"
                            {
                                pokemonImage2.image = UIImage(named: "nincada")!
                            }
                if value2.lowercased() == "ninjask"
                            {
                                pokemonImage2.image = UIImage(named: "ninjask")!
                            }
                if value2.lowercased() == "shedinja"
                            {
                                pokemonImage2.image = UIImage(named: "shedinja")!
                            }
                if value2.lowercased() == "whismur"
                            {
                                pokemonImage2.image = UIImage(named: "whismur")!
                            }
                if value2.lowercased() == "loudred"
                            {
                                pokemonImage2.image = UIImage(named: "loudred")!
                            }
                if value2.lowercased() == "exploud"
                            {
                                pokemonImage2.image = UIImage(named: "exploud")!
                            }
                if value2.lowercased() == "makuhita"
                            {
                                pokemonImage2.image = UIImage(named: "makuhita")!
                            }
                if value2.lowercased() == "hariyama"
                            {
                                pokemonImage2.image = UIImage(named: "hariyama")!
                            }
                if value2.lowercased() == "azurill"
                            {
                                pokemonImage2.image = UIImage(named: "azurill")!
                            }
                if value2.lowercased() == "nosepass"
                            {
                                pokemonImage2.image = UIImage(named: "nosepass")!
                            }
                if value2.lowercased() == "skitty"
                            {
                                pokemonImage2.image = UIImage(named: "skitty")!
                            }
                if value2.lowercased() == "delcatty"
                            {
                                pokemonImage2.image = UIImage(named: "delcatty")!
                            }
                if value2.lowercased() == "sableye"
                            {
                                pokemonImage2.image = UIImage(named: "sableye")!
                            }
                if value2.lowercased() == "mawile"
                            {
                                pokemonImage2.image = UIImage(named: "mawile")!
                            }
                if value2.lowercased() == "aron"
                            {
                                pokemonImage2.image = UIImage(named: "aron")!
                            }
                if value2.lowercased() == "lairon"
                            {
                                pokemonImage2.image = UIImage(named: "lairon")!
                            }
                if value2.lowercased() == "aggron"
                            {
                                pokemonImage2.image = UIImage(named: "aggron")!
                            }
                if value2.lowercased() == "meditite"
                            {
                                pokemonImage2.image = UIImage(named: "meditite")!
                            }
                if value2.lowercased() == "medicham"
                            {
                                pokemonImage2.image = UIImage(named: "medicham")!
                            }
                if value2.lowercased() == "electrike"
                            {
                                pokemonImage2.image = UIImage(named: "electrike")!
                            }
                if value2.lowercased() == "manectric"
                            {
                                pokemonImage2.image = UIImage(named: "manectric")!
                            }
                if value2.lowercased() == "plusle"
                            {
                                pokemonImage2.image = UIImage(named: "plusle")!
                            }
                if value2.lowercased() == "minun"
                            {
                                pokemonImage2.image = UIImage(named: "minun")!
                            }
                if value2.lowercased() == "volbeat"
                            {
                                pokemonImage2.image = UIImage(named: "volbeat")!
                            }
                if value2.lowercased() == "illumise"
                            {
                                pokemonImage2.image = UIImage(named: "illumise")!
                            }
                if value2.lowercased() == "roselia"
                            {
                                pokemonImage2.image = UIImage(named: "roselia")!
                            }
                if value2.lowercased() == "gulpin"
                            {
                                pokemonImage2.image = UIImage(named: "gulpin")!
                            }
                if value2.lowercased() == "swalot"
                            {
                                pokemonImage2.image = UIImage(named: "swalot")!
                            }
                if value2.lowercased() == "carvana"
                            {
                                pokemonImage2.image = UIImage(named: "carvana")!
                            }
                if value2.lowercased() == "sharpedo"
                            {
                                pokemonImage2.image = UIImage(named: "sharpedo")!
                            }
                if value2.lowercased() == "wailmer"
                            {
                                pokemonImage2.image = UIImage(named: "wailmer")!
                            }
                if value2.lowercased() == "wailord"
                            {
                                pokemonImage2.image = UIImage(named: "wailord")!
                            }
                if value2.lowercased() == "numel"
                            {
                                pokemonImage2.image = UIImage(named: "numel")!
                            }
                if value2.lowercased() == "camerupt"
                            {
                                pokemonImage2.image = UIImage(named: "camerupt")!
                            }
                if value2.lowercased() == "torkoal"
                            {
                                pokemonImage2.image = UIImage(named: "torkoal")!
                            }
                if value2.lowercased() == "spoink"
                            {
                                pokemonImage2.image = UIImage(named: "spoink")!
                            }
                if value2.lowercased() == "grumpig"
                            {
                                pokemonImage2.image = UIImage(named: "grumpig")!
                            }
                if value2.lowercased() == "spinda"
                            {
                                pokemonImage2.image = UIImage(named: "spinda")!
                            }
                if value2.lowercased() == "trapinch"
                            {
                                pokemonImage2.image = UIImage(named: "trapinch")!
                            }
                if value2.lowercased() == "vibrava"
                            {
                                pokemonImage2.image = UIImage(named: "vibrava")!
                            }
                if value2.lowercased() == "flygon"
                            {
                                pokemonImage2.image = UIImage(named: "flygon")!
                            }
                if value2.lowercased() == "cacnea"
                            {
                                pokemonImage2.image = UIImage(named: "cacnea")!
                            }
                if value2.lowercased() == "cacturne"
                            {
                                pokemonImage2.image = UIImage(named: "cacturne")!
                            }
                if value2.lowercased() == "swablu"
                            {
                                pokemonImage2.image = UIImage(named: "swablu")!
                            }
                if value2.lowercased() == "altaria"
                            {
                                pokemonImage2.image = UIImage(named: "altaria")!
                            }
                if value2.lowercased() == "zangoose"
                            {
                                pokemonImage2.image = UIImage(named: "zangoose")!
                            }
                if value2.lowercased() == "seviper"
                            {
                                pokemonImage2.image = UIImage(named: "seviper")!
                            }
                if value2.lowercased() == "lunatone"
                            {
                                pokemonImage2.image = UIImage(named: "lunatone")!
                            }
                if value2.lowercased() == "solrock"
                            {
                                pokemonImage2.image = UIImage(named: "solrock")!
                            }
                if value2.lowercased() == "barboach"
                            {
                                pokemonImage2.image = UIImage(named: "barboach")!
                            }
                if value2.lowercased() == "whiscash"
                            {
                                pokemonImage2.image = UIImage(named: "whiscash")!
                            }
                if value2.lowercased() == "corphish"
                            {
                                pokemonImage2.image = UIImage(named: "corphish")!
                            }
                if value2.lowercased() == "crawdaunt"
                            {
                                pokemonImage2.image = UIImage(named: "crawdaunt")!
                            }
                if value2.lowercased() == "baltoy"
                            {
                                pokemonImage2.image = UIImage(named: "baltoy")!
                            }
                if value2.lowercased() == "claydol"
                            {
                                pokemonImage2.image = UIImage(named: "claydol")!
                            }
                if value2.lowercased() == "lileep"
                            {
                                pokemonImage2.image = UIImage(named: "lileep")!
                            }
                if value2.lowercased() == "cradily"
                            {
                                pokemonImage2.image = UIImage(named: "cradily")!
                            }
                if value2.lowercased() == "anorith"
                            {
                                pokemonImage2.image = UIImage(named: "anorith")!
                            }
                if value2.lowercased() == "armaldo"
                            {
                                pokemonImage2.image = UIImage(named: "armaldo")!
                            }
                if value2.lowercased() == "feebas"
                            {
                                pokemonImage2.image = UIImage(named: "feebas")!
                            }
                if value2.lowercased() == "milotic"
                            {
                                pokemonImage2.image = UIImage(named: "milotic")!
                            }
                if value2.lowercased() == "castform"
                            {
                                pokemonImage2.image = UIImage(named: "castform")!
                            }
                if value2.lowercased() == "sunny castform"
                            {
                                pokemonImage2.image = UIImage(named: "sunny castform")!
                            }
                if value2.lowercased() == "snowy castform"
                            {
                                pokemonImage2.image = UIImage(named: "snowy castform")!
                            }
                if value2.lowercased() == "rainy castform"
                            {
                                pokemonImage2.image = UIImage(named: "rainy castform")!
                            }
                if value2.lowercased() == "kecleon"
                            {
                                pokemonImage2.image = UIImage(named: "kecleon")!
                            }
                if value2.lowercased() == "shuppet"
                            {
                                pokemonImage2.image = UIImage(named: "shuppet")!
                            }
                if value2.lowercased() == "banette"
                            {
                                pokemonImage2.image = UIImage(named: "banette")!
                            }
                if value2.lowercased() == "duskull"
                            {
                                pokemonImage2.image = UIImage(named: "duskull")!
                            }
                if value2.lowercased() == "dusclops"
                            {
                                pokemonImage2.image = UIImage(named: "dusclops")!
                            }
                if value2.lowercased() == "tropius"
                            {
                                pokemonImage2.image = UIImage(named: "tropius")!
                            }
                if value2.lowercased() == "chimecho"
                            {
                                pokemonImage2.image = UIImage(named: "chimecho")!
                            }
                if value2.lowercased() == "absol"
                            {
                                pokemonImage2.image = UIImage(named: "absol")!
                            }
                if value2.lowercased() == "wynaut"
                            {
                                pokemonImage2.image = UIImage(named: "wynaut")!
                            }
                if value2.lowercased() == "snorunt"
                            {
                                pokemonImage2.image = UIImage(named: "snorunt")!
                            }
                if value2.lowercased() == "glalie"
                            {
                                pokemonImage2.image = UIImage(named: "glalie")!
                            }
                if value2.lowercased() == "spheal"
                            {
                                pokemonImage2.image = UIImage(named: "spheal")!
                            }
                if value2.lowercased() == "sealeo"
                            {
                                pokemonImage2.image = UIImage(named: "sealeo")!
                            }
                if value2.lowercased() == "walrein"
                            {
                                pokemonImage2.image = UIImage(named: "walrein")!
                            }
                if value2.lowercased() == "clamperl"
                            {
                                pokemonImage2.image = UIImage(named: "clamperl")!
                            }
                if value2.lowercased() == "huntail"
                            {
                                pokemonImage2.image = UIImage(named: "huntail")!
                            }
                if value2.lowercased() == "gorebyss"
                            {
                                pokemonImage2.image = UIImage(named: "gorebyss")!
                            }
                if value2.lowercased() == "relicanth"
                            {
                                pokemonImage2.image = UIImage(named: "relicanth")!
                            }
                if value2.lowercased() == "luvdisc"
                            {
                                pokemonImage2.image = UIImage(named: "luvdisc")!
                            }
                if value2.lowercased() == "bagon"
                            {
                                pokemonImage2.image = UIImage(named: "bagon")!
                            }
                if value2.lowercased() == "shelgon"
                            {
                                pokemonImage2.image = UIImage(named: "shelgon")!
                            }
                if value2.lowercased() == "salamence"
                            {
                                pokemonImage2.image = UIImage(named: "salamence")!
                            }
                if value2.lowercased() == "beldum"
                            {
                                pokemonImage2.image = UIImage(named: "beldum")!
                            }
                if value2.lowercased() == "metang"
                            {
                                pokemonImage2.image = UIImage(named: "metang")!
                            }
                if value2.lowercased() == "metagross"
                            {
                                pokemonImage2.image = UIImage(named: "metagross")!
                            }
                if value2.lowercased() == "regirock"
                            {
                                pokemonImage2.image = UIImage(named: "regirock")!
                            }
                if value2.lowercased() == "regice"
                            {
                                pokemonImage2.image = UIImage(named: "regice")!
                            }
                if value2.lowercased() == "registeel"
                            {
                                pokemonImage2.image = UIImage(named: "registeel")!
                            }
                if value2.lowercased() == "latias"
                            {
                                pokemonImage2.image = UIImage(named: "latias")!
                            }
                if value2.lowercased() == "latios"
                            {
                                pokemonImage2.image = UIImage(named: "latios")!
                            }
                if value2.lowercased() == "kyogre"
                            {
                                pokemonImage2.image = UIImage(named: "kyogre")!
                            }
                if value2.lowercased() == "groudon"
                            {
                                pokemonImage2.image = UIImage(named: "groudon")!
                            }
                if value2.lowercased() == "rayquaza"
                            {
                                pokemonImage2.image = UIImage(named: "rayquaza")!
                            }
                if value2.lowercased() == "jirachi"
                            {
                                pokemonImage2.image = UIImage(named: "jirachi")!
                            }
                if value2.lowercased() == "deoxys"
                            {
                                pokemonImage2.image = UIImage(named: "deoxys")!
                            }
                if value2.lowercased() == "defence deoxys"
                            {
                                pokemonImage2.image = UIImage(named: "defence deoxys")!
                            }
                if value2.lowercased() == "attack deoxys"
                            {
                                pokemonImage2.image = UIImage(named: "attack deoxys")!
                            }
                if value2.lowercased() == "speed deoxys"
                            {
                                pokemonImage2.image = UIImage(named: "speed deoxys")!
                            }
                if value2.lowercased() == "turtwig"
                            {
                                pokemonImage2.image = UIImage(named: "turtwig")!
                            }
                if value2.lowercased() == "grotle"
                            {
                                pokemonImage2.image = UIImage(named: "grotle")!
                            }
                if value2.lowercased() == "torterra"
                            {
                                pokemonImage2.image = UIImage(named: "torterra")!
                            }
                if value2.lowercased() == "chimchar"
                            {
                                pokemonImage2.image = UIImage(named: "chimchar")!
                            }
                if value2.lowercased() == "monferno"
                            {
                                pokemonImage2.image = UIImage(named: "monferno")!
                            }
                if value2.lowercased() == "infernape"
                            {
                                pokemonImage2.image = UIImage(named: "infernape")!
                            }
                if value2.lowercased() == "piplup"
                            {
                                pokemonImage2.image = UIImage(named: "piplup")!
                            }
                if value2.lowercased() == "prinplup"
                            {
                                pokemonImage2.image = UIImage(named: "prinplup")!
                            }
                if value2.lowercased() == "empoleon"
                            {
                                pokemonImage2.image = UIImage(named: "empoleon")!
                            }
                if value2.lowercased() == "starly"
                            {
                                pokemonImage2.image = UIImage(named: "starly")!
                            }
                if value2.lowercased() == "staravia"
                            {
                                pokemonImage2.image = UIImage(named: "starvaria")!
                            }
                if value2.lowercased() == "staraptor"
                            {
                                pokemonImage2.image = UIImage(named: "staraptor")!
                            }
                if value2.lowercased() == "bidoof"
                            {
                                pokemonImage2.image = UIImage(named: "bidoof")!
                            }
                if value2.lowercased() == "bibarel"
                            {
                                pokemonImage2.image = UIImage(named: "bibarel")!
                            }
                if value2.lowercased() == "kricketot"
                            {
                                pokemonImage2.image = UIImage(named: "kricketot")!
                            }
                if value2.lowercased() == "kricketune"
                            {
                                pokemonImage2.image = UIImage(named: "kricketune")!
                            }
                if value2.lowercased() == "shinx"
                            {
                                pokemonImage2.image = UIImage(named: "shinx")!
                            }
                if value2.lowercased() == "luxio"
                       {
                           pokemonImage2.image = UIImage(named: "luxio")!
                       }
                if value2.lowercased() == "luxray"
                            {
                                pokemonImage2.image = UIImage(named: "luxray")!
                            }
                if value2.lowercased() == "budew"
                            {
                                pokemonImage2.image = UIImage(named: "budew")!
                            }
                if value2.lowercased() == "roserade"
                            {
                                pokemonImage2.image = UIImage(named: "roserade")!
                            }
                if value2.lowercased() == "cranidos"
                            {
                                pokemonImage2.image = UIImage(named: "cranidos")!
                            }
                if value2.lowercased() == "rampardos"
                            {
                                pokemonImage2.image = UIImage(named: "rampardos")!
                            }
                if value2.lowercased() == "shieldon"
                            {
                                pokemonImage2.image = UIImage(named: "shieldon")!
                            }
                if value2.lowercased() == "bastiodon"
                            {
                                pokemonImage2.image = UIImage(named: "bastiodon")!
                            }
                if value2.lowercased() == "plant burmy"
                            {
                                pokemonImage2.image = UIImage(named: "plant burmy")!
                            }
                if value2.lowercased() == "trash burmy"
                            {
                                pokemonImage2.image = UIImage(named: "trash burmy")!
                            }
                if value2.lowercased() == "sand burmy"
                            {
                                pokemonImage2.image = UIImage(named: "sand burmy")!
                            }
                if value2.lowercased() == "plant wormadam"
                            {
                                pokemonImage2.image = UIImage(named: "plant wormadam")!
                            }
                if value2.lowercased() == "trash wormadam"
                            {
                                pokemonImage2.image = UIImage(named: "trash wormadam")!
                            }
                if value2.lowercased() == "sand wormadam"
                            {
                                pokemonImage2.image = UIImage(named: "sand wormadam")!
                            }
                if value2.lowercased() == "mothim"
                            {
                                pokemonImage2.image = UIImage(named: "mothim")!
                            }
                if value2.lowercased() == "combee"
                            {
                                pokemonImage2.image = UIImage(named: "combee")!
                            }
                if value2.lowercased() == "vespiquen"
                            {
                                pokemonImage2.image = UIImage(named: "vespiquen")!
                            }
                if value2.lowercased() == "pachirisu"
                            {
                                pokemonImage2.image = UIImage(named: "pachirisu")!
                            }
                if value2.lowercased() == "buizel"
                            {
                                pokemonImage2.image = UIImage(named: "buizel")!
                            }
                if value2.lowercased() == "floatzel"
                            {
                                pokemonImage2.image = UIImage(named: "floatzel")!
                            }
                if value2.lowercased() == "cherubi"
                            {
                                pokemonImage2.image = UIImage(named: "cherubi")!
                            }
                if value2.lowercased() == "overcast cherrim"
                            {
                                pokemonImage2.image = UIImage(named: "overcast cherrim")!
                            }
                if value2.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage2.image = UIImage(named: "sunshine cherrim")!
                            }
                if value2.lowercased() == "east shellos"
                            {
                                pokemonImage2.image = UIImage(named: "east shellos")!
                            }
                if value2.lowercased() == "west shellos"
                            {
                                pokemonImage2.image = UIImage(named: "west shellos")!
                            }
                if value2.lowercased() == "east gastrodon"
                            {
                                pokemonImage2.image = UIImage(named: "east gastrodon")!
                            }
                if value2.lowercased() == "west gastrodon"
                            {
                                pokemonImage2.image = UIImage(named: "west gastrodon")!
                            }
                if value2.lowercased() == "ambipom"
                            {
                                pokemonImage2.image = UIImage(named: "ambipom")!
                            }
                if value2.lowercased() == "drifloon"
                            {
                                pokemonImage2.image = UIImage(named: "drifloon")!
                            }
                if value2.lowercased() == "drifblim"
                            {
                                pokemonImage2.image = UIImage(named: "drifblim")!
                            }
                if value2.lowercased() == "buneary"
                            {
                                pokemonImage2.image = UIImage(named: "buneary")!
                            }
                if value2.lowercased() == "lopunny"
                            {
                                pokemonImage2.image = UIImage(named: "lopunny")!
                            }
                if value2.lowercased() == "mismagius"
                            {
                                pokemonImage2.image = UIImage(named: "mismagius")!
                            }
                if value2.lowercased() == "honchkrow"
                            {
                                pokemonImage2.image = UIImage(named: "honchkrow")!
                            }
                if value2.lowercased() == "glameow"
                            {
                                pokemonImage2.image = UIImage(named: "glameow")!
                            }
                if value2.lowercased() == "purugly"
                            {
                                pokemonImage2.image = UIImage(named: "purugly")!
                            }
                if value2.lowercased() == "chingling"
                            {
                                pokemonImage2.image = UIImage(named: "chingling")!
                            }
                if value2.lowercased() == "stunky"
                            {
                                pokemonImage2.image = UIImage(named: "stunky")!
                            }
                if value2.lowercased() == "skuntank"
                            {
                                pokemonImage2.image = UIImage(named: "skuntank")!
                            }
                if value2.lowercased() == "bronzor"
                            {
                                pokemonImage2.image = UIImage(named: "bronzor")!
                            }
                if value2.lowercased() == "bronzong"
                            {
                                pokemonImage2.image = UIImage(named: "bronzong")!
                            }
                if value2.lowercased() == "bonsly"
                            {
                                pokemonImage2.image = UIImage(named: "bonsly")!
                            }
                if value2.lowercased() == "mime jr."
                            {
                                pokemonImage2.image = UIImage(named: "mime jr.")!
                            }
                if value2.lowercased() == "happiny"
                            {
                                pokemonImage2.image = UIImage(named: "happiny")!
                            }
                if value2.lowercased() == "chatot"
                            {
                                pokemonImage2.image = UIImage(named: "chatot")!
                            }
                if value2.lowercased() == "spiritomb"
                            {
                                pokemonImage2.image = UIImage(named: "spiritomb")!
                            }
                if value2.lowercased() == "gible"
                            {
                                pokemonImage2.image = UIImage(named: "gible")!
                            }
                if value2.lowercased() == "gabite"
                            {
                                pokemonImage2.image = UIImage(named: "gabite")!
                            }
                if value2.lowercased() == "garchomp"
                            {
                                pokemonImage2.image = UIImage(named: "garchomp")!
                            }
                if value2.lowercased() == "munchlax"
                            {
                                pokemonImage2.image = UIImage(named: "munchlax")!
                            }
                if value2.lowercased() == "riolu"
                            {
                                pokemonImage2.image = UIImage(named: "riolu")!
                            }
                if value2.lowercased() == "lucario"
                            {
                                pokemonImage2.image = UIImage(named: "lucario")!
                            }
                if value2.lowercased() == "hippopotas"
                            {
                                pokemonImage2.image = UIImage(named: "hippopotas")!
                            }
                if value2.lowercased() == "hippowdon"
                            {
                                pokemonImage2.image = UIImage(named: "hippowdon")!
                            }
                if value2.lowercased() == "skorupi"
                            {
                                pokemonImage2.image = UIImage(named: "skorupi")!
                            }
                if value2.lowercased() == "drapion"
                            {
                                pokemonImage2.image = UIImage(named: "drapion")!
                            }
                if value2.lowercased() == "croagunk"
                            {
                                pokemonImage2.image = UIImage(named: "croagunk")!
                            }
                if value2.lowercased() == "toxicroak"
                            {
                                pokemonImage2.image = UIImage(named: "toxicroak")!
                            }
                if value2.lowercased() == "carnivine"
                            {
                                pokemonImage2.image = UIImage(named: "carnivine")!
                            }
                if value2.lowercased() == "finneon"
                            {
                                pokemonImage2.image = UIImage(named: "finneon")!
                            }
                if value2.lowercased() == "lumineon"
                            {
                                pokemonImage2.image = UIImage(named: "lumineon")!
                            }
                if value2.lowercased() == "mantyke"
                            {
                                pokemonImage2.image = UIImage(named: "mantyke")!
                            }
                if value2.lowercased() == "snover"
                            {
                                pokemonImage2.image = UIImage(named: "snover")!
                            }
                if value2.lowercased() == "Abomasnow"
                            {
                                pokemonImage2.image = UIImage(named: "abomasnow")!
                            }
                if value2.lowercased() == "weavile"
                            {
                                pokemonImage2.image = UIImage(named: "weavile")!
                            }
                if value2.lowercased() == "magnezone"
                            {
                                pokemonImage2.image = UIImage(named: "magnezone")!
                            }
                if value2.lowercased() == "lickilicky"
                            {
                                pokemonImage2.image = UIImage(named: "lickilicky")!
                            }
                if value2.lowercased() == "rhyperior"
                            {
                                pokemonImage2.image = UIImage(named: "rhyperior")!
                            }
                if value2.lowercased() == "tangrowth"
                            {
                                pokemonImage2.image = UIImage(named: "tangrowth")!
                            }
                if value2.lowercased() == "electivire"
                            {
                                pokemonImage2.image = UIImage(named: "electivire")!
                            }
                if value2.lowercased() == "magmortar"
                            {
                                pokemonImage2.image = UIImage(named: "magmortar")!
                            }
                if value2.lowercased() == "togekiss"
                            {
                                pokemonImage2.image = UIImage(named: "togekiss")!
                            }
                if value2.lowercased() == "yanmega"
                            {
                                pokemonImage2.image = UIImage(named: "yanmega")!
                            }
                if value2.lowercased() == "leafeon"
                            {
                                pokemonImage2.image = UIImage(named: "leafeon")!
                            }
                if value2.lowercased() == "glaceon"
                            {
                                pokemonImage2.image = UIImage(named: "glaceon")!
                            }
                if value2.lowercased() == "gliscor"
                            {
                                pokemonImage2.image = UIImage(named: "gliscor")!
                            }
                if value2.lowercased() == "mamoswine"
                            {
                                pokemonImage2.image = UIImage(named: "mamoswine")!
                            }
                if value2.lowercased() == "porygon-z"
                            {
                                pokemonImage2.image = UIImage(named: "porygon-z")!
                            }
                if value2.lowercased() == "gallade"
                            {
                                pokemonImage2.image = UIImage(named: "gallade")!
                            }
                if value2.lowercased() == "probopass"
                            {
                                pokemonImage2.image = UIImage(named: "probopass")!
                            }
                if value2.lowercased() == "dusknoir"
                            {
                                pokemonImage2.image = UIImage(named: "dusknoir")!
                            }
                if value2.lowercased() == "froslass"
                            {
                                pokemonImage2.image = UIImage(named: "froslass")!
                            }
                if value2.lowercased() == "uxie"
                            {
                                pokemonImage2.image = UIImage(named: "uxie")!
                            }
                if value2.lowercased() == "azelf"
                            {
                                pokemonImage2.image = UIImage(named: "azelf")!
                            }
                if value2.lowercased() == "mesprit"
                            {
                                pokemonImage2.image = UIImage(named: "mesprit")!
                            }
                if value2.lowercased() == "dialga"
                            {
                                pokemonImage2.image = UIImage(named: "dialga")!
                            }
                if value2.lowercased() == "palkia"
                            {
                                pokemonImage2.image = UIImage(named: "palkia")!
                            }
                if value2.lowercased() == "heatran"
                            {
                                pokemonImage2.image = UIImage(named: "heatran")!
                            }
                if value2.lowercased() == "regigigas"
                            {
                                pokemonImage2.image = UIImage(named: "regigigas")!
                            }
                if value2.lowercased() == "altered giratina"
                            {
                                pokemonImage2.image = UIImage(named: "altered giratina")!
                            }
                if value2.lowercased() == "origin giratina"
                            {
                                pokemonImage2.image = UIImage(named: "origin giratina")!
                            }
                if value2.lowercased() == "cresselia"
                            {
                                pokemonImage2.image = UIImage(named: "cresselia")!
                            }
                if value2.lowercased() == "phione"
                            {
                                pokemonImage2.image = UIImage(named: "phione")!
                            }
                if value2.lowercased() == "manaphy"
                            {
                                pokemonImage2.image = UIImage(named: "manaphy")!
                            }
                if value2.lowercased() == "darkrai"
                            {
                                pokemonImage2.image = UIImage(named: "darkrai")!
                            }
                if value2.lowercased() == "shaymin"
                            {
                                pokemonImage2.image = UIImage(named: "shaymin")!
                            }
                if value2.lowercased() == "shaymin sky"
                            {
                                pokemonImage2.image = UIImage(named: "shaymin sky")!
                            }
                if value2.lowercased() == "arceus"
                            {
                                pokemonImage2.image = UIImage(named: "arceus")!
                            }


                if value3.lowercased() == "bulbasaur"
                            {
                                pokemonImage3.image = UIImage(named: "bulbasaur")!
                            }
                if value3.lowercased() == "ivysaur"
                            {
                                pokemonImage3.image = UIImage(named: "ivysaur")!
                            }
                if value3.lowercased() == "venusaur"
                            {
                                pokemonImage3.image = UIImage(named: "venusaur")!
                            }
                if value3.lowercased() == "charmander"
                            {
                                pokemonImage3.image = UIImage(named: "charmander")!
                            }
                if value3.lowercased() == "charmeleon"
                            {
                                pokemonImage3.image = UIImage(named: "charmeleon")!
                            }
                if value3.lowercased() == "charizard"
                            {
                                pokemonImage3.image = UIImage(named: "charizard")!
                            }
                if value3.lowercased() == "squirtle"
                            {
                                pokemonImage3.image = UIImage(named: "squirtle")!
                            }
                if value3.lowercased() == "wartortle"
                            {
                                pokemonImage3.image = UIImage(named: "wartortle")!
                            }
                if value3.lowercased() == "blastoise"
                            {
                                pokemonImage3.image = UIImage(named: "blastoise")!
                            }
                if value3.lowercased() == "caterpie"
                            {
                                pokemonImage3.image = UIImage(named: "caterpie")!
                            }
                if value3.lowercased() == "metapod"
                            {
                                pokemonImage3.image = UIImage(named: "metapod")!
                            }
                if value3.lowercased() == "butterfree"
                            {
                                pokemonImage3.image = UIImage(named: "butterfree")!
                            }
                if value3.lowercased() == "weedle"
                            {
                                pokemonImage3.image = UIImage(named: "weedle")!
                            }
                if value3.lowercased() == "kakuna"
                            {
                                pokemonImage3.image = UIImage(named: "kakuna")!
                            }
                if value3.lowercased() == "beedrill"
                            {
                                pokemonImage3.image = UIImage(named: "beedrill")!
                            }
                if value3.lowercased() == "pidgey"
                            {
                                pokemonImage3.image = UIImage(named: "pidgey")!
                            }
                if value3.lowercased() == "pidgeotto"
                            {
                                pokemonImage3.image = UIImage(named: "pidgeotto")!
                            }
                if value3.lowercased() == "pidgeot"
                            {
                                pokemonImage3.image = UIImage(named: "pidgeot")!
                            }
                if value3.lowercased() == "rattata"
                            {
                                pokemonImage3.image = UIImage(named: "rattata")!
                            }
                if value3.lowercased() == "raticate"
                            {
                                pokemonImage3.image = UIImage(named: "raticate")!
                            }
                if value3.lowercased() == "alolan rattata"
                            {
                                pokemonImage3.image = UIImage(named: "alolan rattata")!
                            }
                if value3.lowercased() == "alolan raticate"
                            {
                                pokemonImage3.image = UIImage(named: "alolan raticate")!
                            }
                if value3.lowercased() == "spearow"
                            {
                                pokemonImage3.image = UIImage(named: "spearow")!
                            }
                if value3.lowercased() == "fearow"
                            {
                                pokemonImage3.image = UIImage(named: "fearow")!
                            }
                if value3.lowercased() == "ekans"
                            {
                                pokemonImage3.image = UIImage(named: "ekans")!
                            }
                if value3.lowercased() == "arbok"
                            {
                                pokemonImage3.image = UIImage(named: "arbok")!
                            }
                if value3.lowercased() == "pikachu"
                            {
                                pokemonImage3.image = UIImage(named: "pikachu")!
                            }
                if value3.lowercased() == "raichu"
                            {
                                pokemonImage3.image = UIImage(named: "raichu")!
                            }
                if value3.lowercased() == "alolan raichu"
                            {
                                pokemonImage3.image = UIImage(named: "alolan raichu")!
                            }
                if value3.lowercased() == "sandshrew"
                            {
                                pokemonImage3.image = UIImage(named: "sandshrew")!
                            }
                if value3.lowercased() == "sandslash"
                            {
                                pokemonImage3.image = UIImage(named: "sandslash")!
                            }
                if value3.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage3.image = UIImage(named: "alolan sandshrew")!
                            }
                if value3.lowercased() == "alolan sandslash"
                            {
                                pokemonImage3.image = UIImage(named: "alolan sandslash")!
                            }
                if value3.lowercased() == "nidoran f"
                            {
                                pokemonImage3.image = UIImage(named: "nidoran f")!
                            }
                if value3.lowercased() == "nidorina"
                            {
                                pokemonImage3.image = UIImage(named: "nidorina")!
                            }
                if value3.lowercased() == "nidoqueen"
                            {
                                pokemonImage3.image = UIImage(named: "nidoqueen")!
                            }
                if value3.lowercased() == "nidoran m"
                            {
                                pokemonImage3.image = UIImage(named: "nidoran m")!
                            }
                if value3.lowercased() == "nidorino"
                            {
                                pokemonImage3.image = UIImage(named: "nidorino")!
                            }
                if value3.lowercased() == "nidoking"
                            {
                                pokemonImage3.image = UIImage(named: "nidoking")!
                            }
                if value3.lowercased() == "clefairy"
                            {
                                pokemonImage3.image = UIImage(named: "clefairy")!
                            }
                if value3.lowercased() == "clefable"
                            {
                                pokemonImage3.image = UIImage(named: "clefable")!
                            }
                if value3.lowercased() == "vulpix"
                            {
                                pokemonImage3.image = UIImage(named: "vulpix")!
                            }
                if value3.lowercased() == "alolan vulpix"
                            {
                                pokemonImage3.image = UIImage(named: "alolan vulpix")!
                            }
                if value3.lowercased() == "ninetales"
                            {
                                pokemonImage3.image = UIImage(named: "ninetales")!
                            }
                if value3.lowercased() == "alolan ninetales"
                            {
                                pokemonImage3.image = UIImage(named: "alolan ninetales")!
                            }
                if value3.lowercased() == "jigglypuff"
                            {
                                pokemonImage3.image = UIImage(named: "jigglypuff")!
                            }
                if value3.lowercased() == "wigglytuff"
                            {
                                pokemonImage3.image = UIImage(named: "wigglytuff")!
                            }
                if value3.lowercased() == "zubat"
                            {
                                pokemonImage3.image = UIImage(named: "zubat")!
                            }
                if value3.lowercased() == "golbat"
                            {
                                pokemonImage3.image = UIImage(named: "golbat")!
                            }
                if value3.lowercased() == "oddish"
                            {
                                pokemonImage3.image = UIImage(named: "oddish")!
                            }
                if value3.lowercased() == "gloom"
                            {
                                pokemonImage3.image = UIImage(named: "gloom")!
                            }
                if value3.lowercased() == "vileplume"
                            {
                                pokemonImage3.image = UIImage(named: "vileplume")!
                            }
                if value3.lowercased() == "paras"
                            {
                                pokemonImage3.image = UIImage(named: "paras")!
                            }
                if value3.lowercased() == "parasect"
                            {
                                pokemonImage3.image = UIImage(named: "parasect")!
                            }
                if value3.lowercased() == "venonat"
                            {
                                pokemonImage3.image = UIImage(named: "venonat")!
                            }
                if value3.lowercased() == "venomoth"
                            {
                                pokemonImage3.image = UIImage(named: "venomoth")!
                            }
                if value3.lowercased() == "diglett"
                            {
                                pokemonImage3.image = UIImage(named: "diglett")!
                            }
                if value3.lowercased() == "alolan diglett"
                            {
                                pokemonImage3.image = UIImage(named: "alolan diglett")!
                            }
                if value3.lowercased() == "dugtrio"
                            {
                                pokemonImage3.image = UIImage(named: "dugtrio")!
                            }
                if value3.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage3.image = UIImage(named: "alolan dugtrio")!
                            }
                if value3.lowercased() == "meowth"
                            {
                                pokemonImage3.image = UIImage(named: "meowth")!
                            }
                if value3.lowercased() == "alolan meowth"
                            {
                                pokemonImage3.image = UIImage(named: "alolan meowth")!
                            }
                if value3.lowercased() == "persian"
                            {
                                pokemonImage3.image = UIImage(named: "persian")!
                            }
                if value3.lowercased() == "alolan persian"
                            {
                                pokemonImage3.image = UIImage(named: "alolan persian")!
                            }

                if value3.lowercased() == "psyduck"
                            {
                                pokemonImage3.image = UIImage(named: "psyduck")!
                            }
                if value3.lowercased() == "golduck"
                            {
                                pokemonImage3.image = UIImage(named: "golduck")!
                            }
                if value3.lowercased() == "mankey"
                            {
                                pokemonImage3.image = UIImage(named: "mankey")!
                            }
                if value3.lowercased() == "primeape"
                            {
                                pokemonImage3.image = UIImage(named: "primeape")!
                            }
                if value3.lowercased() == "growlithe"
                            {
                                pokemonImage3.image = UIImage(named: "growlithe")!
                            }
                if value3.lowercased() == "arcanine"
                            {
                                pokemonImage3.image = UIImage(named: "arcanine")!
                            }
                if value3.lowercased() == "poliwag"
                            {
                                pokemonImage3.image = UIImage(named: "poliwag")!
                            }
                if value3.lowercased() == "poliwhirl"
                            {
                                pokemonImage3.image = UIImage(named: "poliwhirl")!
                            }
                if value3.lowercased() == "poliwrath"
                            {
                                pokemonImage3.image = UIImage(named: "poliwrath")!
                            }
                if value3.lowercased() == "abra"
                            {
                                pokemonImage3.image = UIImage(named: "abra")!
                            }
                if value3.lowercased() == "kadabra"
                            {
                                pokemonImage3.image = UIImage(named: "kadabra")!
                            }
                if value3.lowercased() == "alakazam"
                            {
                                pokemonImage3.image = UIImage(named: "alakazam")!
                            }
                if value3.lowercased() == "machop"
                            {
                                pokemonImage3.image = UIImage(named: "machop")!
                            }
                if value3.lowercased() == "machoke"
                            {
                                pokemonImage3.image = UIImage(named: "machoke")!
                            }
                if value3.lowercased() == "machamp"
                            {
                                pokemonImage3.image = UIImage(named: "machamp")!
                            }
                if value3.lowercased() == "bellsprout"
                            {
                                pokemonImage3.image = UIImage(named: "bellsprout")!
                            }
                if value3.lowercased() == "weepinbell"
                            {
                                pokemonImage3.image = UIImage(named: "weepinbell")!
                            }
                if value3.lowercased() == "victreebel"
                            {
                                pokemonImage3.image = UIImage(named: "victreebel")!
                            }
                if value3.lowercased() == "tentacool"
                            {
                                pokemonImage3.image = UIImage(named: "tentacool")!
                            }
                if value3.lowercased() == "tentacruel"
                            {
                                pokemonImage3.image = UIImage(named: "tentacruel")!
                            }
                if value3.lowercased() == "geodude"
                            {
                                pokemonImage3.image = UIImage(named: "geodude")!
                            }
                if value3.lowercased() == "alolan geodude"
                            {
                                pokemonImage3.image = UIImage(named: "alolan geodude")!
                            }
                if value3.lowercased() == "graveler"
                            {
                                pokemonImage3.image = UIImage(named: "graveler")!
                            }
                if value3.lowercased() == "alolan graveler"
                            {
                                pokemonImage3.image = UIImage(named: "alolan graveler")!
                            }
                if value3.lowercased() == "golem"
                            {
                                pokemonImage3.image = UIImage(named: "golem")!
                            }
                if value3.lowercased() == "alolan golem"
                            {
                                pokemonImage3.image = UIImage(named: "alolan golem")!
                            }
                if value3.lowercased() == "ponyta"
                            {
                                pokemonImage3.image = UIImage(named: "ponyta")!
                            }
                if value3.lowercased() == "rapidash"
                            {
                                pokemonImage3.image = UIImage(named: "rapidash")!
                            }
                if value3.lowercased() == "slowpoke"
                            {
                                pokemonImage3.image = UIImage(named: "slowpoke")!
                            }
                if value3.lowercased() == "slowbro"
                            {
                                pokemonImage3.image = UIImage(named: "slowbro")!
                            }
                if value3.lowercased() == "magnemite"
                            {
                                pokemonImage3.image = UIImage(named: "magnemite")!
                            }
                if value3.lowercased() == "magneton"
                            {
                                pokemonImage3.image = UIImage(named: "magneton")!
                            }
                if value3.lowercased() == "farfetch’d"
                            {
                                pokemonImage3.image = UIImage(named: "farfetch’d")!
                            }
                if value3.lowercased() == "doduo"
                            {
                                pokemonImage3.image = UIImage(named: "doduo")!
                            }
                if value3.lowercased() == "dodrio"
                            {
                                pokemonImage3.image = UIImage(named: "dodrio")!
                            }
                if value3.lowercased() == "seel"
                            {
                                pokemonImage3.image = UIImage(named: "seel")!
                            }
                if value3.lowercased() == "dewgong"
                            {
                                pokemonImage3.image = UIImage(named: "dewgong")!
                            }
                if value3.lowercased() == "grimer"
                            {
                                pokemonImage3.image = UIImage(named: "grimer")!
                            }
                if value3.lowercased() == "alolan grimer"
                            {
                                pokemonImage3.image = UIImage(named: "alolan grimer")!
                            }
                if value3.lowercased() == "muk"
                            {
                                pokemonImage3.image = UIImage(named: "muk")!
                            }
                if value3.lowercased() == "alolan muk"
                            {
                                pokemonImage3.image = UIImage(named: "alolan muk")!
                            }
                if value3.lowercased() == "shellder"
                            {
                                pokemonImage3.image = UIImage(named: "shellder")!
                            }
                if value3.lowercased() == "cloyster"
                            {
                                pokemonImage3.image = UIImage(named: "cloyster")!
                            }
                if value3.lowercased() == "gastly"
                            {
                                pokemonImage3.image = UIImage(named: "gastly")!
                            }
                if value3.lowercased() == "haunter"
                            {
                                pokemonImage3.image = UIImage(named: "haunter")!
                            }
                if value3.lowercased() == "gengar"
                            {
                                pokemonImage3.image = UIImage(named: "gengar")!
                            }
                if value3.lowercased() == "onix"
                            {
                                pokemonImage3.image = UIImage(named: "onix")!
                            }
                if value3.lowercased() == "drowzee"
                            {
                                pokemonImage3.image = UIImage(named: "drowzee")!
                            }
                if value3.lowercased() == "hypno"
                            {
                                pokemonImage3.image = UIImage(named: "hypno")!
                            }
                if value3.lowercased() == "krabby"
                            {
                                pokemonImage3.image = UIImage(named: "krabby")!
                            }
                if value3.lowercased() == "kingler"
                            {
                                pokemonImage3.image = UIImage(named: "kingler")!
                            }
                if value3.lowercased() == "voltorb"
                            {
                                pokemonImage3.image = UIImage(named: "voltorb")!
                            }
                if value3.lowercased() == "electrode"
                            {
                                pokemonImage3.image = UIImage(named: "electrode")!
                            }
                if value3.lowercased() == "exeggcute"
                            {
                                pokemonImage3.image = UIImage(named: "exeggcute")!
                            }
                if value3.lowercased() == "exeggutor"
                            {
                                pokemonImage3.image = UIImage(named: "exeggutor")!
                            }
                if value3.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage3.image = UIImage(named: "alolan exeggutor")!
                            }
                if value3.lowercased() == "cubone"
                            {
                                pokemonImage3.image = UIImage(named: "cubone")!
                            }
                if value3.lowercased() == "marowak"
                            {
                                pokemonImage3.image = UIImage(named: "marowak")!
                            }
                if value3.lowercased() == "alolan marowak"
                            {
                                pokemonImage3.image = UIImage(named: "alolan marowak")!
                            }
                if value3.lowercased() == "hitmonlee"
                            {
                                pokemonImage3.image = UIImage(named: "hitmonlee")!
                            }
                if value3.lowercased() == "hitmonchan"
                            {
                                pokemonImage3.image = UIImage(named: "hitmonchan")!
                            }
                if value3.lowercased() == "lickitung"
                            {
                                pokemonImage3.image = UIImage(named: "lickitung")!
                            }
                if value3.lowercased() == "koffing"
                            {
                                pokemonImage3.image = UIImage(named: "koffing")!
                            }
                if value3.lowercased() == "weezing"
                            {
                                pokemonImage3.image = UIImage(named: "weezing")!
                            }
                if value3.lowercased() == "rhyhorn"
                            {
                                pokemonImage3.image = UIImage(named: "rhyhorn")!
                            }
                if value3.lowercased() == "rhydon"
                            {
                                pokemonImage3.image = UIImage(named: "rhydon")!
                            }
                if value3.lowercased() == "chansey"
                            {
                                pokemonImage3.image = UIImage(named: "chansey")!
                            }
                if value3.lowercased() == "tangela"
                            {
                                pokemonImage3.image = UIImage(named: "tangela")!
                            }
                if value3.lowercased() == "kangaskhan"
                            {
                                pokemonImage3.image = UIImage(named: "kangaskhan")!
                            }
                if value3.lowercased() == "horsea"
                            {
                                pokemonImage3.image = UIImage(named: "horsea")!
                            }
                if value3.lowercased() == "seadra"
                            {
                                pokemonImage3.image = UIImage(named: "seadra")!
                            }
                if value3.lowercased() == "goldeen"
                            {
                                pokemonImage3.image = UIImage(named: "goldeen")!
                            }
                if value3.lowercased() == "seaking"
                            {
                                pokemonImage3.image = UIImage(named: "seaking")!
                            }
                if value3.lowercased() == "staryu"
                            {
                                pokemonImage3.image = UIImage(named: "staryu")!
                            }
                if value3.lowercased() == "starmie"
                            {
                                pokemonImage3.image = UIImage(named: "starmie")!
                            }
                if value3.lowercased() == "mr.mime"
                            {
                                pokemonImage3.image = UIImage(named: "mr.mime")!
                            }
                if value3.lowercased() == "scyther"
                            {
                                pokemonImage3.image = UIImage(named: "scyther")!
                            }
                if value3.lowercased() == "jynx"
                            {
                                pokemonImage3.image = UIImage(named: "jynx")!
                            }
                if value3.lowercased() == "electabuzz"
                            {
                                pokemonImage3.image = UIImage(named: "electabuzz")!
                            }
                if value3.lowercased() == "magmar"
                            {
                                pokemonImage3.image = UIImage(named: "magmar")!
                            }
                if value3.lowercased() == "pinsir"
                            {
                                pokemonImage3.image = UIImage(named: "pinsir")!
                            }
                if value3.lowercased() == "tauros"
                            {
                                pokemonImage3.image = UIImage(named: "tauros")!
                            }
                if value3.lowercased() == "magikarp"
                            {
                                pokemonImage3.image = UIImage(named: "magikarp")!
                            }
                if value3.lowercased() == "gyarados"
                            {
                                pokemonImage3.image = UIImage(named: "gyarados")!
                            }
                if value3.lowercased() == "lapras"
                            {
                                pokemonImage3.image = UIImage(named: "lapras")!
                            }
                if value3.lowercased() == "ditto"
                            {
                                pokemonImage3.image = UIImage(named: "ditto")!
                            }
                if value3.lowercased() == "eevee"
                            {
                                pokemonImage3.image = UIImage(named: "eevee")!
                            }
                if value3.lowercased() == "vaporeon"
                            {
                                pokemonImage3.image = UIImage(named: "vaporeon")!
                            }
                if value3.lowercased() == "jolteon"
                            {
                                pokemonImage3.image = UIImage(named: "jolteon")!
                            }
                if value3.lowercased() == "flareon"
                            {
                                pokemonImage3.image = UIImage(named: "flareon")!
                            }
                if value3.lowercased() == "porygon"
                            {
                                pokemonImage3.image = UIImage(named: "porygon")!
                            }
                if value3.lowercased() == "omanyte"
                            {
                                pokemonImage3.image = UIImage(named: "omanyte")!
                            }
                if value3.lowercased() == "omastar"
                            {
                                pokemonImage3.image = UIImage(named: "omastar")!
                            }
                if value3.lowercased() == "kabuto"
                            {
                                pokemonImage3.image = UIImage(named: "kabuto")!
                            }
                if value3.lowercased() == "kabutops"
                            {
                                pokemonImage3.image = UIImage(named: "kabutops")!
                            }
                if value3.lowercased() == "aerodactyl"
                            {
                                pokemonImage3.image = UIImage(named: "aerodactyl")!
                            }
                if value3.lowercased() == "snorlax"
                            {
                                pokemonImage3.image = UIImage(named: "snorlax")!
                            }
                if value3.lowercased() == "articuno"
                            {
                                pokemonImage3.image = UIImage(named: "articuno")!
                            }
                if value3.lowercased() == "zapdos"
                            {
                                pokemonImage3.image = UIImage(named: "zapdos")!
                            }
                if value3.lowercased() == "moltres"
                            {
                                pokemonImage3.image = UIImage(named: "moltres")!
                            }
                if value3.lowercased() == "dratini"
                            {
                                pokemonImage3.image = UIImage(named: "dratini")!
                            }
                if value3.lowercased() == "dragonair"
                            {
                                pokemonImage3.image = UIImage(named: "dragonair")!
                            }
                if value3.lowercased() == "mewtwo"
                            {
                                pokemonImage3.image = UIImage(named: "mewtwo")!
                            }
                if value3.lowercased() == "mew"
                            {
                                pokemonImage3.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value3.lowercased() == "chikorita"
                            {
                                pokemonImage3.image = UIImage(named: "chikorita")!
                            }
                if value3.lowercased() == "bayleef"
                            {
                                pokemonImage3.image = UIImage(named: "bayleef")!
                            }
                if value3.lowercased() == "meganium"
                            {
                                pokemonImage3.image = UIImage(named: "meganium")!
                            }
                if value3.lowercased() == "cyndaquil"
                            {
                                pokemonImage3.image = UIImage(named: "cyndaquil")!
                            }
                if value3.lowercased() == "quilava"
                            {
                                pokemonImage3.image = UIImage(named: "quilava")!
                            }
                if value3.lowercased() == "typhlosion"
                            {
                                pokemonImage3.image = UIImage(named: "typhlosion")!
                            }
                if value3.lowercased() == "totodile"
                            {
                                pokemonImage3.image = UIImage(named: "totodile")!
                            }
                if value3.lowercased() == "croconaw"
                            {
                                pokemonImage3.image = UIImage(named: "croconaw")!
                            }
                if value3.lowercased() == "feraligatr"
                            {
                                pokemonImage3.image = UIImage(named: "feraligatr")!
                            }
                if value3.lowercased() == "sentret"
                            {
                                pokemonImage3.image = UIImage(named: "sentret")!
                            }
                if value3.lowercased() == "furret"
                            {
                                pokemonImage3.image = UIImage(named: "furret")!
                            }
                if value3.lowercased() == "hoothoot"
                            {
                                pokemonImage3.image = UIImage(named: "hoothoot")!
                            }
                if value3.lowercased() == "noctowl"
                            {
                                pokemonImage3.image = UIImage(named: "noctowl")!
                            }
                if value3.lowercased() == "ledyba"
                            {
                                pokemonImage3.image = UIImage(named: "ledyba")!
                            }
                if value3.lowercased() == "ledian"
                            {
                                pokemonImage3.image = UIImage(named: "ledian")!
                            }
                if value3.lowercased() == "spinarak"
                            {
                                pokemonImage3.image = UIImage(named: "spinarak")!
                            }
                if value3.lowercased() == "ariados"
                            {
                                pokemonImage3.image = UIImage(named: "ariados")!
                            }
                if value3.lowercased() == "crobat"
                            {
                                pokemonImage3.image = UIImage(named: "crobat")!
                            }
                if value3.lowercased() == "chinchou"
                            {
                                pokemonImage3.image = UIImage(named: "chinchou")!
                            }
                if value3.lowercased() == "lanturn"
                            {
                                pokemonImage3.image = UIImage(named: "lanturn")!
                            }
                if value3.lowercased() == "pichu"
                            {
                                pokemonImage3.image = UIImage(named: "pichu")!
                            }
                 if value3.lowercased() == "cleffa"
                            {
                                pokemonImage3.image = UIImage(named: "cleffa")!
                            }
                if value3.lowercased() == "igglybuff"
                            {
                                pokemonImage3.image = UIImage(named: "igglybuff")!
                            }
                if value3.lowercased() == "togepi"
                            {
                                pokemonImage3.image = UIImage(named: "togepi")!
                            }
                if value3.lowercased() == "togetic"
                            {
                                pokemonImage3.image = UIImage(named: "togetic")!
                            }
                if value3.lowercased() == "natu"
                            {
                                pokemonImage3.image = UIImage(named: "natu")!
                            }
                if value3.lowercased() == "xatu"
                            {
                                pokemonImage3.image = UIImage(named: "xatu")!
                            }
                if value3.lowercased() == "mareep"
                            {
                                pokemonImage3.image = UIImage(named: "mareep")!
                            }
                if value3.lowercased() == "flaaffy"
                            {
                                pokemonImage3.image = UIImage(named: "flaaffy")!
                            }
                if value3.lowercased() == "ampharos"
                            {
                                pokemonImage3.image = UIImage(named: "ampharos")!
                            }
                if value3.lowercased() == "bellossom"
                            {
                                pokemonImage3.image = UIImage(named: "bellossom")!
                            }
                 if value3.lowercased() == "marill"
                            {
                                pokemonImage3.image = UIImage(named: "marill")!
                            }
                if value3.lowercased() == "azumarill"
                            {
                                pokemonImage3.image = UIImage(named: "azumarill")!
                            }
                if value3.lowercased() == "sudowoodo"
                            {
                                pokemonImage3.image = UIImage(named: "sudowoodo")!
                            }
                if value3.lowercased() == "politoed"
                            {
                                pokemonImage3.image = UIImage(named: "politoed")!
                            }
                if value3.lowercased() == "hoppip"
                            {
                                pokemonImage3.image = UIImage(named: "hoppip")!
                            }
                if value3.lowercased() == "skiploom"
                            {
                                pokemonImage3.image = UIImage(named: "skiploom")!
                            }
                if value3.lowercased() == "jumpluff"
                            {
                                pokemonImage3.image = UIImage(named: "jumpluff")!
                            }
                if value3.lowercased() == "aipom"
                            {
                                pokemonImage3.image = UIImage(named: "aipom")!
                            }
                if value3.lowercased() == "sunkern"
                            {
                                pokemonImage3.image = UIImage(named: "sunkern")!
                            }
                if value3.lowercased() == "sunflora"
                            {
                                pokemonImage3.image = UIImage(named: "sunflora")!
                            }
                if value3.lowercased() == "yanma"
                            {
                                pokemonImage3.image = UIImage(named: "yanma")!
                            }
                if value3.lowercased() == "wooper"
                            {
                                pokemonImage3.image = UIImage(named: "wooper")!
                            }
                if value3.lowercased() == "quagsire"
                            {
                                pokemonImage3.image = UIImage(named: "quagsire")!
                            }
                if value3.lowercased() == "espeon"
                            {
                                pokemonImage3.image = UIImage(named: "espeon")!
                            }
                if value3.lowercased() == "umbreon"
                            {
                                pokemonImage3.image = UIImage(named: "umbreon")!
                            }
                if value3.lowercased() == "murkrow"
                            {
                                pokemonImage3.image = UIImage(named: "murkrow")!
                            }
                if value3.lowercased() == "slowking"
                            {
                                pokemonImage3.image = UIImage(named: "slowking")!
                            }
                if value3.lowercased() == "girafarig"
                            {
                                pokemonImage3.image = UIImage(named: "girafarig")!
                            }
                if value3.lowercased() == "misdreavus"
                            {
                                pokemonImage3.image = UIImage(named: "misdreavus")!
                            }
                if value3.lowercased() == "unown"
                            {
                                pokemonImage3.image = UIImage(named: "unown")!
                            }
                if value3.lowercased() == "wobbuffet"
                            {
                                pokemonImage3.image = UIImage(named: "wobbuffet")!
                            }
                if value3.lowercased() == "pineco"
                            {
                                pokemonImage3.image = UIImage(named: "pineco")!
                            }
                if value3.lowercased() == "forretress"
                            {
                                pokemonImage3.image = UIImage(named: "forretress")!
                            }
                if value3.lowercased() == "dunsparce"
                            {
                                pokemonImage3.image = UIImage(named: "dunsparce")!
                            }
                if value3.lowercased() == "gligar"
                            {
                                pokemonImage3.image = UIImage(named: "gligar")!
                            }
                if value3.lowercased() == "steelix"
                            {
                                pokemonImage3.image = UIImage(named: "steelix")!
                            }
                if value3.lowercased() == "snubbull"
                            {
                                pokemonImage3.image = UIImage(named: "snubbull")!
                            }
                if value3.lowercased() == "granbull"
                            {
                                pokemonImage3.image = UIImage(named: "granbull")!
                            }
                if value3.lowercased() == "qwilfish"
                            {
                                pokemonImage3.image = UIImage(named: "qwilfish")!
                            }
                if value3.lowercased() == "scizor"
                            {
                                pokemonImage3.image = UIImage(named: "scizor")!
                            }
                if value3.lowercased() == "shuckle"
                            {
                                pokemonImage3.image = UIImage(named: "shuckle")!
                            }
                if value3.lowercased() == "heracross"
                            {
                                pokemonImage3.image = UIImage(named: "heracross")!
                            }
                if value3.lowercased() == "sneasel"
                            {
                                pokemonImage3.image = UIImage(named: "sneasel")!
                            }
                if value3.lowercased() == "teddiursa"
                            {
                                pokemonImage3.image = UIImage(named: "teddiursa")!
                            }
                if value3.lowercased() == "ursaring"
                            {
                                pokemonImage3.image = UIImage(named: "ursaring")!
                            }
                if value3.lowercased() == "slugma"
                            {
                                pokemonImage3.image = UIImage(named: "slugma")!
                            }
                if value3.lowercased() == "magcargo"
                            {
                                pokemonImage3.image = UIImage(named: "magcargo")!
                            }
                if value3.lowercased() == "swinub"
                            {
                                pokemonImage3.image = UIImage(named: "swinub")!
                            }
                if value3.lowercased() == "piloswine"
                            {
                                pokemonImage3.image = UIImage(named: "piloswine")!
                            }
                if value3.lowercased() == "corsola"
                            {
                                pokemonImage3.image = UIImage(named: "corsola")!
                            }
                if value3.lowercased() == "remoraid"
                            {
                                pokemonImage3.image = UIImage(named: "remoraid")!
                            }
                if value3.lowercased() == "octillery"
                            {
                                pokemonImage3.image = UIImage(named: "octillery")!
                            }
                if value3.lowercased() == "delibird"
                            {
                                pokemonImage3.image = UIImage(named: "delibird")!
                            }
                if value3.lowercased() == "mantine"
                            {
                                pokemonImage3.image = UIImage(named: "mantine")!
                            }
                 if value3.lowercased() == "skarmory"
                            {
                                pokemonImage3.image = UIImage(named: "skarmory")!
                            }
                if value3.lowercased() == "houndour"
                            {
                                pokemonImage3.image = UIImage(named: "houndour")!
                            }
                if value3.lowercased() == "houndoom"
                            {
                                pokemonImage3.image = UIImage(named: "houndoom")!
                            }
                if value3.lowercased() == "kingdra"
                            {
                                pokemonImage3.image = UIImage(named: "kingdra")!
                            }
                if value3.lowercased() == "phanpy"
                            {
                                pokemonImage3.image = UIImage(named: "phanpy")!
                            }
                if value3.lowercased() == "donphan"
                            {
                                pokemonImage3.image = UIImage(named: "donphan")!
                            }
                if value3.lowercased() == "porygon2"
                            {
                                pokemonImage3.image = UIImage(named: "porygon2")!
                            }
                if value3.lowercased() == "stantler"
                            {
                                pokemonImage3.image = UIImage(named: "stantler")!
                            }
                if value3.lowercased() == "smeargle"
                            {
                                pokemonImage3.image = UIImage(named: "smeargle")!
                            }
                if value3.lowercased() == "tyrogue"
                            {
                                pokemonImage3.image = UIImage(named: "tyrogue")!
                            }
                if value3.lowercased() == "hitmontop"
                            {
                                pokemonImage3.image = UIImage(named: "hitmontop")!
                            }
                if value3.lowercased() == "smoochum"
                            {
                                pokemonImage3.image = UIImage(named: "smoochum")!
                            }
                if value3.lowercased() == "elekid"
                            {
                                pokemonImage3.image = UIImage(named: "elekid")!
                            }
                if value3.lowercased() == "magby"
                            {
                                pokemonImage3.image = UIImage(named: "magby")!
                            }
                if value3.lowercased() == "miltank"
                            {
                                pokemonImage3.image = UIImage(named: "miltank")!
                            }
                if value3.lowercased() == "blissey"
                            {
                                pokemonImage3.image = UIImage(named: "blissey")!
                            }
                if value3.lowercased() == "raikou"
                            {
                                pokemonImage3.image = UIImage(named: "raikou")!
                            }
                if value3.lowercased() == "entei"
                            {
                                pokemonImage3.image = UIImage(named: "entei")!
                            }
                if value3.lowercased() == "suicune"
                            {
                                pokemonImage3.image = UIImage(named: "suicune")!
                            }
                if value3.lowercased() == "larvitar"
                            {
                                pokemonImage3.image = UIImage(named: "larvitar")!
                            }
                if value3.lowercased() == "pupitar"
                            {
                                pokemonImage3.image = UIImage(named: "pupitar")!
                            }
                if value3.lowercased() == "tyranitar"
                            {
                                pokemonImage3.image = UIImage(named: "tyranitar")!
                            }
                if value3.lowercased() == "ho-oh"
                            {
                                pokemonImage3.image = UIImage(named: "ho-oh")!
                            }
                if value3.lowercased() == "lugia"
                            {
                                pokemonImage3.image = UIImage(named: "lugia")!
                            }
                if value3.lowercased() == "celebi"
                            {
                                pokemonImage3.image = UIImage(named: "celebi")!
                            }
                if value3.lowercased() == "treecko"
                            {
                                pokemonImage3.image = UIImage(named: "treecko")!
                            }
                if value3.lowercased() == "grovyle"
                            {
                                pokemonImage3.image = UIImage(named: "grovyle")!
                            }
                if value3.lowercased() == "sceptile"
                            {
                                pokemonImage3.image = UIImage(named: "sceptile")!
                            }
                if value3.lowercased() == "torchic"
                            {
                                pokemonImage3.image = UIImage(named: "torchic")!
                            }
                if value3.lowercased() == "combusken"
                            {
                                pokemonImage3.image = UIImage(named: "combusken")!
                            }
                if value3.lowercased() == "blaziken"
                            {
                                pokemonImage3.image = UIImage(named: "blaziken")!
                            }
                if value3.lowercased() == "mudkip"
                            {
                                pokemonImage3.image = UIImage(named: "mudkip")!
                            }
                if value3.lowercased() == "marshtomp"
                            {
                                pokemonImage3.image = UIImage(named: "marshtomp")!
                            }
                if value3.lowercased() == "swampert"
                            {
                                pokemonImage3.image = UIImage(named: "swampert")!
                            }
                if value3.lowercased() == "poochyena"
                            {
                                pokemonImage3.image = UIImage(named: "poochyena")!
                            }
                if value3.lowercased() == "mightyena"
                            {
                                pokemonImage3.image = UIImage(named: "mightyena")!
                            }
                if value3.lowercased() == "zigzagoon"
                            {
                                pokemonImage3.image = UIImage(named: "zigzagoon")!
                            }
                if value3.lowercased() == "linoone"
                            {
                                pokemonImage3.image = UIImage(named: "linoone")!
                            }
                if value3.lowercased() == "wurmple"
                            {
                                pokemonImage3.image = UIImage(named: "wurmple")!
                            }
                if value3.lowercased() == "silcoon"
                            {
                                pokemonImage3.image = UIImage(named: "silcoon")!
                            }
                if value3.lowercased() == "beautifly"
                            {
                                pokemonImage3.image = UIImage(named: "beautifly")!
                            }
                if value3.lowercased() == "cascoon"
                            {
                                pokemonImage3.image = UIImage(named: "cascoon")!
                            }
                if value3.lowercased() == "dustox"
                            {
                                pokemonImage3.image = UIImage(named: "dustox")!
                            }
                if value3.lowercased() == "lotad"
                            {
                                pokemonImage3.image = UIImage(named: "lotad")!
                            }
                if value3.lowercased() == "lombre"
                            {
                                pokemonImage3.image = UIImage(named: "lombre")!
                            }
                if value3.lowercased() == "ludicolo"
                            {
                                pokemonImage3.image = UIImage(named: "ludicolo")!
                            }
                if value3.lowercased() == "seedot"
                            {
                                pokemonImage3.image = UIImage(named: "seedot")!
                            }
                if value3.lowercased() == "nuzleaf"
                            {
                                pokemonImage3.image = UIImage(named: "nuzleaf")!
                            }
                if value3.lowercased() == "shiftry"
                            {
                                pokemonImage3.image = UIImage(named: "shiftry")!
                            }
                if value3.lowercased() == "taillow"
                            {
                                pokemonImage3.image = UIImage(named: "taillow")!
                            }
                if value3.lowercased() == "swellow"
                                    {
                                        pokemonImage3.image = UIImage(named: "swellow")!
                                    }
                if value3.lowercased() == "wingull"
                            {
                                pokemonImage3.image = UIImage(named: "wingull")!
                            }
                if value3.lowercased() == "pelipper"
                            {
                                pokemonImage3.image = UIImage(named: "pelipper")!
                            }
                if value3.lowercased() == "ralts"
                            {
                                pokemonImage3.image = UIImage(named: "ralts")!
                            }
                if value3.lowercased() == "kirlia"
                            {
                                pokemonImage3.image = UIImage(named: "kirlia")!
                            }
                if value3.lowercased() == "gardevoir"
                            {
                                pokemonImage3.image = UIImage(named: "gardevoir")!
                            }
                if value3.lowercased() == "surskit"
                            {
                                pokemonImage3.image = UIImage(named: "surskit")!
                            }
                if value3.lowercased() == "masquerain"
                            {
                                pokemonImage3.image = UIImage(named: "masquerain")!
                            }
                if value3.lowercased() == "shroomish"
                            {
                                pokemonImage3.image = UIImage(named: "shroomish")!
                            }
                if value3.lowercased() == "breloom"
                            {
                                pokemonImage3.image = UIImage(named: "breloom")!
                            }
                if value3.lowercased() == "slakoth"
                            {
                                pokemonImage3.image = UIImage(named: "slakoth")!
                            }
                if value3.lowercased() == "vigoroth"
                            {
                                pokemonImage3.image = UIImage(named: "vigoroth")!
                            }
                if value3.lowercased() == "slaking"
                            {
                                pokemonImage3.image = UIImage(named: "slaking")!
                            }
                if value3.lowercased() == "nincada"
                            {
                                pokemonImage3.image = UIImage(named: "nincada")!
                            }
                if value3.lowercased() == "ninjask"
                            {
                                pokemonImage3.image = UIImage(named: "ninjask")!
                            }
                if value3.lowercased() == "shedinja"
                            {
                                pokemonImage3.image = UIImage(named: "shedinja")!
                            }
                if value3.lowercased() == "whismur"
                            {
                                pokemonImage3.image = UIImage(named: "whismur")!
                            }
                if value3.lowercased() == "loudred"
                            {
                                pokemonImage3.image = UIImage(named: "loudred")!
                            }
                if value3.lowercased() == "exploud"
                            {
                                pokemonImage3.image = UIImage(named: "exploud")!
                            }
                if value3.lowercased() == "makuhita"
                            {
                                pokemonImage3.image = UIImage(named: "makuhita")!
                            }
                if value3.lowercased() == "hariyama"
                            {
                                pokemonImage3.image = UIImage(named: "hariyama")!
                            }
                if value3.lowercased() == "azurill"
                            {
                                pokemonImage3.image = UIImage(named: "azurill")!
                            }
                if value3.lowercased() == "nosepass"
                            {
                                pokemonImage3.image = UIImage(named: "nosepass")!
                            }
                if value3.lowercased() == "skitty"
                            {
                                pokemonImage3.image = UIImage(named: "skitty")!
                            }
                if value3.lowercased() == "delcatty"
                            {
                                pokemonImage3.image = UIImage(named: "delcatty")!
                            }
                if value3.lowercased() == "sableye"
                            {
                                pokemonImage3.image = UIImage(named: "sableye")!
                            }
                if value3.lowercased() == "mawile"
                            {
                                pokemonImage3.image = UIImage(named: "mawile")!
                            }
                if value3.lowercased() == "aron"
                            {
                                pokemonImage3.image = UIImage(named: "aron")!
                            }
                if value3.lowercased() == "lairon"
                            {
                                pokemonImage3.image = UIImage(named: "lairon")!
                            }
                if value3.lowercased() == "aggron"
                            {
                                pokemonImage3.image = UIImage(named: "aggron")!
                            }
                if value3.lowercased() == "meditite"
                            {
                                pokemonImage3.image = UIImage(named: "meditite")!
                            }
                if value3.lowercased() == "medicham"
                            {
                                pokemonImage3.image = UIImage(named: "medicham")!
                            }
                if value3.lowercased() == "electrike"
                            {
                                pokemonImage3.image = UIImage(named: "electrike")!
                            }
                if value3.lowercased() == "manectric"
                            {
                                pokemonImage3.image = UIImage(named: "manectric")!
                            }
                if value3.lowercased() == "plusle"
                            {
                                pokemonImage3.image = UIImage(named: "plusle")!
                            }
                if value3.lowercased() == "minun"
                            {
                                pokemonImage3.image = UIImage(named: "minun")!
                            }
                if value3.lowercased() == "volbeat"
                            {
                                pokemonImage3.image = UIImage(named: "volbeat")!
                            }
                if value3.lowercased() == "illumise"
                            {
                                pokemonImage3.image = UIImage(named: "illumise")!
                            }
                if value3.lowercased() == "roselia"
                            {
                                pokemonImage3.image = UIImage(named: "roselia")!
                            }
                if value3.lowercased() == "gulpin"
                            {
                                pokemonImage3.image = UIImage(named: "gulpin")!
                            }
                if value3.lowercased() == "swalot"
                            {
                                pokemonImage3.image = UIImage(named: "swalot")!
                            }
                if value3.lowercased() == "carvana"
                            {
                                pokemonImage3.image = UIImage(named: "carvana")!
                            }
                if value3.lowercased() == "sharpedo"
                            {
                                pokemonImage3.image = UIImage(named: "sharpedo")!
                            }
                if value3.lowercased() == "wailmer"
                            {
                                pokemonImage3.image = UIImage(named: "wailmer")!
                            }
                if value3.lowercased() == "wailord"
                            {
                                pokemonImage3.image = UIImage(named: "wailord")!
                            }
                if value3.lowercased() == "numel"
                            {
                                pokemonImage3.image = UIImage(named: "numel")!
                            }
                if value3.lowercased() == "camerupt"
                            {
                                pokemonImage3.image = UIImage(named: "camerupt")!
                            }
                if value3.lowercased() == "torkoal"
                            {
                                pokemonImage3.image = UIImage(named: "torkoal")!
                            }
                if value3.lowercased() == "spoink"
                            {
                                pokemonImage3.image = UIImage(named: "spoink")!
                            }
                if value3.lowercased() == "grumpig"
                            {
                                pokemonImage3.image = UIImage(named: "grumpig")!
                            }
                if value3.lowercased() == "spinda"
                            {
                                pokemonImage3.image = UIImage(named: "spinda")!
                            }
                if value3.lowercased() == "trapinch"
                            {
                                pokemonImage3.image = UIImage(named: "trapinch")!
                            }
                if value3.lowercased() == "vibrava"
                            {
                                pokemonImage3.image = UIImage(named: "vibrava")!
                            }
                if value3.lowercased() == "flygon"
                            {
                                pokemonImage3.image = UIImage(named: "flygon")!
                            }
                if value3.lowercased() == "cacnea"
                            {
                                pokemonImage3.image = UIImage(named: "cacnea")!
                            }
                if value3.lowercased() == "cacturne"
                            {
                                pokemonImage3.image = UIImage(named: "cacturne")!
                            }
                if value3.lowercased() == "swablu"
                            {
                                pokemonImage3.image = UIImage(named: "swablu")!
                            }
                if value3.lowercased() == "altaria"
                            {
                                pokemonImage3.image = UIImage(named: "altaria")!
                            }
                if value3.lowercased() == "zangoose"
                            {
                                pokemonImage3.image = UIImage(named: "zangoose")!
                            }
                if value3.lowercased() == "seviper"
                            {
                                pokemonImage3.image = UIImage(named: "seviper")!
                            }
                if value3.lowercased() == "lunatone"
                            {
                                pokemonImage3.image = UIImage(named: "lunatone")!
                            }
                if value3.lowercased() == "solrock"
                            {
                                pokemonImage3.image = UIImage(named: "solrock")!
                            }
                if value3.lowercased() == "barboach"
                            {
                                pokemonImage3.image = UIImage(named: "barboach")!
                            }
                if value3.lowercased() == "whiscash"
                            {
                                pokemonImage3.image = UIImage(named: "whiscash")!
                            }
                if value3.lowercased() == "corphish"
                            {
                                pokemonImage3.image = UIImage(named: "corphish")!
                            }
                if value3.lowercased() == "crawdaunt"
                            {
                                pokemonImage3.image = UIImage(named: "crawdaunt")!
                            }
                if value3.lowercased() == "baltoy"
                            {
                                pokemonImage3.image = UIImage(named: "baltoy")!
                            }
                if value3.lowercased() == "claydol"
                            {
                                pokemonImage3.image = UIImage(named: "claydol")!
                            }
                if value3.lowercased() == "lileep"
                            {
                                pokemonImage3.image = UIImage(named: "lileep")!
                            }
                if value3.lowercased() == "cradily"
                            {
                                pokemonImage3.image = UIImage(named: "cradily")!
                            }
                if value3.lowercased() == "anorith"
                            {
                                pokemonImage3.image = UIImage(named: "anorith")!
                            }
                if value3.lowercased() == "armaldo"
                            {
                                pokemonImage3.image = UIImage(named: "armaldo")!
                            }
                if value3.lowercased() == "feebas"
                            {
                                pokemonImage3.image = UIImage(named: "feebas")!
                            }
                if value3.lowercased() == "milotic"
                            {
                                pokemonImage3.image = UIImage(named: "milotic")!
                            }
                if value3.lowercased() == "castform"
                            {
                                pokemonImage3.image = UIImage(named: "castform")!
                            }
                if value3.lowercased() == "sunny castform"
                            {
                                pokemonImage3.image = UIImage(named: "sunny castform")!
                            }
                if value3.lowercased() == "snowy castform"
                            {
                                pokemonImage3.image = UIImage(named: "snowy castform")!
                            }
                if value3.lowercased() == "rainy castform"
                            {
                                pokemonImage3.image = UIImage(named: "rainy castform")!
                            }
                if value3.lowercased() == "kecleon"
                            {
                                pokemonImage3.image = UIImage(named: "kecleon")!
                            }
                if value3.lowercased() == "shuppet"
                            {
                                pokemonImage3.image = UIImage(named: "shuppet")!
                            }
                if value3.lowercased() == "banette"
                            {
                                pokemonImage3.image = UIImage(named: "banette")!
                            }
                if value3.lowercased() == "duskull"
                            {
                                pokemonImage3.image = UIImage(named: "duskull")!
                            }
                if value3.lowercased() == "dusclops"
                            {
                                pokemonImage3.image = UIImage(named: "dusclops")!
                            }
                if value3.lowercased() == "tropius"
                            {
                                pokemonImage3.image = UIImage(named: "tropius")!
                            }
                if value3.lowercased() == "chimecho"
                            {
                                pokemonImage3.image = UIImage(named: "chimecho")!
                            }
                if value3.lowercased() == "absol"
                            {
                                pokemonImage3.image = UIImage(named: "absol")!
                            }
                if value3.lowercased() == "wynaut"
                            {
                                pokemonImage3.image = UIImage(named: "wynaut")!
                            }
                if value3.lowercased() == "snorunt"
                            {
                                pokemonImage3.image = UIImage(named: "snorunt")!
                            }
                if value3.lowercased() == "glalie"
                            {
                                pokemonImage3.image = UIImage(named: "glalie")!
                            }
                if value3.lowercased() == "spheal"
                            {
                                pokemonImage3.image = UIImage(named: "spheal")!
                            }
                if value3.lowercased() == "sealeo"
                            {
                                pokemonImage3.image = UIImage(named: "sealeo")!
                            }
                if value3.lowercased() == "walrein"
                            {
                                pokemonImage3.image = UIImage(named: "walrein")!
                            }
                if value3.lowercased() == "clamperl"
                            {
                                pokemonImage3.image = UIImage(named: "clamperl")!
                            }
                if value3.lowercased() == "huntail"
                            {
                                pokemonImage3.image = UIImage(named: "huntail")!
                            }
                if value3.lowercased() == "gorebyss"
                            {
                                pokemonImage3.image = UIImage(named: "gorebyss")!
                            }
                if value3.lowercased() == "relicanth"
                            {
                                pokemonImage3.image = UIImage(named: "relicanth")!
                            }
                if value3.lowercased() == "luvdisc"
                            {
                                pokemonImage3.image = UIImage(named: "luvdisc")!
                            }
                if value3.lowercased() == "bagon"
                            {
                                pokemonImage3.image = UIImage(named: "bagon")!
                            }
                if value3.lowercased() == "shelgon"
                            {
                                pokemonImage3.image = UIImage(named: "shelgon")!
                            }
                if value3.lowercased() == "salamence"
                            {
                                pokemonImage3.image = UIImage(named: "salamence")!
                            }
                if value3.lowercased() == "beldum"
                            {
                                pokemonImage3.image = UIImage(named: "beldum")!
                            }
                if value3.lowercased() == "metang"
                            {
                                pokemonImage3.image = UIImage(named: "metang")!
                            }
                if value3.lowercased() == "metagross"
                            {
                                pokemonImage3.image = UIImage(named: "metagross")!
                            }
                if value3.lowercased() == "regirock"
                            {
                                pokemonImage3.image = UIImage(named: "regirock")!
                            }
                if value3.lowercased() == "regice"
                            {
                                pokemonImage3.image = UIImage(named: "regice")!
                            }
                if value3.lowercased() == "registeel"
                            {
                                pokemonImage3.image = UIImage(named: "registeel")!
                            }
                if value3.lowercased() == "latias"
                            {
                                pokemonImage3.image = UIImage(named: "latias")!
                            }
                if value3.lowercased() == "latios"
                            {
                                pokemonImage3.image = UIImage(named: "latios")!
                            }
                if value3.lowercased() == "kyogre"
                            {
                                pokemonImage3.image = UIImage(named: "kyogre")!
                            }
                if value3.lowercased() == "groudon"
                            {
                                pokemonImage3.image = UIImage(named: "groudon")!
                            }
                if value3.lowercased() == "rayquaza"
                            {
                                pokemonImage3.image = UIImage(named: "rayquaza")!
                            }
                if value3.lowercased() == "jirachi"
                            {
                                pokemonImage3.image = UIImage(named: "jirachi")!
                            }
                if value3.lowercased() == "deoxys"
                            {
                                pokemonImage3.image = UIImage(named: "deoxys")!
                            }
                if value3.lowercased() == "defence deoxys"
                            {
                                pokemonImage3.image = UIImage(named: "defence deoxys")!
                            }
                if value3.lowercased() == "attack deoxys"
                            {
                                pokemonImage3.image = UIImage(named: "attack deoxys")!
                            }
                if value3.lowercased() == "speed deoxys"
                            {
                                pokemonImage3.image = UIImage(named: "speed deoxys")!
                            }
                if value3.lowercased() == "turtwig"
                            {
                                pokemonImage3.image = UIImage(named: "turtwig")!
                            }
                if value3.lowercased() == "grotle"
                            {
                                pokemonImage3.image = UIImage(named: "grotle")!
                            }
                if value3.lowercased() == "torterra"
                            {
                                pokemonImage3.image = UIImage(named: "torterra")!
                            }
                if value3.lowercased() == "chimchar"
                            {
                                pokemonImage3.image = UIImage(named: "chimchar")!
                            }
                if value3.lowercased() == "monferno"
                            {
                                pokemonImage3.image = UIImage(named: "monferno")!
                            }
                if value3.lowercased() == "infernape"
                            {
                                pokemonImage3.image = UIImage(named: "infernape")!
                            }
                if value3.lowercased() == "piplup"
                            {
                                pokemonImage3.image = UIImage(named: "piplup")!
                            }
                if value3.lowercased() == "prinplup"
                            {
                                pokemonImage3.image = UIImage(named: "prinplup")!
                            }
                if value3.lowercased() == "empoleon"
                            {
                                pokemonImage3.image = UIImage(named: "empoleon")!
                            }
                if value3.lowercased() == "starly"
                            {
                                pokemonImage3.image = UIImage(named: "starly")!
                            }
                if value3.lowercased() == "staravia"
                            {
                                pokemonImage3.image = UIImage(named: "starvaria")!
                            }
                if value3.lowercased() == "staraptor"
                            {
                                pokemonImage3.image = UIImage(named: "staraptor")!
                            }
                if value3.lowercased() == "bidoof"
                            {
                                pokemonImage3.image = UIImage(named: "bidoof")!
                            }
                if value3.lowercased() == "bibarel"
                            {
                                pokemonImage3.image = UIImage(named: "bibarel")!
                            }
                if value3.lowercased() == "kricketot"
                            {
                                pokemonImage3.image = UIImage(named: "kricketot")!
                            }
                if value3.lowercased() == "kricketune"
                            {
                                pokemonImage3.image = UIImage(named: "kricketune")!
                            }
                if value3.lowercased() == "shinx"
                            {
                                pokemonImage3.image = UIImage(named: "shinx")!
                            }
                if value3.lowercased() == "luxio"
                       {
                           pokemonImage3.image = UIImage(named: "luxio")!
                       }
                if value3.lowercased() == "luxray"
                            {
                                pokemonImage3.image = UIImage(named: "luxray")!
                            }
                if value3.lowercased() == "budew"
                            {
                                pokemonImage3.image = UIImage(named: "budew")!
                            }
                if value3.lowercased() == "roserade"
                            {
                                pokemonImage3.image = UIImage(named: "roserade")!
                            }
                if value3.lowercased() == "cranidos"
                            {
                                pokemonImage3.image = UIImage(named: "cranidos")!
                            }
                if value3.lowercased() == "rampardos"
                            {
                                pokemonImage3.image = UIImage(named: "rampardos")!
                            }
                if value3.lowercased() == "shieldon"
                            {
                                pokemonImage3.image = UIImage(named: "shieldon")!
                            }
                if value3.lowercased() == "bastiodon"
                            {
                                pokemonImage3.image = UIImage(named: "bastiodon")!
                            }
                if value3.lowercased() == "plant burmy"
                            {
                                pokemonImage3.image = UIImage(named: "plant burmy")!
                            }
                if value3.lowercased() == "trash burmy"
                            {
                                pokemonImage3.image = UIImage(named: "trash burmy")!
                            }
                if value3.lowercased() == "sand burmy"
                            {
                                pokemonImage3.image = UIImage(named: "sand burmy")!
                            }
                if value3.lowercased() == "plant wormadam"
                            {
                                pokemonImage3.image = UIImage(named: "plant wormadam")!
                            }
                if value3.lowercased() == "trash wormadam"
                            {
                                pokemonImage3.image = UIImage(named: "trash wormadam")!
                            }
                if value3.lowercased() == "sand wormadam"
                            {
                                pokemonImage3.image = UIImage(named: "sand wormadam")!
                            }
                if value3.lowercased() == "mothim"
                            {
                                pokemonImage3.image = UIImage(named: "mothim")!
                            }
                if value3.lowercased() == "combee"
                            {
                                pokemonImage3.image = UIImage(named: "combee")!
                            }
                if value3.lowercased() == "vespiquen"
                            {
                                pokemonImage3.image = UIImage(named: "vespiquen")!
                            }
                if value3.lowercased() == "pachirisu"
                            {
                                pokemonImage3.image = UIImage(named: "pachirisu")!
                            }
                if value3.lowercased() == "buizel"
                            {
                                pokemonImage3.image = UIImage(named: "buizel")!
                            }
                if value3.lowercased() == "floatzel"
                            {
                                pokemonImage3.image = UIImage(named: "floatzel")!
                            }
                if value3.lowercased() == "cherubi"
                            {
                                pokemonImage3.image = UIImage(named: "cherubi")!
                            }
                if value3.lowercased() == "overcast cherrim"
                            {
                                pokemonImage3.image = UIImage(named: "overcast cherrim")!
                            }
                if value3.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage3.image = UIImage(named: "sunshine cherrim")!
                            }
                if value3.lowercased() == "east shellos"
                            {
                                pokemonImage3.image = UIImage(named: "east shellos")!
                            }
                if value3.lowercased() == "west shellos"
                            {
                                pokemonImage3.image = UIImage(named: "west shellos")!
                            }
                if value3.lowercased() == "east gastrodon"
                            {
                                pokemonImage3.image = UIImage(named: "east gastrodon")!
                            }
                if value3.lowercased() == "west gastrodon"
                            {
                                pokemonImage3.image = UIImage(named: "west gastrodon")!
                            }
                if value3.lowercased() == "ambipom"
                            {
                                pokemonImage3.image = UIImage(named: "ambipom")!
                            }
                if value3.lowercased() == "drifloon"
                            {
                                pokemonImage3.image = UIImage(named: "drifloon")!
                            }
                if value3.lowercased() == "drifblim"
                            {
                                pokemonImage3.image = UIImage(named: "drifblim")!
                            }
                if value3.lowercased() == "buneary"
                            {
                                pokemonImage3.image = UIImage(named: "buneary")!
                            }
                if value3.lowercased() == "lopunny"
                            {
                                pokemonImage3.image = UIImage(named: "lopunny")!
                            }
                if value3.lowercased() == "mismagius"
                            {
                                pokemonImage3.image = UIImage(named: "mismagius")!
                            }
                if value3.lowercased() == "honchkrow"
                            {
                                pokemonImage3.image = UIImage(named: "honchkrow")!
                            }
                if value3.lowercased() == "glameow"
                            {
                                pokemonImage3.image = UIImage(named: "glameow")!
                            }
                if value3.lowercased() == "purugly"
                            {
                                pokemonImage3.image = UIImage(named: "purugly")!
                            }
                if value3.lowercased() == "chingling"
                            {
                                pokemonImage3.image = UIImage(named: "chingling")!
                            }
                if value3.lowercased() == "stunky"
                            {
                                pokemonImage3.image = UIImage(named: "stunky")!
                            }
                if value3.lowercased() == "skuntank"
                            {
                                pokemonImage3.image = UIImage(named: "skuntank")!
                            }
                if value3.lowercased() == "bronzor"
                            {
                                pokemonImage3.image = UIImage(named: "bronzor")!
                            }
                if value3.lowercased() == "bronzong"
                            {
                                pokemonImage3.image = UIImage(named: "bronzong")!
                            }
                if value3.lowercased() == "bonsly"
                            {
                                pokemonImage3.image = UIImage(named: "bonsly")!
                            }
                if value3.lowercased() == "mime jr."
                            {
                                pokemonImage3.image = UIImage(named: "mime jr.")!
                            }
                if value3.lowercased() == "happiny"
                            {
                                pokemonImage3.image = UIImage(named: "happiny")!
                            }
                if value3.lowercased() == "chatot"
                            {
                                pokemonImage3.image = UIImage(named: "chatot")!
                            }
                if value3.lowercased() == "spiritomb"
                            {
                                pokemonImage3.image = UIImage(named: "spiritomb")!
                            }
                if value3.lowercased() == "gible"
                            {
                                pokemonImage3.image = UIImage(named: "gible")!
                            }
                if value3.lowercased() == "gabite"
                            {
                                pokemonImage3.image = UIImage(named: "gabite")!
                            }
                if value3.lowercased() == "garchomp"
                            {
                                pokemonImage3.image = UIImage(named: "garchomp")!
                            }
                if value3.lowercased() == "munchlax"
                            {
                                pokemonImage3.image = UIImage(named: "munchlax")!
                            }
                if value3.lowercased() == "riolu"
                            {
                                pokemonImage3.image = UIImage(named: "riolu")!
                            }
                if value3.lowercased() == "lucario"
                            {
                                pokemonImage3.image = UIImage(named: "lucario")!
                            }
                if value3.lowercased() == "hippopotas"
                            {
                                pokemonImage3.image = UIImage(named: "hippopotas")!
                            }
                if value3.lowercased() == "hippowdon"
                            {
                                pokemonImage3.image = UIImage(named: "hippowdon")!
                            }
                if value3.lowercased() == "skorupi"
                            {
                                pokemonImage3.image = UIImage(named: "skorupi")!
                            }
                if value3.lowercased() == "drapion"
                            {
                                pokemonImage3.image = UIImage(named: "drapion")!
                            }
                if value3.lowercased() == "croagunk"
                            {
                                pokemonImage3.image = UIImage(named: "croagunk")!
                            }
                if value3.lowercased() == "toxicroak"
                            {
                                pokemonImage3.image = UIImage(named: "toxicroak")!
                            }
                if value3.lowercased() == "carnivine"
                            {
                                pokemonImage3.image = UIImage(named: "carnivine")!
                            }
                if value3.lowercased() == "finneon"
                            {
                                pokemonImage3.image = UIImage(named: "finneon")!
                            }
                if value3.lowercased() == "lumineon"
                            {
                                pokemonImage3.image = UIImage(named: "lumineon")!
                            }
                if value3.lowercased() == "mantyke"
                            {
                                pokemonImage3.image = UIImage(named: "mantyke")!
                            }
                if value3.lowercased() == "snover"
                            {
                                pokemonImage3.image = UIImage(named: "snover")!
                            }
                if value3.lowercased() == "Abomasnow"
                            {
                                pokemonImage3.image = UIImage(named: "abomasnow")!
                            }
                if value3.lowercased() == "weavile"
                            {
                                pokemonImage3.image = UIImage(named: "weavile")!
                            }
                if value3.lowercased() == "magnezone"
                            {
                                pokemonImage3.image = UIImage(named: "magnezone")!
                            }
                if value3.lowercased() == "lickilicky"
                            {
                                pokemonImage3.image = UIImage(named: "lickilicky")!
                            }
                if value3.lowercased() == "rhyperior"
                            {
                                pokemonImage3.image = UIImage(named: "rhyperior")!
                            }
                if value3.lowercased() == "tangrowth"
                            {
                                pokemonImage3.image = UIImage(named: "tangrowth")!
                            }
                if value3.lowercased() == "electivire"
                            {
                                pokemonImage3.image = UIImage(named: "electivire")!
                            }
                if value3.lowercased() == "magmortar"
                            {
                                pokemonImage3.image = UIImage(named: "magmortar")!
                            }
                if value3.lowercased() == "togekiss"
                            {
                                pokemonImage3.image = UIImage(named: "togekiss")!
                            }
                if value3.lowercased() == "yanmega"
                            {
                                pokemonImage3.image = UIImage(named: "yanmega")!
                            }
                if value3.lowercased() == "leafeon"
                            {
                                pokemonImage3.image = UIImage(named: "leafeon")!
                            }
                if value3.lowercased() == "glaceon"
                            {
                                pokemonImage3.image = UIImage(named: "glaceon")!
                            }
                if value3.lowercased() == "gliscor"
                            {
                                pokemonImage3.image = UIImage(named: "gliscor")!
                            }
                if value3.lowercased() == "mamoswine"
                            {
                                pokemonImage3.image = UIImage(named: "mamoswine")!
                            }
                if value3.lowercased() == "porygon-z"
                            {
                                pokemonImage3.image = UIImage(named: "porygon-z")!
                            }
                if value3.lowercased() == "gallade"
                            {
                                pokemonImage3.image = UIImage(named: "gallade")!
                            }
                if value3.lowercased() == "probopass"
                            {
                                pokemonImage3.image = UIImage(named: "probopass")!
                            }
                if value3.lowercased() == "dusknoir"
                            {
                                pokemonImage3.image = UIImage(named: "dusknoir")!
                            }
                if value3.lowercased() == "froslass"
                            {
                                pokemonImage3.image = UIImage(named: "froslass")!
                            }
                if value3.lowercased() == "uxie"
                            {
                                pokemonImage3.image = UIImage(named: "uxie")!
                            }
                if value3.lowercased() == "azelf"
                            {
                                pokemonImage3.image = UIImage(named: "azelf")!
                            }
                if value3.lowercased() == "mesprit"
                            {
                                pokemonImage3.image = UIImage(named: "mesprit")!
                            }
                if value3.lowercased() == "dialga"
                            {
                                pokemonImage3.image = UIImage(named: "dialga")!
                            }
                if value3.lowercased() == "palkia"
                            {
                                pokemonImage3.image = UIImage(named: "palkia")!
                            }
                if value3.lowercased() == "heatran"
                            {
                                pokemonImage3.image = UIImage(named: "heatran")!
                            }
                if value3.lowercased() == "regigigas"
                            {
                                pokemonImage3.image = UIImage(named: "regigigas")!
                            }
                if value3.lowercased() == "altered giratina"
                            {
                                pokemonImage3.image = UIImage(named: "altered giratina")!
                            }
                if value3.lowercased() == "origin giratina"
                            {
                                pokemonImage3.image = UIImage(named: "origin giratina")!
                            }
                if value3.lowercased() == "cresselia"
                            {
                                pokemonImage3.image = UIImage(named: "cresselia")!
                            }
                if value3.lowercased() == "phione"
                            {
                                pokemonImage3.image = UIImage(named: "phione")!
                            }
                if value3.lowercased() == "manaphy"
                            {
                                pokemonImage3.image = UIImage(named: "manaphy")!
                            }
                if value3.lowercased() == "darkrai"
                            {
                                pokemonImage3.image = UIImage(named: "darkrai")!
                            }
                if value3.lowercased() == "shaymin"
                            {
                                pokemonImage3.image = UIImage(named: "shaymin")!
                            }
                if value3.lowercased() == "shaymin sky"
                            {
                                pokemonImage3.image = UIImage(named: "shaymin sky")!
                            }
                if value3.lowercased() == "arceus"
                            {
                                pokemonImage3.image = UIImage(named: "arceus")!
                            }

                if value4.lowercased() == "bulbasaur"
                            {
                                pokemonImage4.image = UIImage(named: "bulbasaur")!
                            }
                if value4.lowercased() == "ivysaur"
                            {
                                pokemonImage4.image = UIImage(named: "ivysaur")!
                            }
                if value4.lowercased() == "venusaur"
                            {
                                pokemonImage4.image = UIImage(named: "venusaur")!
                            }
                if value4.lowercased() == "charmander"
                            {
                                pokemonImage4.image = UIImage(named: "charmander")!
                            }
                if value4.lowercased() == "charmeleon"
                            {
                                pokemonImage4.image = UIImage(named: "charmeleon")!
                            }
                if value4.lowercased() == "charizard"
                            {
                                pokemonImage4.image = UIImage(named: "charizard")!
                            }
                if value4.lowercased() == "squirtle"
                            {
                                pokemonImage4.image = UIImage(named: "squirtle")!
                            }
                if value4.lowercased() == "wartortle"
                            {
                                pokemonImage4.image = UIImage(named: "wartortle")!
                            }
                if value4.lowercased() == "blastoise"
                            {
                                pokemonImage4.image = UIImage(named: "blastoise")!
                            }
                if value4.lowercased() == "caterpie"
                            {
                                pokemonImage4.image = UIImage(named: "caterpie")!
                            }
                if value4.lowercased() == "metapod"
                            {
                                pokemonImage4.image = UIImage(named: "metapod")!
                            }
                if value4.lowercased() == "butterfree"
                            {
                                pokemonImage4.image = UIImage(named: "butterfree")!
                            }
                if value4.lowercased() == "weedle"
                            {
                                pokemonImage4.image = UIImage(named: "weedle")!
                            }
                if value4.lowercased() == "kakuna"
                            {
                                pokemonImage4.image = UIImage(named: "kakuna")!
                            }
                if value4.lowercased() == "beedrill"
                            {
                                pokemonImage4.image = UIImage(named: "beedrill")!
                            }
                if value4.lowercased() == "pidgey"
                            {
                                pokemonImage4.image = UIImage(named: "pidgey")!
                            }
                if value4.lowercased() == "pidgeotto"
                            {
                                pokemonImage4.image = UIImage(named: "pidgeotto")!
                            }
                if value4.lowercased() == "pidgeot"
                            {
                                pokemonImage4.image = UIImage(named: "pidgeot")!
                            }
                if value4.lowercased() == "rattata"
                            {
                                pokemonImage4.image = UIImage(named: "rattata")!
                            }
                if value4.lowercased() == "raticate"
                            {
                                pokemonImage4.image = UIImage(named: "raticate")!
                            }
                if value4.lowercased() == "alolan rattata"
                            {
                                pokemonImage4.image = UIImage(named: "alolan rattata")!
                            }
                if value4.lowercased() == "alolan raticate"
                            {
                                pokemonImage4.image = UIImage(named: "alolan raticate")!
                            }
                if value4.lowercased() == "spearow"
                            {
                                pokemonImage4.image = UIImage(named: "spearow")!
                            }
                if value4.lowercased() == "fearow"
                            {
                                pokemonImage4.image = UIImage(named: "fearow")!
                            }
                if value4.lowercased() == "ekans"
                            {
                                pokemonImage4.image = UIImage(named: "ekans")!
                            }
                if value4.lowercased() == "arbok"
                            {
                                pokemonImage4.image = UIImage(named: "arbok")!
                            }
                if value4.lowercased() == "pikachu"
                            {
                                pokemonImage4.image = UIImage(named: "pikachu")!
                            }
                if value4.lowercased() == "raichu"
                            {
                                pokemonImage4.image = UIImage(named: "raichu")!
                            }
                if value4.lowercased() == "alolan raichu"
                            {
                                pokemonImage4.image = UIImage(named: "alolan raichu")!
                            }
                if value4.lowercased() == "sandshrew"
                            {
                                pokemonImage4.image = UIImage(named: "sandshrew")!
                            }
                if value4.lowercased() == "sandslash"
                            {
                                pokemonImage4.image = UIImage(named: "sandslash")!
                            }
                if value4.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage4.image = UIImage(named: "alolan sandshrew")!
                            }
                if value4.lowercased() == "alolan sandslash"
                            {
                                pokemonImage4.image = UIImage(named: "alolan sandslash")!
                            }
                if value4.lowercased() == "nidoran f"
                            {
                                pokemonImage4.image = UIImage(named: "nidoran f")!
                            }
                if value4.lowercased() == "nidorina"
                            {
                                pokemonImage4.image = UIImage(named: "nidorina")!
                            }
                if value4.lowercased() == "nidoqueen"
                            {
                                pokemonImage4.image = UIImage(named: "nidoqueen")!
                            }
                if value4.lowercased() == "nidoran m"
                            {
                                pokemonImage4.image = UIImage(named: "nidoran m")!
                            }
                if value4.lowercased() == "nidorino"
                            {
                                pokemonImage4.image = UIImage(named: "nidorino")!
                            }
                if value4.lowercased() == "nidoking"
                            {
                                pokemonImage4.image = UIImage(named: "nidoking")!
                            }
                if value4.lowercased() == "clefairy"
                            {
                                pokemonImage4.image = UIImage(named: "clefairy")!
                            }
                if value4.lowercased() == "clefable"
                            {
                                pokemonImage4.image = UIImage(named: "clefable")!
                            }
                if value4.lowercased() == "vulpix"
                            {
                                pokemonImage4.image = UIImage(named: "vulpix")!
                            }
                if value4.lowercased() == "alolan vulpix"
                            {
                                pokemonImage4.image = UIImage(named: "alolan vulpix")!
                            }
                if value4.lowercased() == "ninetales"
                            {
                                pokemonImage4.image = UIImage(named: "ninetales")!
                            }
                if value4.lowercased() == "alolan ninetales"
                            {
                                pokemonImage4.image = UIImage(named: "alolan ninetales")!
                            }
                if value4.lowercased() == "jigglypuff"
                            {
                                pokemonImage4.image = UIImage(named: "jigglypuff")!
                            }
                if value4.lowercased() == "wigglytuff"
                            {
                                pokemonImage4.image = UIImage(named: "wigglytuff")!
                            }
                if value4.lowercased() == "zubat"
                            {
                                pokemonImage4.image = UIImage(named: "zubat")!
                            }
                if value4.lowercased() == "golbat"
                            {
                                pokemonImage4.image = UIImage(named: "golbat")!
                            }
                if value4.lowercased() == "oddish"
                            {
                                pokemonImage4.image = UIImage(named: "oddish")!
                            }
                if value4.lowercased() == "gloom"
                            {
                                pokemonImage4.image = UIImage(named: "gloom")!
                            }
                if value4.lowercased() == "vileplume"
                            {
                                pokemonImage4.image = UIImage(named: "vileplume")!
                            }
                if value4.lowercased() == "paras"
                            {
                                pokemonImage4.image = UIImage(named: "paras")!
                            }
                if value4.lowercased() == "parasect"
                            {
                                pokemonImage4.image = UIImage(named: "parasect")!
                            }
                if value4.lowercased() == "venonat"
                            {
                                pokemonImage4.image = UIImage(named: "venonat")!
                            }
                if value4.lowercased() == "venomoth"
                            {
                                pokemonImage4.image = UIImage(named: "venomoth")!
                            }
                if value4.lowercased() == "diglett"
                            {
                                pokemonImage4.image = UIImage(named: "diglett")!
                            }
                if value4.lowercased() == "alolan diglett"
                            {
                                pokemonImage4.image = UIImage(named: "alolan diglett")!
                            }
                if value4.lowercased() == "dugtrio"
                            {
                                pokemonImage4.image = UIImage(named: "dugtrio")!
                            }
                if value4.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage4.image = UIImage(named: "alolan dugtrio")!
                            }
                if value4.lowercased() == "meowth"
                            {
                                pokemonImage4.image = UIImage(named: "meowth")!
                            }
                if value4.lowercased() == "alolan meowth"
                            {
                                pokemonImage4.image = UIImage(named: "alolan meowth")!
                            }
                if value4.lowercased() == "persian"
                            {
                                pokemonImage4.image = UIImage(named: "persian")!
                            }
                if value4.lowercased() == "alolan persian"
                            {
                                pokemonImage4.image = UIImage(named: "alolan persian")!
                            }

                if value4.lowercased() == "psyduck"
                            {
                                pokemonImage4.image = UIImage(named: "psyduck")!
                            }
                if value4.lowercased() == "golduck"
                            {
                                pokemonImage4.image = UIImage(named: "golduck")!
                            }
                if value4.lowercased() == "mankey"
                            {
                                pokemonImage4.image = UIImage(named: "mankey")!
                            }
                if value4.lowercased() == "primeape"
                            {
                                pokemonImage4.image = UIImage(named: "primeape")!
                            }
                if value4.lowercased() == "growlithe"
                            {
                                pokemonImage4.image = UIImage(named: "growlithe")!
                            }
                if value4.lowercased() == "arcanine"
                            {
                                pokemonImage4.image = UIImage(named: "arcanine")!
                            }
                if value4.lowercased() == "poliwag"
                            {
                                pokemonImage4.image = UIImage(named: "poliwag")!
                            }
                if value4.lowercased() == "poliwhirl"
                            {
                                pokemonImage4.image = UIImage(named: "poliwhirl")!
                            }
                if value4.lowercased() == "poliwrath"
                            {
                                pokemonImage4.image = UIImage(named: "poliwrath")!
                            }
                if value4.lowercased() == "abra"
                            {
                                pokemonImage4.image = UIImage(named: "abra")!
                            }
                if value4.lowercased() == "kadabra"
                            {
                                pokemonImage4.image = UIImage(named: "kadabra")!
                            }
                if value4.lowercased() == "alakazam"
                            {
                                pokemonImage4.image = UIImage(named: "alakazam")!
                            }
                if value4.lowercased() == "machop"
                            {
                                pokemonImage4.image = UIImage(named: "machop")!
                            }
                if value4.lowercased() == "machoke"
                            {
                                pokemonImage4.image = UIImage(named: "machoke")!
                            }
                if value4.lowercased() == "machamp"
                            {
                                pokemonImage4.image = UIImage(named: "machamp")!
                            }
                if value4.lowercased() == "bellsprout"
                            {
                                pokemonImage4.image = UIImage(named: "bellsprout")!
                            }
                if value4.lowercased() == "weepinbell"
                            {
                                pokemonImage4.image = UIImage(named: "weepinbell")!
                            }
                if value4.lowercased() == "victreebel"
                            {
                                pokemonImage4.image = UIImage(named: "victreebel")!
                            }
                if value4.lowercased() == "tentacool"
                            {
                                pokemonImage4.image = UIImage(named: "tentacool")!
                            }
                if value4.lowercased() == "tentacruel"
                            {
                                pokemonImage4.image = UIImage(named: "tentacruel")!
                            }
                if value4.lowercased() == "geodude"
                            {
                                pokemonImage4.image = UIImage(named: "geodude")!
                            }
                if value4.lowercased() == "alolan geodude"
                            {
                                pokemonImage4.image = UIImage(named: "alolan geodude")!
                            }
                if value4.lowercased() == "graveler"
                            {
                                pokemonImage4.image = UIImage(named: "graveler")!
                            }
                if value4.lowercased() == "alolan graveler"
                            {
                                pokemonImage4.image = UIImage(named: "alolan graveler")!
                            }
                if value4.lowercased() == "golem"
                            {
                                pokemonImage4.image = UIImage(named: "golem")!
                            }
                if value4.lowercased() == "alolan golem"
                            {
                                pokemonImage4.image = UIImage(named: "alolan golem")!
                            }
                if value4.lowercased() == "ponyta"
                            {
                                pokemonImage4.image = UIImage(named: "ponyta")!
                            }
                if value4.lowercased() == "rapidash"
                            {
                                pokemonImage4.image = UIImage(named: "rapidash")!
                            }
                if value4.lowercased() == "slowpoke"
                            {
                                pokemonImage4.image = UIImage(named: "slowpoke")!
                            }
                if value4.lowercased() == "slowbro"
                            {
                                pokemonImage4.image = UIImage(named: "slowbro")!
                            }
                if value4.lowercased() == "magnemite"
                            {
                                pokemonImage4.image = UIImage(named: "magnemite")!
                            }
                if value4.lowercased() == "magneton"
                            {
                                pokemonImage4.image = UIImage(named: "magneton")!
                            }
                if value4.lowercased() == "farfetch’d"
                            {
                                pokemonImage4.image = UIImage(named: "farfetch’d")!
                            }
                if value4.lowercased() == "doduo"
                            {
                                pokemonImage4.image = UIImage(named: "doduo")!
                            }
                if value4.lowercased() == "dodrio"
                            {
                                pokemonImage4.image = UIImage(named: "dodrio")!
                            }
                if value4.lowercased() == "seel"
                            {
                                pokemonImage4.image = UIImage(named: "seel")!
                            }
                if value4.lowercased() == "dewgong"
                            {
                                pokemonImage4.image = UIImage(named: "dewgong")!
                            }
                if value4.lowercased() == "grimer"
                            {
                                pokemonImage4.image = UIImage(named: "grimer")!
                            }
                if value4.lowercased() == "alolan grimer"
                            {
                                pokemonImage4.image = UIImage(named: "alolan grimer")!
                            }
                if value4.lowercased() == "muk"
                            {
                                pokemonImage4.image = UIImage(named: "muk")!
                            }
                if value4.lowercased() == "alolan muk"
                            {
                                pokemonImage4.image = UIImage(named: "alolan muk")!
                            }
                if value4.lowercased() == "shellder"
                            {
                                pokemonImage4.image = UIImage(named: "shellder")!
                            }
                if value4.lowercased() == "cloyster"
                            {
                                pokemonImage4.image = UIImage(named: "cloyster")!
                            }
                if value4.lowercased() == "gastly"
                            {
                                pokemonImage4.image = UIImage(named: "gastly")!
                            }
                if value4.lowercased() == "haunter"
                            {
                                pokemonImage4.image = UIImage(named: "haunter")!
                            }
                if value4.lowercased() == "gengar"
                            {
                                pokemonImage4.image = UIImage(named: "gengar")!
                            }
                if value4.lowercased() == "onix"
                            {
                                pokemonImage4.image = UIImage(named: "onix")!
                            }
                if value4.lowercased() == "drowzee"
                            {
                                pokemonImage4.image = UIImage(named: "drowzee")!
                            }
                if value4.lowercased() == "hypno"
                            {
                                pokemonImage4.image = UIImage(named: "hypno")!
                            }
                if value4.lowercased() == "krabby"
                            {
                                pokemonImage4.image = UIImage(named: "krabby")!
                            }
                if value4.lowercased() == "kingler"
                            {
                                pokemonImage4.image = UIImage(named: "kingler")!
                            }
                if value4.lowercased() == "voltorb"
                            {
                                pokemonImage4.image = UIImage(named: "voltorb")!
                            }
                if value4.lowercased() == "electrode"
                            {
                                pokemonImage4.image = UIImage(named: "electrode")!
                            }
                if value4.lowercased() == "exeggcute"
                            {
                                pokemonImage4.image = UIImage(named: "exeggcute")!
                            }
                if value4.lowercased() == "exeggutor"
                            {
                                pokemonImage4.image = UIImage(named: "exeggutor")!
                            }
                if value4.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage4.image = UIImage(named: "alolan exeggutor")!
                            }
                if value4.lowercased() == "cubone"
                            {
                                pokemonImage4.image = UIImage(named: "cubone")!
                            }
                if value4.lowercased() == "marowak"
                            {
                                pokemonImage4.image = UIImage(named: "marowak")!
                            }
                if value4.lowercased() == "alolan marowak"
                            {
                                pokemonImage4.image = UIImage(named: "alolan marowak")!
                            }
                if value4.lowercased() == "hitmonlee"
                            {
                                pokemonImage4.image = UIImage(named: "hitmonlee")!
                            }
                if value4.lowercased() == "hitmonchan"
                            {
                                pokemonImage4.image = UIImage(named: "hitmonchan")!
                            }
                if value4.lowercased() == "lickitung"
                            {
                                pokemonImage4.image = UIImage(named: "lickitung")!
                            }
                if value4.lowercased() == "koffing"
                            {
                                pokemonImage4.image = UIImage(named: "koffing")!
                            }
                if value4.lowercased() == "weezing"
                            {
                                pokemonImage4.image = UIImage(named: "weezing")!
                            }
                if value4.lowercased() == "rhyhorn"
                            {
                                pokemonImage4.image = UIImage(named: "rhyhorn")!
                            }
                if value4.lowercased() == "rhydon"
                            {
                                pokemonImage4.image = UIImage(named: "rhydon")!
                            }
                if value4.lowercased() == "chansey"
                            {
                                pokemonImage4.image = UIImage(named: "chansey")!
                            }
                if value4.lowercased() == "tangela"
                            {
                                pokemonImage4.image = UIImage(named: "tangela")!
                            }
                if value4.lowercased() == "kangaskhan"
                            {
                                pokemonImage4.image = UIImage(named: "kangaskhan")!
                            }
                if value4.lowercased() == "horsea"
                            {
                                pokemonImage4.image = UIImage(named: "horsea")!
                            }
                if value4.lowercased() == "seadra"
                            {
                                pokemonImage4.image = UIImage(named: "seadra")!
                            }
                if value4.lowercased() == "goldeen"
                            {
                                pokemonImage4.image = UIImage(named: "goldeen")!
                            }
                if value4.lowercased() == "seaking"
                            {
                                pokemonImage4.image = UIImage(named: "seaking")!
                            }
                if value4.lowercased() == "staryu"
                            {
                                pokemonImage4.image = UIImage(named: "staryu")!
                            }
                if value4.lowercased() == "starmie"
                            {
                                pokemonImage4.image = UIImage(named: "starmie")!
                            }
                if value4.lowercased() == "mr.mime"
                            {
                                pokemonImage4.image = UIImage(named: "mr.mime")!
                            }
                if value4.lowercased() == "scyther"
                            {
                                pokemonImage4.image = UIImage(named: "scyther")!
                            }
                if value4.lowercased() == "jynx"
                            {
                                pokemonImage4.image = UIImage(named: "jynx")!
                            }
                if value4.lowercased() == "electabuzz"
                            {
                                pokemonImage4.image = UIImage(named: "electabuzz")!
                            }
                if value4.lowercased() == "magmar"
                            {
                                pokemonImage4.image = UIImage(named: "magmar")!
                            }
                if value4.lowercased() == "pinsir"
                            {
                                pokemonImage4.image = UIImage(named: "pinsir")!
                            }
                if value4.lowercased() == "tauros"
                            {
                                pokemonImage4.image = UIImage(named: "tauros")!
                            }
                if value4.lowercased() == "magikarp"
                            {
                                pokemonImage4.image = UIImage(named: "magikarp")!
                            }
                if value4.lowercased() == "gyarados"
                            {
                                pokemonImage4.image = UIImage(named: "gyarados")!
                            }
                if value4.lowercased() == "lapras"
                            {
                                pokemonImage4.image = UIImage(named: "lapras")!
                            }
                if value4.lowercased() == "ditto"
                            {
                                pokemonImage4.image = UIImage(named: "ditto")!
                            }
                if value4.lowercased() == "eevee"
                            {
                                pokemonImage4.image = UIImage(named: "eevee")!
                            }
                if value4.lowercased() == "vaporeon"
                            {
                                pokemonImage4.image = UIImage(named: "vaporeon")!
                            }
                if value4.lowercased() == "jolteon"
                            {
                                pokemonImage4.image = UIImage(named: "jolteon")!
                            }
                if value4.lowercased() == "flareon"
                            {
                                pokemonImage4.image = UIImage(named: "flareon")!
                            }
                if value4.lowercased() == "porygon"
                            {
                                pokemonImage4.image = UIImage(named: "porygon")!
                            }
                if value4.lowercased() == "omanyte"
                            {
                                pokemonImage4.image = UIImage(named: "omanyte")!
                            }
                if value4.lowercased() == "omastar"
                            {
                                pokemonImage4.image = UIImage(named: "omastar")!
                            }
                if value4.lowercased() == "kabuto"
                            {
                                pokemonImage4.image = UIImage(named: "kabuto")!
                            }
                if value4.lowercased() == "kabutops"
                            {
                                pokemonImage4.image = UIImage(named: "kabutops")!
                            }
                if value4.lowercased() == "aerodactyl"
                            {
                                pokemonImage4.image = UIImage(named: "aerodactyl")!
                            }
                if value4.lowercased() == "snorlax"
                            {
                                pokemonImage4.image = UIImage(named: "snorlax")!
                            }
                if value4.lowercased() == "articuno"
                            {
                                pokemonImage4.image = UIImage(named: "articuno")!
                            }
                if value4.lowercased() == "zapdos"
                            {
                                pokemonImage4.image = UIImage(named: "zapdos")!
                            }
                if value4.lowercased() == "moltres"
                            {
                                pokemonImage4.image = UIImage(named: "moltres")!
                            }
                if value4.lowercased() == "dratini"
                            {
                                pokemonImage4.image = UIImage(named: "dratini")!
                            }
                if value4.lowercased() == "dragonair"
                            {
                                pokemonImage4.image = UIImage(named: "dragonair")!
                            }
                if value4.lowercased() == "mewtwo"
                            {
                                pokemonImage4.image = UIImage(named: "mewtwo")!
                            }
                if value4.lowercased() == "mew"
                            {
                                pokemonImage4.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value4.lowercased() == "chikorita"
                            {
                                pokemonImage4.image = UIImage(named: "chikorita")!
                            }
                if value4.lowercased() == "bayleef"
                            {
                                pokemonImage4.image = UIImage(named: "bayleef")!
                            }
                if value4.lowercased() == "meganium"
                            {
                                pokemonImage4.image = UIImage(named: "meganium")!
                            }
                if value4.lowercased() == "cyndaquil"
                            {
                                pokemonImage4.image = UIImage(named: "cyndaquil")!
                            }
                if value4.lowercased() == "quilava"
                            {
                                pokemonImage4.image = UIImage(named: "quilava")!
                            }
                if value4.lowercased() == "typhlosion"
                            {
                                pokemonImage4.image = UIImage(named: "typhlosion")!
                            }
                if value4.lowercased() == "totodile"
                            {
                                pokemonImage4.image = UIImage(named: "totodile")!
                            }
                if value4.lowercased() == "croconaw"
                            {
                                pokemonImage4.image = UIImage(named: "croconaw")!
                            }
                if value4.lowercased() == "feraligatr"
                            {
                                pokemonImage4.image = UIImage(named: "feraligatr")!
                            }
                if value4.lowercased() == "sentret"
                            {
                                pokemonImage4.image = UIImage(named: "sentret")!
                            }
                if value4.lowercased() == "furret"
                            {
                                pokemonImage4.image = UIImage(named: "furret")!
                            }
                if value4.lowercased() == "hoothoot"
                            {
                                pokemonImage4.image = UIImage(named: "hoothoot")!
                            }
                if value4.lowercased() == "noctowl"
                            {
                                pokemonImage4.image = UIImage(named: "noctowl")!
                            }
                if value4.lowercased() == "ledyba"
                            {
                                pokemonImage4.image = UIImage(named: "ledyba")!
                            }
                if value4.lowercased() == "ledian"
                            {
                                pokemonImage4.image = UIImage(named: "ledian")!
                            }
                if value4.lowercased() == "spinarak"
                            {
                                pokemonImage4.image = UIImage(named: "spinarak")!
                            }
                if value4.lowercased() == "ariados"
                            {
                                pokemonImage4.image = UIImage(named: "ariados")!
                            }
                if value4.lowercased() == "crobat"
                            {
                                pokemonImage4.image = UIImage(named: "crobat")!
                            }
                if value4.lowercased() == "chinchou"
                            {
                                pokemonImage4.image = UIImage(named: "chinchou")!
                            }
                if value4.lowercased() == "lanturn"
                            {
                                pokemonImage4.image = UIImage(named: "lanturn")!
                            }
                if value4.lowercased() == "pichu"
                            {
                                pokemonImage4.image = UIImage(named: "pichu")!
                            }
                 if value4.lowercased() == "cleffa"
                            {
                                pokemonImage4.image = UIImage(named: "cleffa")!
                            }
                if value4.lowercased() == "igglybuff"
                            {
                                pokemonImage4.image = UIImage(named: "igglybuff")!
                            }
                if value4.lowercased() == "togepi"
                            {
                                pokemonImage4.image = UIImage(named: "togepi")!
                            }
                if value4.lowercased() == "togetic"
                            {
                                pokemonImage4.image = UIImage(named: "togetic")!
                            }
                if value4.lowercased() == "natu"
                            {
                                pokemonImage4.image = UIImage(named: "natu")!
                            }
                if value4.lowercased() == "xatu"
                            {
                                pokemonImage4.image = UIImage(named: "xatu")!
                            }
                if value4.lowercased() == "mareep"
                            {
                                pokemonImage4.image = UIImage(named: "mareep")!
                            }
                if value4.lowercased() == "flaaffy"
                            {
                                pokemonImage4.image = UIImage(named: "flaaffy")!
                            }
                if value4.lowercased() == "ampharos"
                            {
                                pokemonImage4.image = UIImage(named: "ampharos")!
                            }
                if value4.lowercased() == "bellossom"
                            {
                                pokemonImage4.image = UIImage(named: "bellossom")!
                            }
                 if value4.lowercased() == "marill"
                            {
                                pokemonImage4.image = UIImage(named: "marill")!
                            }
                if value4.lowercased() == "azumarill"
                            {
                                pokemonImage4.image = UIImage(named: "azumarill")!
                            }
                if value4.lowercased() == "sudowoodo"
                            {
                                pokemonImage4.image = UIImage(named: "sudowoodo")!
                            }
                if value4.lowercased() == "politoed"
                            {
                                pokemonImage4.image = UIImage(named: "politoed")!
                            }
                if value4.lowercased() == "hoppip"
                            {
                                pokemonImage4.image = UIImage(named: "hoppip")!
                            }
                if value4.lowercased() == "skiploom"
                            {
                                pokemonImage4.image = UIImage(named: "skiploom")!
                            }
                if value4.lowercased() == "jumpluff"
                            {
                                pokemonImage4.image = UIImage(named: "jumpluff")!
                            }
                if value4.lowercased() == "aipom"
                            {
                                pokemonImage4.image = UIImage(named: "aipom")!
                            }
                if value4.lowercased() == "sunkern"
                            {
                                pokemonImage4.image = UIImage(named: "sunkern")!
                            }
                if value4.lowercased() == "sunflora"
                            {
                                pokemonImage4.image = UIImage(named: "sunflora")!
                            }
                if value4.lowercased() == "yanma"
                            {
                                pokemonImage4.image = UIImage(named: "yanma")!
                            }
                if value4.lowercased() == "wooper"
                            {
                                pokemonImage4.image = UIImage(named: "wooper")!
                            }
                if value4.lowercased() == "quagsire"
                            {
                                pokemonImage4.image = UIImage(named: "quagsire")!
                            }
                if value4.lowercased() == "espeon"
                            {
                                pokemonImage4.image = UIImage(named: "espeon")!
                            }
                if value4.lowercased() == "umbreon"
                            {
                                pokemonImage4.image = UIImage(named: "umbreon")!
                            }
                if value4.lowercased() == "murkrow"
                            {
                                pokemonImage4.image = UIImage(named: "murkrow")!
                            }
                if value4.lowercased() == "slowking"
                            {
                                pokemonImage4.image = UIImage(named: "slowking")!
                            }
                if value4.lowercased() == "girafarig"
                            {
                                pokemonImage4.image = UIImage(named: "girafarig")!
                            }
                if value4.lowercased() == "misdreavus"
                            {
                                pokemonImage4.image = UIImage(named: "misdreavus")!
                            }
                if value4.lowercased() == "unown"
                            {
                                pokemonImage4.image = UIImage(named: "unown")!
                            }
                if value4.lowercased() == "wobbuffet"
                            {
                                pokemonImage4.image = UIImage(named: "wobbuffet")!
                            }
                if value4.lowercased() == "pineco"
                            {
                                pokemonImage4.image = UIImage(named: "pineco")!
                            }
                if value4.lowercased() == "forretress"
                            {
                                pokemonImage4.image = UIImage(named: "forretress")!
                            }
                if value4.lowercased() == "dunsparce"
                            {
                                pokemonImage4.image = UIImage(named: "dunsparce")!
                            }
                if value4.lowercased() == "gligar"
                            {
                                pokemonImage4.image = UIImage(named: "gligar")!
                            }
                if value4.lowercased() == "steelix"
                            {
                                pokemonImage4.image = UIImage(named: "steelix")!
                            }
                if value4.lowercased() == "snubbull"
                            {
                                pokemonImage4.image = UIImage(named: "snubbull")!
                            }
                if value4.lowercased() == "granbull"
                            {
                                pokemonImage4.image = UIImage(named: "granbull")!
                            }
                if value4.lowercased() == "qwilfish"
                            {
                                pokemonImage4.image = UIImage(named: "qwilfish")!
                            }
                if value4.lowercased() == "scizor"
                            {
                                pokemonImage4.image = UIImage(named: "scizor")!
                            }
                if value4.lowercased() == "shuckle"
                            {
                                pokemonImage4.image = UIImage(named: "shuckle")!
                            }
                if value4.lowercased() == "heracross"
                            {
                                pokemonImage4.image = UIImage(named: "heracross")!
                            }
                if value4.lowercased() == "sneasel"
                            {
                                pokemonImage4.image = UIImage(named: "sneasel")!
                            }
                if value4.lowercased() == "teddiursa"
                            {
                                pokemonImage4.image = UIImage(named: "teddiursa")!
                            }
                if value4.lowercased() == "ursaring"
                            {
                                pokemonImage4.image = UIImage(named: "ursaring")!
                            }
                if value4.lowercased() == "slugma"
                            {
                                pokemonImage4.image = UIImage(named: "slugma")!
                            }
                if value4.lowercased() == "magcargo"
                            {
                                pokemonImage4.image = UIImage(named: "magcargo")!
                            }
                if value4.lowercased() == "swinub"
                            {
                                pokemonImage4.image = UIImage(named: "swinub")!
                            }
                if value4.lowercased() == "piloswine"
                            {
                                pokemonImage4.image = UIImage(named: "piloswine")!
                            }
                if value4.lowercased() == "corsola"
                            {
                                pokemonImage4.image = UIImage(named: "corsola")!
                            }
                if value4.lowercased() == "remoraid"
                            {
                                pokemonImage4.image = UIImage(named: "remoraid")!
                            }
                if value4.lowercased() == "octillery"
                            {
                                pokemonImage4.image = UIImage(named: "octillery")!
                            }
                if value4.lowercased() == "delibird"
                            {
                                pokemonImage4.image = UIImage(named: "delibird")!
                            }
                if value4.lowercased() == "mantine"
                            {
                                pokemonImage4.image = UIImage(named: "mantine")!
                            }
                 if value4.lowercased() == "skarmory"
                            {
                                pokemonImage4.image = UIImage(named: "skarmory")!
                            }
                if value4.lowercased() == "houndour"
                            {
                                pokemonImage4.image = UIImage(named: "houndour")!
                            }
                if value4.lowercased() == "houndoom"
                            {
                                pokemonImage4.image = UIImage(named: "houndoom")!
                            }
                if value4.lowercased() == "kingdra"
                            {
                                pokemonImage4.image = UIImage(named: "kingdra")!
                            }
                if value4.lowercased() == "phanpy"
                            {
                                pokemonImage4.image = UIImage(named: "phanpy")!
                            }
                if value4.lowercased() == "donphan"
                            {
                                pokemonImage4.image = UIImage(named: "donphan")!
                            }
                if value4.lowercased() == "porygon2"
                            {
                                pokemonImage4.image = UIImage(named: "porygon2")!
                            }
                if value4.lowercased() == "stantler"
                            {
                                pokemonImage4.image = UIImage(named: "stantler")!
                            }
                if value4.lowercased() == "smeargle"
                            {
                                pokemonImage4.image = UIImage(named: "smeargle")!
                            }
                if value4.lowercased() == "tyrogue"
                            {
                                pokemonImage4.image = UIImage(named: "tyrogue")!
                            }
                if value4.lowercased() == "hitmontop"
                            {
                                pokemonImage4.image = UIImage(named: "hitmontop")!
                            }
                if value4.lowercased() == "smoochum"
                            {
                                pokemonImage4.image = UIImage(named: "smoochum")!
                            }
                if value4.lowercased() == "elekid"
                            {
                                pokemonImage4.image = UIImage(named: "elekid")!
                            }
                if value4.lowercased() == "magby"
                            {
                                pokemonImage4.image = UIImage(named: "magby")!
                            }
                if value4.lowercased() == "miltank"
                            {
                                pokemonImage4.image = UIImage(named: "miltank")!
                            }
                if value4.lowercased() == "blissey"
                            {
                                pokemonImage4.image = UIImage(named: "blissey")!
                            }
                if value4.lowercased() == "raikou"
                            {
                                pokemonImage4.image = UIImage(named: "raikou")!
                            }
                if value4.lowercased() == "entei"
                            {
                                pokemonImage4.image = UIImage(named: "entei")!
                            }
                if value4.lowercased() == "suicune"
                            {
                                pokemonImage4.image = UIImage(named: "suicune")!
                            }
                if value4.lowercased() == "larvitar"
                            {
                                pokemonImage4.image = UIImage(named: "larvitar")!
                            }
                if value4.lowercased() == "pupitar"
                            {
                                pokemonImage4.image = UIImage(named: "pupitar")!
                            }
                if value4.lowercased() == "tyranitar"
                            {
                                pokemonImage4.image = UIImage(named: "tyranitar")!
                            }
                if value4.lowercased() == "ho-oh"
                            {
                                pokemonImage4.image = UIImage(named: "ho-oh")!
                            }
                if value4.lowercased() == "lugia"
                            {
                                pokemonImage4.image = UIImage(named: "lugia")!
                            }
                if value4.lowercased() == "celebi"
                            {
                                pokemonImage4.image = UIImage(named: "celebi")!
                            }
                if value4.lowercased() == "treecko"
                            {
                                pokemonImage4.image = UIImage(named: "treecko")!
                            }
                if value4.lowercased() == "grovyle"
                            {
                                pokemonImage4.image = UIImage(named: "grovyle")!
                            }
                if value4.lowercased() == "sceptile"
                            {
                                pokemonImage4.image = UIImage(named: "sceptile")!
                            }
                if value4.lowercased() == "torchic"
                            {
                                pokemonImage4.image = UIImage(named: "torchic")!
                            }
                if value4.lowercased() == "combusken"
                            {
                                pokemonImage4.image = UIImage(named: "combusken")!
                            }
                if value4.lowercased() == "blaziken"
                            {
                                pokemonImage4.image = UIImage(named: "blaziken")!
                            }
                if value4.lowercased() == "mudkip"
                            {
                                pokemonImage4.image = UIImage(named: "mudkip")!
                            }
                if value4.lowercased() == "marshtomp"
                            {
                                pokemonImage4.image = UIImage(named: "marshtomp")!
                            }
                if value4.lowercased() == "swampert"
                            {
                                pokemonImage4.image = UIImage(named: "swampert")!
                            }
                if value4.lowercased() == "poochyena"
                            {
                                pokemonImage4.image = UIImage(named: "poochyena")!
                            }
                if value4.lowercased() == "mightyena"
                            {
                                pokemonImage4.image = UIImage(named: "mightyena")!
                            }
                if value4.lowercased() == "zigzagoon"
                            {
                                pokemonImage4.image = UIImage(named: "zigzagoon")!
                            }
                if value4.lowercased() == "linoone"
                            {
                                pokemonImage4.image = UIImage(named: "linoone")!
                            }
                if value4.lowercased() == "wurmple"
                            {
                                pokemonImage4.image = UIImage(named: "wurmple")!
                            }
                if value4.lowercased() == "silcoon"
                            {
                                pokemonImage4.image = UIImage(named: "silcoon")!
                            }
                if value4.lowercased() == "beautifly"
                            {
                                pokemonImage4.image = UIImage(named: "beautifly")!
                            }
                if value4.lowercased() == "cascoon"
                            {
                                pokemonImage4.image = UIImage(named: "cascoon")!
                            }
                if value4.lowercased() == "dustox"
                            {
                                pokemonImage4.image = UIImage(named: "dustox")!
                            }
                if value4.lowercased() == "lotad"
                            {
                                pokemonImage4.image = UIImage(named: "lotad")!
                            }
                if value4.lowercased() == "lombre"
                            {
                                pokemonImage4.image = UIImage(named: "lombre")!
                            }
                if value4.lowercased() == "ludicolo"
                            {
                                pokemonImage4.image = UIImage(named: "ludicolo")!
                            }
                if value4.lowercased() == "seedot"
                            {
                                pokemonImage4.image = UIImage(named: "seedot")!
                            }
                if value4.lowercased() == "nuzleaf"
                            {
                                pokemonImage4.image = UIImage(named: "nuzleaf")!
                            }
                if value4.lowercased() == "shiftry"
                            {
                                pokemonImage4.image = UIImage(named: "shiftry")!
                            }
                if value4.lowercased() == "taillow"
                            {
                                pokemonImage4.image = UIImage(named: "taillow")!
                            }
                if value4.lowercased() == "swellow"
                                    {
                                        pokemonImage4.image = UIImage(named: "swellow")!
                                    }
                if value4.lowercased() == "wingull"
                            {
                                pokemonImage4.image = UIImage(named: "wingull")!
                            }
                if value4.lowercased() == "pelipper"
                            {
                                pokemonImage4.image = UIImage(named: "pelipper")!
                            }
                if value4.lowercased() == "ralts"
                            {
                                pokemonImage4.image = UIImage(named: "ralts")!
                            }
                if value4.lowercased() == "kirlia"
                            {
                                pokemonImage4.image = UIImage(named: "kirlia")!
                            }
                if value4.lowercased() == "gardevoir"
                            {
                                pokemonImage4.image = UIImage(named: "gardevoir")!
                            }
                if value4.lowercased() == "surskit"
                            {
                                pokemonImage4.image = UIImage(named: "surskit")!
                            }
                if value4.lowercased() == "masquerain"
                            {
                                pokemonImage4.image = UIImage(named: "masquerain")!
                            }
                if value4.lowercased() == "shroomish"
                            {
                                pokemonImage4.image = UIImage(named: "shroomish")!
                            }
                if value4.lowercased() == "breloom"
                            {
                                pokemonImage4.image = UIImage(named: "breloom")!
                            }
                if value4.lowercased() == "slakoth"
                            {
                                pokemonImage4.image = UIImage(named: "slakoth")!
                            }
                if value4.lowercased() == "vigoroth"
                            {
                                pokemonImage4.image = UIImage(named: "vigoroth")!
                            }
                if value4.lowercased() == "slaking"
                            {
                                pokemonImage4.image = UIImage(named: "slaking")!
                            }
                if value4.lowercased() == "nincada"
                            {
                                pokemonImage4.image = UIImage(named: "nincada")!
                            }
                if value4.lowercased() == "ninjask"
                            {
                                pokemonImage4.image = UIImage(named: "ninjask")!
                            }
                if value4.lowercased() == "shedinja"
                            {
                                pokemonImage4.image = UIImage(named: "shedinja")!
                            }
                if value4.lowercased() == "whismur"
                            {
                                pokemonImage4.image = UIImage(named: "whismur")!
                            }
                if value4.lowercased() == "loudred"
                            {
                                pokemonImage4.image = UIImage(named: "loudred")!
                            }
                if value4.lowercased() == "exploud"
                            {
                                pokemonImage4.image = UIImage(named: "exploud")!
                            }
                if value4.lowercased() == "makuhita"
                            {
                                pokemonImage4.image = UIImage(named: "makuhita")!
                            }
                if value4.lowercased() == "hariyama"
                            {
                                pokemonImage4.image = UIImage(named: "hariyama")!
                            }
                if value4.lowercased() == "azurill"
                            {
                                pokemonImage4.image = UIImage(named: "azurill")!
                            }
                if value4.lowercased() == "nosepass"
                            {
                                pokemonImage4.image = UIImage(named: "nosepass")!
                            }
                if value4.lowercased() == "skitty"
                            {
                                pokemonImage4.image = UIImage(named: "skitty")!
                            }
                if value4.lowercased() == "delcatty"
                            {
                                pokemonImage4.image = UIImage(named: "delcatty")!
                            }
                if value4.lowercased() == "sableye"
                            {
                                pokemonImage4.image = UIImage(named: "sableye")!
                            }
                if value4.lowercased() == "mawile"
                            {
                                pokemonImage4.image = UIImage(named: "mawile")!
                            }
                if value4.lowercased() == "aron"
                            {
                                pokemonImage4.image = UIImage(named: "aron")!
                            }
                if value4.lowercased() == "lairon"
                            {
                                pokemonImage4.image = UIImage(named: "lairon")!
                            }
                if value4.lowercased() == "aggron"
                            {
                                pokemonImage4.image = UIImage(named: "aggron")!
                            }
                if value4.lowercased() == "meditite"
                            {
                                pokemonImage4.image = UIImage(named: "meditite")!
                            }
                if value4.lowercased() == "medicham"
                            {
                                pokemonImage4.image = UIImage(named: "medicham")!
                            }
                if value4.lowercased() == "electrike"
                            {
                                pokemonImage4.image = UIImage(named: "electrike")!
                            }
                if value4.lowercased() == "manectric"
                            {
                                pokemonImage4.image = UIImage(named: "manectric")!
                            }
                if value4.lowercased() == "plusle"
                            {
                                pokemonImage4.image = UIImage(named: "plusle")!
                            }
                if value4.lowercased() == "minun"
                            {
                                pokemonImage4.image = UIImage(named: "minun")!
                            }
                if value4.lowercased() == "volbeat"
                            {
                                pokemonImage4.image = UIImage(named: "volbeat")!
                            }
                if value4.lowercased() == "illumise"
                            {
                                pokemonImage4.image = UIImage(named: "illumise")!
                            }
                if value4.lowercased() == "roselia"
                            {
                                pokemonImage4.image = UIImage(named: "roselia")!
                            }
                if value4.lowercased() == "gulpin"
                            {
                                pokemonImage4.image = UIImage(named: "gulpin")!
                            }
                if value4.lowercased() == "swalot"
                            {
                                pokemonImage4.image = UIImage(named: "swalot")!
                            }
                if value4.lowercased() == "carvana"
                            {
                                pokemonImage4.image = UIImage(named: "carvana")!
                            }
                if value4.lowercased() == "sharpedo"
                            {
                                pokemonImage4.image = UIImage(named: "sharpedo")!
                            }
                if value4.lowercased() == "wailmer"
                            {
                                pokemonImage4.image = UIImage(named: "wailmer")!
                            }
                if value4.lowercased() == "wailord"
                            {
                                pokemonImage4.image = UIImage(named: "wailord")!
                            }
                if value4.lowercased() == "numel"
                            {
                                pokemonImage4.image = UIImage(named: "numel")!
                            }
                if value4.lowercased() == "camerupt"
                            {
                                pokemonImage4.image = UIImage(named: "camerupt")!
                            }
                if value4.lowercased() == "torkoal"
                            {
                                pokemonImage4.image = UIImage(named: "torkoal")!
                            }
                if value4.lowercased() == "spoink"
                            {
                                pokemonImage4.image = UIImage(named: "spoink")!
                            }
                if value4.lowercased() == "grumpig"
                            {
                                pokemonImage4.image = UIImage(named: "grumpig")!
                            }
                if value4.lowercased() == "spinda"
                            {
                                pokemonImage4.image = UIImage(named: "spinda")!
                            }
                if value4.lowercased() == "trapinch"
                            {
                                pokemonImage4.image = UIImage(named: "trapinch")!
                            }
                if value4.lowercased() == "vibrava"
                            {
                                pokemonImage4.image = UIImage(named: "vibrava")!
                            }
                if value4.lowercased() == "flygon"
                            {
                                pokemonImage4.image = UIImage(named: "flygon")!
                            }
                if value4.lowercased() == "cacnea"
                            {
                                pokemonImage4.image = UIImage(named: "cacnea")!
                            }
                if value4.lowercased() == "cacturne"
                            {
                                pokemonImage4.image = UIImage(named: "cacturne")!
                            }
                if value4.lowercased() == "swablu"
                            {
                                pokemonImage4.image = UIImage(named: "swablu")!
                            }
                if value4.lowercased() == "altaria"
                            {
                                pokemonImage4.image = UIImage(named: "altaria")!
                            }
                if value4.lowercased() == "zangoose"
                            {
                                pokemonImage4.image = UIImage(named: "zangoose")!
                            }
                if value4.lowercased() == "seviper"
                            {
                                pokemonImage4.image = UIImage(named: "seviper")!
                            }
                if value4.lowercased() == "lunatone"
                            {
                                pokemonImage4.image = UIImage(named: "lunatone")!
                            }
                if value4.lowercased() == "solrock"
                            {
                                pokemonImage4.image = UIImage(named: "solrock")!
                            }
                if value4.lowercased() == "barboach"
                            {
                                pokemonImage4.image = UIImage(named: "barboach")!
                            }
                if value4.lowercased() == "whiscash"
                            {
                                pokemonImage4.image = UIImage(named: "whiscash")!
                            }
                if value4.lowercased() == "corphish"
                            {
                                pokemonImage4.image = UIImage(named: "corphish")!
                            }
                if value4.lowercased() == "crawdaunt"
                            {
                                pokemonImage4.image = UIImage(named: "crawdaunt")!
                            }
                if value4.lowercased() == "baltoy"
                            {
                                pokemonImage4.image = UIImage(named: "baltoy")!
                            }
                if value4.lowercased() == "claydol"
                            {
                                pokemonImage4.image = UIImage(named: "claydol")!
                            }
                if value4.lowercased() == "lileep"
                            {
                                pokemonImage4.image = UIImage(named: "lileep")!
                            }
                if value4.lowercased() == "cradily"
                            {
                                pokemonImage4.image = UIImage(named: "cradily")!
                            }
                if value4.lowercased() == "anorith"
                            {
                                pokemonImage4.image = UIImage(named: "anorith")!
                            }
                if value4.lowercased() == "armaldo"
                            {
                                pokemonImage4.image = UIImage(named: "armaldo")!
                            }
                if value4.lowercased() == "feebas"
                            {
                                pokemonImage4.image = UIImage(named: "feebas")!
                            }
                if value4.lowercased() == "milotic"
                            {
                                pokemonImage4.image = UIImage(named: "milotic")!
                            }
                if value4.lowercased() == "castform"
                            {
                                pokemonImage4.image = UIImage(named: "castform")!
                            }
                if value4.lowercased() == "sunny castform"
                            {
                                pokemonImage4.image = UIImage(named: "sunny castform")!
                            }
                if value4.lowercased() == "snowy castform"
                            {
                                pokemonImage4.image = UIImage(named: "snowy castform")!
                            }
                if value4.lowercased() == "rainy castform"
                            {
                                pokemonImage4.image = UIImage(named: "rainy castform")!
                            }
                if value4.lowercased() == "kecleon"
                            {
                                pokemonImage4.image = UIImage(named: "kecleon")!
                            }
                if value4.lowercased() == "shuppet"
                            {
                                pokemonImage4.image = UIImage(named: "shuppet")!
                            }
                if value4.lowercased() == "banette"
                            {
                                pokemonImage4.image = UIImage(named: "banette")!
                            }
                if value4.lowercased() == "duskull"
                            {
                                pokemonImage4.image = UIImage(named: "duskull")!
                            }
                if value4.lowercased() == "dusclops"
                            {
                                pokemonImage4.image = UIImage(named: "dusclops")!
                            }
                if value4.lowercased() == "tropius"
                            {
                                pokemonImage4.image = UIImage(named: "tropius")!
                            }
                if value4.lowercased() == "chimecho"
                            {
                                pokemonImage4.image = UIImage(named: "chimecho")!
                            }
                if value4.lowercased() == "absol"
                            {
                                pokemonImage4.image = UIImage(named: "absol")!
                            }
                if value4.lowercased() == "wynaut"
                            {
                                pokemonImage4.image = UIImage(named: "wynaut")!
                            }
                if value4.lowercased() == "snorunt"
                            {
                                pokemonImage4.image = UIImage(named: "snorunt")!
                            }
                if value4.lowercased() == "glalie"
                            {
                                pokemonImage4.image = UIImage(named: "glalie")!
                            }
                if value4.lowercased() == "spheal"
                            {
                                pokemonImage4.image = UIImage(named: "spheal")!
                            }
                if value4.lowercased() == "sealeo"
                            {
                                pokemonImage4.image = UIImage(named: "sealeo")!
                            }
                if value4.lowercased() == "walrein"
                            {
                                pokemonImage4.image = UIImage(named: "walrein")!
                            }
                if value4.lowercased() == "clamperl"
                            {
                                pokemonImage4.image = UIImage(named: "clamperl")!
                            }
                if value4.lowercased() == "huntail"
                            {
                                pokemonImage4.image = UIImage(named: "huntail")!
                            }
                if value4.lowercased() == "gorebyss"
                            {
                                pokemonImage4.image = UIImage(named: "gorebyss")!
                            }
                if value4.lowercased() == "relicanth"
                            {
                                pokemonImage4.image = UIImage(named: "relicanth")!
                            }
                if value4.lowercased() == "luvdisc"
                            {
                                pokemonImage4.image = UIImage(named: "luvdisc")!
                            }
                if value4.lowercased() == "bagon"
                            {
                                pokemonImage4.image = UIImage(named: "bagon")!
                            }
                if value4.lowercased() == "shelgon"
                            {
                                pokemonImage4.image = UIImage(named: "shelgon")!
                            }
                if value4.lowercased() == "salamence"
                            {
                                pokemonImage4.image = UIImage(named: "salamence")!
                            }
                if value4.lowercased() == "beldum"
                            {
                                pokemonImage4.image = UIImage(named: "beldum")!
                            }
                if value4.lowercased() == "metang"
                            {
                                pokemonImage4.image = UIImage(named: "metang")!
                            }
                if value4.lowercased() == "metagross"
                            {
                                pokemonImage4.image = UIImage(named: "metagross")!
                            }
                if value4.lowercased() == "regirock"
                            {
                                pokemonImage4.image = UIImage(named: "regirock")!
                            }
                if value4.lowercased() == "regice"
                            {
                                pokemonImage4.image = UIImage(named: "regice")!
                            }
                if value4.lowercased() == "registeel"
                            {
                                pokemonImage4.image = UIImage(named: "registeel")!
                            }
                if value4.lowercased() == "latias"
                            {
                                pokemonImage4.image = UIImage(named: "latias")!
                            }
                if value4.lowercased() == "latios"
                            {
                                pokemonImage4.image = UIImage(named: "latios")!
                            }
                if value4.lowercased() == "kyogre"
                            {
                                pokemonImage4.image = UIImage(named: "kyogre")!
                            }
                if value4.lowercased() == "groudon"
                            {
                                pokemonImage4.image = UIImage(named: "groudon")!
                            }
                if value4.lowercased() == "rayquaza"
                            {
                                pokemonImage4.image = UIImage(named: "rayquaza")!
                            }
                if value4.lowercased() == "jirachi"
                            {
                                pokemonImage4.image = UIImage(named: "jirachi")!
                            }
                if value4.lowercased() == "deoxys"
                            {
                                pokemonImage4.image = UIImage(named: "deoxys")!
                            }
                if value4.lowercased() == "defence deoxys"
                            {
                                pokemonImage4.image = UIImage(named: "defence deoxys")!
                            }
                if value4.lowercased() == "attack deoxys"
                            {
                                pokemonImage4.image = UIImage(named: "attack deoxys")!
                            }
                if value4.lowercased() == "speed deoxys"
                            {
                                pokemonImage4.image = UIImage(named: "speed deoxys")!
                            }
                if value4.lowercased() == "turtwig"
                            {
                                pokemonImage4.image = UIImage(named: "turtwig")!
                            }
                if value4.lowercased() == "grotle"
                            {
                                pokemonImage4.image = UIImage(named: "grotle")!
                            }
                if value4.lowercased() == "torterra"
                            {
                                pokemonImage4.image = UIImage(named: "torterra")!
                            }
                if value4.lowercased() == "chimchar"
                            {
                                pokemonImage4.image = UIImage(named: "chimchar")!
                            }
                if value4.lowercased() == "monferno"
                            {
                                pokemonImage4.image = UIImage(named: "monferno")!
                            }
                if value4.lowercased() == "infernape"
                            {
                                pokemonImage4.image = UIImage(named: "infernape")!
                            }
                if value4.lowercased() == "piplup"
                            {
                                pokemonImage4.image = UIImage(named: "piplup")!
                            }
                if value4.lowercased() == "prinplup"
                            {
                                pokemonImage4.image = UIImage(named: "prinplup")!
                            }
                if value4.lowercased() == "empoleon"
                            {
                                pokemonImage4.image = UIImage(named: "empoleon")!
                            }
                if value4.lowercased() == "starly"
                            {
                                pokemonImage4.image = UIImage(named: "starly")!
                            }
                if value4.lowercased() == "staravia"
                            {
                                pokemonImage4.image = UIImage(named: "starvaria")!
                            }
                if value4.lowercased() == "staraptor"
                            {
                                pokemonImage4.image = UIImage(named: "staraptor")!
                            }
                if value4.lowercased() == "bidoof"
                            {
                                pokemonImage4.image = UIImage(named: "bidoof")!
                            }
                if value4.lowercased() == "bibarel"
                            {
                                pokemonImage4.image = UIImage(named: "bibarel")!
                            }
                if value4.lowercased() == "kricketot"
                            {
                                pokemonImage4.image = UIImage(named: "kricketot")!
                            }
                if value4.lowercased() == "kricketune"
                            {
                                pokemonImage4.image = UIImage(named: "kricketune")!
                            }
                if value4.lowercased() == "shinx"
                            {
                                pokemonImage4.image = UIImage(named: "shinx")!
                            }
                if value4.lowercased() == "luxio"
                       {
                           pokemonImage4.image = UIImage(named: "luxio")!
                       }
                if value4.lowercased() == "luxray"
                            {
                                pokemonImage4.image = UIImage(named: "luxray")!
                            }
                if value4.lowercased() == "budew"
                            {
                                pokemonImage4.image = UIImage(named: "budew")!
                            }
                if value4.lowercased() == "roserade"
                            {
                                pokemonImage4.image = UIImage(named: "roserade")!
                            }
                if value4.lowercased() == "cranidos"
                            {
                                pokemonImage4.image = UIImage(named: "cranidos")!
                            }
                if value4.lowercased() == "rampardos"
                            {
                                pokemonImage4.image = UIImage(named: "rampardos")!
                            }
                if value4.lowercased() == "shieldon"
                            {
                                pokemonImage4.image = UIImage(named: "shieldon")!
                            }
                if value4.lowercased() == "bastiodon"
                            {
                                pokemonImage4.image = UIImage(named: "bastiodon")!
                            }
                if value4.lowercased() == "plant burmy"
                            {
                                pokemonImage4.image = UIImage(named: "plant burmy")!
                            }
                if value4.lowercased() == "trash burmy"
                            {
                                pokemonImage4.image = UIImage(named: "trash burmy")!
                            }
                if value4.lowercased() == "sand burmy"
                            {
                                pokemonImage4.image = UIImage(named: "sand burmy")!
                            }
                if value4.lowercased() == "plant wormadam"
                            {
                                pokemonImage4.image = UIImage(named: "plant wormadam")!
                            }
                if value4.lowercased() == "trash wormadam"
                            {
                                pokemonImage4.image = UIImage(named: "trash wormadam")!
                            }
                if value4.lowercased() == "sand wormadam"
                            {
                                pokemonImage4.image = UIImage(named: "sand wormadam")!
                            }
                if value4.lowercased() == "mothim"
                            {
                                pokemonImage4.image = UIImage(named: "mothim")!
                            }
                if value4.lowercased() == "combee"
                            {
                                pokemonImage4.image = UIImage(named: "combee")!
                            }
                if value4.lowercased() == "vespiquen"
                            {
                                pokemonImage4.image = UIImage(named: "vespiquen")!
                            }
                if value4.lowercased() == "pachirisu"
                            {
                                pokemonImage4.image = UIImage(named: "pachirisu")!
                            }
                if value4.lowercased() == "buizel"
                            {
                                pokemonImage4.image = UIImage(named: "buizel")!
                            }
                if value4.lowercased() == "floatzel"
                            {
                                pokemonImage4.image = UIImage(named: "floatzel")!
                            }
                if value4.lowercased() == "cherubi"
                            {
                                pokemonImage4.image = UIImage(named: "cherubi")!
                            }
                if value4.lowercased() == "overcast cherrim"
                            {
                                pokemonImage4.image = UIImage(named: "overcast cherrim")!
                            }
                if value4.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage4.image = UIImage(named: "sunshine cherrim")!
                            }
                if value4.lowercased() == "east shellos"
                            {
                                pokemonImage4.image = UIImage(named: "east shellos")!
                            }
                if value4.lowercased() == "west shellos"
                            {
                                pokemonImage4.image = UIImage(named: "west shellos")!
                            }
                if value4.lowercased() == "east gastrodon"
                            {
                                pokemonImage4.image = UIImage(named: "east gastrodon")!
                            }
                if value4.lowercased() == "west gastrodon"
                            {
                                pokemonImage4.image = UIImage(named: "west gastrodon")!
                            }
                if value4.lowercased() == "ambipom"
                            {
                                pokemonImage4.image = UIImage(named: "ambipom")!
                            }
                if value4.lowercased() == "drifloon"
                            {
                                pokemonImage4.image = UIImage(named: "drifloon")!
                            }
                if value4.lowercased() == "drifblim"
                            {
                                pokemonImage4.image = UIImage(named: "drifblim")!
                            }
                if value4.lowercased() == "buneary"
                            {
                                pokemonImage4.image = UIImage(named: "buneary")!
                            }
                if value4.lowercased() == "lopunny"
                            {
                                pokemonImage4.image = UIImage(named: "lopunny")!
                            }
                if value4.lowercased() == "mismagius"
                            {
                                pokemonImage4.image = UIImage(named: "mismagius")!
                            }
                if value4.lowercased() == "honchkrow"
                            {
                                pokemonImage4.image = UIImage(named: "honchkrow")!
                            }
                if value4.lowercased() == "glameow"
                            {
                                pokemonImage4.image = UIImage(named: "glameow")!
                            }
                if value4.lowercased() == "purugly"
                            {
                                pokemonImage4.image = UIImage(named: "purugly")!
                            }
                if value4.lowercased() == "chingling"
                            {
                                pokemonImage4.image = UIImage(named: "chingling")!
                            }
                if value4.lowercased() == "stunky"
                            {
                                pokemonImage4.image = UIImage(named: "stunky")!
                            }
                if value4.lowercased() == "skuntank"
                            {
                                pokemonImage4.image = UIImage(named: "skuntank")!
                            }
                if value4.lowercased() == "bronzor"
                            {
                                pokemonImage4.image = UIImage(named: "bronzor")!
                            }
                if value4.lowercased() == "bronzong"
                            {
                                pokemonImage4.image = UIImage(named: "bronzong")!
                            }
                if value4.lowercased() == "bonsly"
                            {
                                pokemonImage4.image = UIImage(named: "bonsly")!
                            }
                if value4.lowercased() == "mime jr."
                            {
                                pokemonImage4.image = UIImage(named: "mime jr.")!
                            }
                if value4.lowercased() == "happiny"
                            {
                                pokemonImage4.image = UIImage(named: "happiny")!
                            }
                if value4.lowercased() == "chatot"
                            {
                                pokemonImage4.image = UIImage(named: "chatot")!
                            }
                if value4.lowercased() == "spiritomb"
                            {
                                pokemonImage4.image = UIImage(named: "spiritomb")!
                            }
                if value4.lowercased() == "gible"
                            {
                                pokemonImage4.image = UIImage(named: "gible")!
                            }
                if value4.lowercased() == "gabite"
                            {
                                pokemonImage4.image = UIImage(named: "gabite")!
                            }
                if value4.lowercased() == "garchomp"
                            {
                                pokemonImage4.image = UIImage(named: "garchomp")!
                            }
                if value4.lowercased() == "munchlax"
                            {
                                pokemonImage4.image = UIImage(named: "munchlax")!
                            }
                if value4.lowercased() == "riolu"
                            {
                                pokemonImage4.image = UIImage(named: "riolu")!
                            }
                if value4.lowercased() == "lucario"
                            {
                                pokemonImage4.image = UIImage(named: "lucario")!
                            }
                if value4.lowercased() == "hippopotas"
                            {
                                pokemonImage4.image = UIImage(named: "hippopotas")!
                            }
                if value4.lowercased() == "hippowdon"
                            {
                                pokemonImage4.image = UIImage(named: "hippowdon")!
                            }
                if value4.lowercased() == "skorupi"
                            {
                                pokemonImage4.image = UIImage(named: "skorupi")!
                            }
                if value4.lowercased() == "drapion"
                            {
                                pokemonImage4.image = UIImage(named: "drapion")!
                            }
                if value4.lowercased() == "croagunk"
                            {
                                pokemonImage4.image = UIImage(named: "croagunk")!
                            }
                if value4.lowercased() == "toxicroak"
                            {
                                pokemonImage4.image = UIImage(named: "toxicroak")!
                            }
                if value4.lowercased() == "carnivine"
                            {
                                pokemonImage4.image = UIImage(named: "carnivine")!
                            }
                if value4.lowercased() == "finneon"
                            {
                                pokemonImage4.image = UIImage(named: "finneon")!
                            }
                if value4.lowercased() == "lumineon"
                            {
                                pokemonImage4.image = UIImage(named: "lumineon")!
                            }
                if value4.lowercased() == "mantyke"
                            {
                                pokemonImage4.image = UIImage(named: "mantyke")!
                            }
                if value4.lowercased() == "snover"
                            {
                                pokemonImage4.image = UIImage(named: "snover")!
                            }
                if value4.lowercased() == "Abomasnow"
                            {
                                pokemonImage4.image = UIImage(named: "abomasnow")!
                            }
                if value4.lowercased() == "weavile"
                            {
                                pokemonImage4.image = UIImage(named: "weavile")!
                            }
                if value4.lowercased() == "magnezone"
                            {
                                pokemonImage4.image = UIImage(named: "magnezone")!
                            }
                if value4.lowercased() == "lickilicky"
                            {
                                pokemonImage4.image = UIImage(named: "lickilicky")!
                            }
                if value4.lowercased() == "rhyperior"
                            {
                                pokemonImage4.image = UIImage(named: "rhyperior")!
                            }
                if value4.lowercased() == "tangrowth"
                            {
                                pokemonImage4.image = UIImage(named: "tangrowth")!
                            }
                if value4.lowercased() == "electivire"
                            {
                                pokemonImage4.image = UIImage(named: "electivire")!
                            }
                if value4.lowercased() == "magmortar"
                            {
                                pokemonImage4.image = UIImage(named: "magmortar")!
                            }
                if value4.lowercased() == "togekiss"
                            {
                                pokemonImage4.image = UIImage(named: "togekiss")!
                            }
                if value4.lowercased() == "yanmega"
                            {
                                pokemonImage4.image = UIImage(named: "yanmega")!
                            }
                if value4.lowercased() == "leafeon"
                            {
                                pokemonImage4.image = UIImage(named: "leafeon")!
                            }
                if value4.lowercased() == "glaceon"
                            {
                                pokemonImage4.image = UIImage(named: "glaceon")!
                            }
                if value4.lowercased() == "gliscor"
                            {
                                pokemonImage4.image = UIImage(named: "gliscor")!
                            }
                if value4.lowercased() == "mamoswine"
                            {
                                pokemonImage4.image = UIImage(named: "mamoswine")!
                            }
                if value4.lowercased() == "porygon-z"
                            {
                                pokemonImage4.image = UIImage(named: "porygon-z")!
                            }
                if value4.lowercased() == "gallade"
                            {
                                pokemonImage4.image = UIImage(named: "gallade")!
                            }
                if value4.lowercased() == "probopass"
                            {
                                pokemonImage4.image = UIImage(named: "probopass")!
                            }
                if value4.lowercased() == "dusknoir"
                            {
                                pokemonImage4.image = UIImage(named: "dusknoir")!
                            }
                if value4.lowercased() == "froslass"
                            {
                                pokemonImage4.image = UIImage(named: "froslass")!
                            }
                if value4.lowercased() == "uxie"
                            {
                                pokemonImage4.image = UIImage(named: "uxie")!
                            }
                if value4.lowercased() == "azelf"
                            {
                                pokemonImage4.image = UIImage(named: "azelf")!
                            }
                if value4.lowercased() == "mesprit"
                            {
                                pokemonImage4.image = UIImage(named: "mesprit")!
                            }
                if value4.lowercased() == "dialga"
                            {
                                pokemonImage4.image = UIImage(named: "dialga")!
                            }
                if value4.lowercased() == "palkia"
                            {
                                pokemonImage4.image = UIImage(named: "palkia")!
                            }
                if value4.lowercased() == "heatran"
                            {
                                pokemonImage4.image = UIImage(named: "heatran")!
                            }
                if value4.lowercased() == "regigigas"
                            {
                                pokemonImage4.image = UIImage(named: "regigigas")!
                            }
                if value4.lowercased() == "altered giratina"
                            {
                                pokemonImage4.image = UIImage(named: "altered giratina")!
                            }
                if value4.lowercased() == "origin giratina"
                            {
                                pokemonImage4.image = UIImage(named: "origin giratina")!
                            }
                if value4.lowercased() == "cresselia"
                            {
                                pokemonImage4.image = UIImage(named: "cresselia")!
                            }
                if value4.lowercased() == "phione"
                            {
                                pokemonImage4.image = UIImage(named: "phione")!
                            }
                if value4.lowercased() == "manaphy"
                            {
                                pokemonImage4.image = UIImage(named: "manaphy")!
                            }
                if value4.lowercased() == "darkrai"
                            {
                                pokemonImage4.image = UIImage(named: "darkrai")!
                            }
                if value4.lowercased() == "shaymin"
                            {
                                pokemonImage4.image = UIImage(named: "shaymin")!
                            }
                if value4.lowercased() == "shaymin sky"
                            {
                                pokemonImage4.image = UIImage(named: "shaymin sky")!
                            }
                if value4.lowercased() == "arceus"
                            {
                                pokemonImage4.image = UIImage(named: "arceus")!
                            }

                if value5.lowercased() == "bulbasaur"
                            {
                                pokemonImage5.image = UIImage(named: "bulbasaur")!
                            }
                if value5.lowercased() == "ivysaur"
                            {
                                pokemonImage5.image = UIImage(named: "ivysaur")!
                            }
                if value5.lowercased() == "venusaur"
                            {
                                pokemonImage5.image = UIImage(named: "venusaur")!
                            }
                if value5.lowercased() == "charmander"
                            {
                                pokemonImage5.image = UIImage(named: "charmander")!
                            }
                if value5.lowercased() == "charmeleon"
                            {
                                pokemonImage5.image = UIImage(named: "charmeleon")!
                            }
                if value5.lowercased() == "charizard"
                            {
                                pokemonImage5.image = UIImage(named: "charizard")!
                            }
                if value5.lowercased() == "squirtle"
                            {
                                pokemonImage5.image = UIImage(named: "squirtle")!
                            }
                if value5.lowercased() == "wartortle"
                            {
                                pokemonImage5.image = UIImage(named: "wartortle")!
                            }
                if value5.lowercased() == "blastoise"
                            {
                                pokemonImage5.image = UIImage(named: "blastoise")!
                            }
                if value5.lowercased() == "caterpie"
                            {
                                pokemonImage5.image = UIImage(named: "caterpie")!
                            }
                if value5.lowercased() == "metapod"
                            {
                                pokemonImage5.image = UIImage(named: "metapod")!
                            }
                if value5.lowercased() == "butterfree"
                            {
                                pokemonImage5.image = UIImage(named: "butterfree")!
                            }
                if value5.lowercased() == "weedle"
                            {
                                pokemonImage5.image = UIImage(named: "weedle")!
                            }
                if value5.lowercased() == "kakuna"
                            {
                                pokemonImage5.image = UIImage(named: "kakuna")!
                            }
                if value5.lowercased() == "beedrill"
                            {
                                pokemonImage5.image = UIImage(named: "beedrill")!
                            }
                if value5.lowercased() == "pidgey"
                            {
                                pokemonImage5.image = UIImage(named: "pidgey")!
                            }
                if value5.lowercased() == "pidgeotto"
                            {
                                pokemonImage5.image = UIImage(named: "pidgeotto")!
                            }
                if value5.lowercased() == "pidgeot"
                            {
                                pokemonImage5.image = UIImage(named: "pidgeot")!
                            }
                if value5.lowercased() == "rattata"
                            {
                                pokemonImage5.image = UIImage(named: "rattata")!
                            }
                if value5.lowercased() == "raticate"
                            {
                                pokemonImage5.image = UIImage(named: "raticate")!
                            }
                if value5.lowercased() == "alolan rattata"
                            {
                                pokemonImage5.image = UIImage(named: "alolan rattata")!
                            }
                if value5.lowercased() == "alolan raticate"
                            {
                                pokemonImage5.image = UIImage(named: "alolan raticate")!
                            }
                if value5.lowercased() == "spearow"
                            {
                                pokemonImage5.image = UIImage(named: "spearow")!
                            }
                if value5.lowercased() == "fearow"
                            {
                                pokemonImage5.image = UIImage(named: "fearow")!
                            }
                if value5.lowercased() == "ekans"
                            {
                                pokemonImage5.image = UIImage(named: "ekans")!
                            }
                if value5.lowercased() == "arbok"
                            {
                                pokemonImage5.image = UIImage(named: "arbok")!
                            }
                if value5.lowercased() == "pikachu"
                            {
                                pokemonImage5.image = UIImage(named: "pikachu")!
                            }
                if value5.lowercased() == "raichu"
                            {
                                pokemonImage5.image = UIImage(named: "raichu")!
                            }
                if value5.lowercased() == "alolan raichu"
                            {
                                pokemonImage5.image = UIImage(named: "alolan raichu")!
                            }
                if value5.lowercased() == "sandshrew"
                            {
                                pokemonImage5.image = UIImage(named: "sandshrew")!
                            }
                if value5.lowercased() == "sandslash"
                            {
                                pokemonImage5.image = UIImage(named: "sandslash")!
                            }
                if value5.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage5.image = UIImage(named: "alolan sandshrew")!
                            }
                if value5.lowercased() == "alolan sandslash"
                            {
                                pokemonImage5.image = UIImage(named: "alolan sandslash")!
                            }
                if value5.lowercased() == "nidoran f"
                            {
                                pokemonImage5.image = UIImage(named: "nidoran f")!
                            }
                if value5.lowercased() == "nidorina"
                            {
                                pokemonImage5.image = UIImage(named: "nidorina")!
                            }
                if value5.lowercased() == "nidoqueen"
                            {
                                pokemonImage5.image = UIImage(named: "nidoqueen")!
                            }
                if value5.lowercased() == "nidoran m"
                            {
                                pokemonImage5.image = UIImage(named: "nidoran m")!
                            }
                if value5.lowercased() == "nidorino"
                            {
                                pokemonImage5.image = UIImage(named: "nidorino")!
                            }
                if value5.lowercased() == "nidoking"
                            {
                                pokemonImage5.image = UIImage(named: "nidoking")!
                            }
                if value5.lowercased() == "clefairy"
                            {
                                pokemonImage5.image = UIImage(named: "clefairy")!
                            }
                if value5.lowercased() == "clefable"
                            {
                                pokemonImage5.image = UIImage(named: "clefable")!
                            }
                if value5.lowercased() == "vulpix"
                            {
                                pokemonImage5.image = UIImage(named: "vulpix")!
                            }
                if value5.lowercased() == "alolan vulpix"
                            {
                                pokemonImage5.image = UIImage(named: "alolan vulpix")!
                            }
                if value5.lowercased() == "ninetales"
                            {
                                pokemonImage5.image = UIImage(named: "ninetales")!
                            }
                if value5.lowercased() == "alolan ninetales"
                            {
                                pokemonImage5.image = UIImage(named: "alolan ninetales")!
                            }
                if value5.lowercased() == "jigglypuff"
                            {
                                pokemonImage5.image = UIImage(named: "jigglypuff")!
                            }
                if value5.lowercased() == "wigglytuff"
                            {
                                pokemonImage5.image = UIImage(named: "wigglytuff")!
                            }
                if value5.lowercased() == "zubat"
                            {
                                pokemonImage5.image = UIImage(named: "zubat")!
                            }
                if value5.lowercased() == "golbat"
                            {
                                pokemonImage5.image = UIImage(named: "golbat")!
                            }
                if value5.lowercased() == "oddish"
                            {
                                pokemonImage5.image = UIImage(named: "oddish")!
                            }
                if value5.lowercased() == "gloom"
                            {
                                pokemonImage5.image = UIImage(named: "gloom")!
                            }
                if value5.lowercased() == "vileplume"
                            {
                                pokemonImage5.image = UIImage(named: "vileplume")!
                            }
                if value5.lowercased() == "paras"
                            {
                                pokemonImage5.image = UIImage(named: "paras")!
                            }
                if value5.lowercased() == "parasect"
                            {
                                pokemonImage5.image = UIImage(named: "parasect")!
                            }
                if value5.lowercased() == "venonat"
                            {
                                pokemonImage5.image = UIImage(named: "venonat")!
                            }
                if value5.lowercased() == "venomoth"
                            {
                                pokemonImage5.image = UIImage(named: "venomoth")!
                            }
                if value5.lowercased() == "diglett"
                            {
                                pokemonImage5.image = UIImage(named: "diglett")!
                            }
                if value5.lowercased() == "alolan diglett"
                            {
                                pokemonImage5.image = UIImage(named: "alolan diglett")!
                            }
                if value5.lowercased() == "dugtrio"
                            {
                                pokemonImage5.image = UIImage(named: "dugtrio")!
                            }
                if value5.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage5.image = UIImage(named: "alolan dugtrio")!
                            }
                if value5.lowercased() == "meowth"
                            {
                                pokemonImage5.image = UIImage(named: "meowth")!
                            }
                if value5.lowercased() == "alolan meowth"
                            {
                                pokemonImage5.image = UIImage(named: "alolan meowth")!
                            }
                if value5.lowercased() == "persian"
                            {
                                pokemonImage5.image = UIImage(named: "persian")!
                            }
                if value5.lowercased() == "alolan persian"
                            {
                                pokemonImage5.image = UIImage(named: "alolan persian")!
                            }

                if value5.lowercased() == "psyduck"
                            {
                                pokemonImage5.image = UIImage(named: "psyduck")!
                            }
                if value5.lowercased() == "golduck"
                            {
                                pokemonImage5.image = UIImage(named: "golduck")!
                            }
                if value5.lowercased() == "mankey"
                            {
                                pokemonImage5.image = UIImage(named: "mankey")!
                            }
                if value5.lowercased() == "primeape"
                            {
                                pokemonImage5.image = UIImage(named: "primeape")!
                            }
                if value5.lowercased() == "growlithe"
                            {
                                pokemonImage5.image = UIImage(named: "growlithe")!
                            }
                if value5.lowercased() == "arcanine"
                            {
                                pokemonImage5.image = UIImage(named: "arcanine")!
                            }
                if value5.lowercased() == "poliwag"
                            {
                                pokemonImage5.image = UIImage(named: "poliwag")!
                            }
                if value5.lowercased() == "poliwhirl"
                            {
                                pokemonImage5.image = UIImage(named: "poliwhirl")!
                            }
                if value5.lowercased() == "poliwrath"
                            {
                                pokemonImage5.image = UIImage(named: "poliwrath")!
                            }
                if value5.lowercased() == "abra"
                            {
                                pokemonImage5.image = UIImage(named: "abra")!
                            }
                if value5.lowercased() == "kadabra"
                            {
                                pokemonImage5.image = UIImage(named: "kadabra")!
                            }
                if value5.lowercased() == "alakazam"
                            {
                                pokemonImage5.image = UIImage(named: "alakazam")!
                            }
                if value5.lowercased() == "machop"
                            {
                                pokemonImage5.image = UIImage(named: "machop")!
                            }
                if value5.lowercased() == "machoke"
                            {
                                pokemonImage5.image = UIImage(named: "machoke")!
                            }
                if value5.lowercased() == "machamp"
                            {
                                pokemonImage5.image = UIImage(named: "machamp")!
                            }
                if value5.lowercased() == "bellsprout"
                            {
                                pokemonImage5.image = UIImage(named: "bellsprout")!
                            }
                if value5.lowercased() == "weepinbell"
                            {
                                pokemonImage5.image = UIImage(named: "weepinbell")!
                            }
                if value5.lowercased() == "victreebel"
                            {
                                pokemonImage5.image = UIImage(named: "victreebel")!
                            }
                if value5.lowercased() == "tentacool"
                            {
                                pokemonImage5.image = UIImage(named: "tentacool")!
                            }
                if value5.lowercased() == "tentacruel"
                            {
                                pokemonImage5.image = UIImage(named: "tentacruel")!
                            }
                if value5.lowercased() == "geodude"
                            {
                                pokemonImage5.image = UIImage(named: "geodude")!
                            }
                if value5.lowercased() == "alolan geodude"
                            {
                                pokemonImage5.image = UIImage(named: "alolan geodude")!
                            }
                if value5.lowercased() == "graveler"
                            {
                                pokemonImage5.image = UIImage(named: "graveler")!
                            }
                if value5.lowercased() == "alolan graveler"
                            {
                                pokemonImage5.image = UIImage(named: "alolan graveler")!
                            }
                if value5.lowercased() == "golem"
                            {
                                pokemonImage5.image = UIImage(named: "golem")!
                            }
                if value5.lowercased() == "alolan golem"
                            {
                                pokemonImage5.image = UIImage(named: "alolan golem")!
                            }
                if value5.lowercased() == "ponyta"
                            {
                                pokemonImage5.image = UIImage(named: "ponyta")!
                            }
                if value5.lowercased() == "rapidash"
                            {
                                pokemonImage5.image = UIImage(named: "rapidash")!
                            }
                if value5.lowercased() == "slowpoke"
                            {
                                pokemonImage5.image = UIImage(named: "slowpoke")!
                            }
                if value5.lowercased() == "slowbro"
                            {
                                pokemonImage5.image = UIImage(named: "slowbro")!
                            }
                if value5.lowercased() == "magnemite"
                            {
                                pokemonImage5.image = UIImage(named: "magnemite")!
                            }
                if value5.lowercased() == "magneton"
                            {
                                pokemonImage5.image = UIImage(named: "magneton")!
                            }
                if value5.lowercased() == "farfetch’d"
                            {
                                pokemonImage5.image = UIImage(named: "farfetch’d")!
                            }
                if value5.lowercased() == "doduo"
                            {
                                pokemonImage5.image = UIImage(named: "doduo")!
                            }
                if value5.lowercased() == "dodrio"
                            {
                                pokemonImage5.image = UIImage(named: "dodrio")!
                            }
                if value5.lowercased() == "seel"
                            {
                                pokemonImage5.image = UIImage(named: "seel")!
                            }
                if value5.lowercased() == "dewgong"
                            {
                                pokemonImage5.image = UIImage(named: "dewgong")!
                            }
                if value5.lowercased() == "grimer"
                            {
                                pokemonImage5.image = UIImage(named: "grimer")!
                            }
                if value5.lowercased() == "alolan grimer"
                            {
                                pokemonImage5.image = UIImage(named: "alolan grimer")!
                            }
                if value5.lowercased() == "muk"
                            {
                                pokemonImage5.image = UIImage(named: "muk")!
                            }
                if value5.lowercased() == "alolan muk"
                            {
                                pokemonImage5.image = UIImage(named: "alolan muk")!
                            }
                if value5.lowercased() == "shellder"
                            {
                                pokemonImage5.image = UIImage(named: "shellder")!
                            }
                if value5.lowercased() == "cloyster"
                            {
                                pokemonImage5.image = UIImage(named: "cloyster")!
                            }
                if value5.lowercased() == "gastly"
                            {
                                pokemonImage5.image = UIImage(named: "gastly")!
                            }
                if value5.lowercased() == "haunter"
                            {
                                pokemonImage5.image = UIImage(named: "haunter")!
                            }
                if value5.lowercased() == "gengar"
                            {
                                pokemonImage5.image = UIImage(named: "gengar")!
                            }
                if value5.lowercased() == "onix"
                            {
                                pokemonImage5.image = UIImage(named: "onix")!
                            }
                if value5.lowercased() == "drowzee"
                            {
                                pokemonImage5.image = UIImage(named: "drowzee")!
                            }
                if value5.lowercased() == "hypno"
                            {
                                pokemonImage5.image = UIImage(named: "hypno")!
                            }
                if value5.lowercased() == "krabby"
                            {
                                pokemonImage5.image = UIImage(named: "krabby")!
                            }
                if value5.lowercased() == "kingler"
                            {
                                pokemonImage5.image = UIImage(named: "kingler")!
                            }
                if value5.lowercased() == "voltorb"
                            {
                                pokemonImage5.image = UIImage(named: "voltorb")!
                            }
                if value5.lowercased() == "electrode"
                            {
                                pokemonImage5.image = UIImage(named: "electrode")!
                            }
                if value5.lowercased() == "exeggcute"
                            {
                                pokemonImage5.image = UIImage(named: "exeggcute")!
                            }
                if value5.lowercased() == "exeggutor"
                            {
                                pokemonImage5.image = UIImage(named: "exeggutor")!
                            }
                if value5.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage5.image = UIImage(named: "alolan exeggutor")!
                            }
                if value5.lowercased() == "cubone"
                            {
                                pokemonImage5.image = UIImage(named: "cubone")!
                            }
                if value5.lowercased() == "marowak"
                            {
                                pokemonImage5.image = UIImage(named: "marowak")!
                            }
                if value5.lowercased() == "alolan marowak"
                            {
                                pokemonImage5.image = UIImage(named: "alolan marowak")!
                            }
                if value5.lowercased() == "hitmonlee"
                            {
                                pokemonImage5.image = UIImage(named: "hitmonlee")!
                            }
                if value5.lowercased() == "hitmonchan"
                            {
                                pokemonImage5.image = UIImage(named: "hitmonchan")!
                            }
                if value5.lowercased() == "lickitung"
                            {
                                pokemonImage5.image = UIImage(named: "lickitung")!
                            }
                if value5.lowercased() == "koffing"
                            {
                                pokemonImage5.image = UIImage(named: "koffing")!
                            }
                if value5.lowercased() == "weezing"
                            {
                                pokemonImage5.image = UIImage(named: "weezing")!
                            }
                if value5.lowercased() == "rhyhorn"
                            {
                                pokemonImage5.image = UIImage(named: "rhyhorn")!
                            }
                if value5.lowercased() == "rhydon"
                            {
                                pokemonImage5.image = UIImage(named: "rhydon")!
                            }
                if value5.lowercased() == "chansey"
                            {
                                pokemonImage5.image = UIImage(named: "chansey")!
                            }
                if value5.lowercased() == "tangela"
                            {
                                pokemonImage5.image = UIImage(named: "tangela")!
                            }
                if value5.lowercased() == "kangaskhan"
                            {
                                pokemonImage5.image = UIImage(named: "kangaskhan")!
                            }
                if value5.lowercased() == "horsea"
                            {
                                pokemonImage5.image = UIImage(named: "horsea")!
                            }
                if value5.lowercased() == "seadra"
                            {
                                pokemonImage5.image = UIImage(named: "seadra")!
                            }
                if value5.lowercased() == "goldeen"
                            {
                                pokemonImage5.image = UIImage(named: "goldeen")!
                            }
                if value5.lowercased() == "seaking"
                            {
                                pokemonImage5.image = UIImage(named: "seaking")!
                            }
                if value5.lowercased() == "staryu"
                            {
                                pokemonImage5.image = UIImage(named: "staryu")!
                            }
                if value5.lowercased() == "starmie"
                            {
                                pokemonImage5.image = UIImage(named: "starmie")!
                            }
                if value5.lowercased() == "mr.mime"
                            {
                                pokemonImage5.image = UIImage(named: "mr.mime")!
                            }
                if value5.lowercased() == "scyther"
                            {
                                pokemonImage5.image = UIImage(named: "scyther")!
                            }
                if value5.lowercased() == "jynx"
                            {
                                pokemonImage5.image = UIImage(named: "jynx")!
                            }
                if value5.lowercased() == "electabuzz"
                            {
                                pokemonImage5.image = UIImage(named: "electabuzz")!
                            }
                if value5.lowercased() == "magmar"
                            {
                                pokemonImage5.image = UIImage(named: "magmar")!
                            }
                if value5.lowercased() == "pinsir"
                            {
                                pokemonImage5.image = UIImage(named: "pinsir")!
                            }
                if value5.lowercased() == "tauros"
                            {
                                pokemonImage5.image = UIImage(named: "tauros")!
                            }
                if value5.lowercased() == "magikarp"
                            {
                                pokemonImage5.image = UIImage(named: "magikarp")!
                            }
                if value5.lowercased() == "gyarados"
                            {
                                pokemonImage5.image = UIImage(named: "gyarados")!
                            }
                if value5.lowercased() == "lapras"
                            {
                                pokemonImage5.image = UIImage(named: "lapras")!
                            }
                if value5.lowercased() == "ditto"
                            {
                                pokemonImage5.image = UIImage(named: "ditto")!
                            }
                if value5.lowercased() == "eevee"
                            {
                                pokemonImage5.image = UIImage(named: "eevee")!
                            }
                if value5.lowercased() == "vaporeon"
                            {
                                pokemonImage5.image = UIImage(named: "vaporeon")!
                            }
                if value5.lowercased() == "jolteon"
                            {
                                pokemonImage5.image = UIImage(named: "jolteon")!
                            }
                if value5.lowercased() == "flareon"
                            {
                                pokemonImage5.image = UIImage(named: "flareon")!
                            }
                if value5.lowercased() == "porygon"
                            {
                                pokemonImage5.image = UIImage(named: "porygon")!
                            }
                if value5.lowercased() == "omanyte"
                            {
                                pokemonImage5.image = UIImage(named: "omanyte")!
                            }
                if value5.lowercased() == "omastar"
                            {
                                pokemonImage5.image = UIImage(named: "omastar")!
                            }
                if value5.lowercased() == "kabuto"
                            {
                                pokemonImage5.image = UIImage(named: "kabuto")!
                            }
                if value5.lowercased() == "kabutops"
                            {
                                pokemonImage5.image = UIImage(named: "kabutops")!
                            }
                if value5.lowercased() == "aerodactyl"
                            {
                                pokemonImage5.image = UIImage(named: "aerodactyl")!
                            }
                if value5.lowercased() == "snorlax"
                            {
                                pokemonImage5.image = UIImage(named: "snorlax")!
                            }
                if value5.lowercased() == "articuno"
                            {
                                pokemonImage5.image = UIImage(named: "articuno")!
                            }
                if value5.lowercased() == "zapdos"
                            {
                                pokemonImage5.image = UIImage(named: "zapdos")!
                            }
                if value5.lowercased() == "moltres"
                            {
                                pokemonImage5.image = UIImage(named: "moltres")!
                            }
                if value5.lowercased() == "dratini"
                            {
                                pokemonImage5.image = UIImage(named: "dratini")!
                            }
                if value5.lowercased() == "dragonair"
                            {
                                pokemonImage5.image = UIImage(named: "dragonair")!
                            }
                if value5.lowercased() == "mewtwo"
                            {
                                pokemonImage5.image = UIImage(named: "mewtwo")!
                            }
                if value5.lowercased() == "mew"
                            {
                                pokemonImage5.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value5.lowercased() == "chikorita"
                            {
                                pokemonImage5.image = UIImage(named: "chikorita")!
                            }
                if value5.lowercased() == "bayleef"
                            {
                                pokemonImage5.image = UIImage(named: "bayleef")!
                            }
                if value5.lowercased() == "meganium"
                            {
                                pokemonImage5.image = UIImage(named: "meganium")!
                            }
                if value5.lowercased() == "cyndaquil"
                            {
                                pokemonImage5.image = UIImage(named: "cyndaquil")!
                            }
                if value5.lowercased() == "quilava"
                            {
                                pokemonImage5.image = UIImage(named: "quilava")!
                            }
                if value5.lowercased() == "typhlosion"
                            {
                                pokemonImage5.image = UIImage(named: "typhlosion")!
                            }
                if value5.lowercased() == "totodile"
                            {
                                pokemonImage5.image = UIImage(named: "totodile")!
                            }
                if value5.lowercased() == "croconaw"
                            {
                                pokemonImage5.image = UIImage(named: "croconaw")!
                            }
                if value5.lowercased() == "feraligatr"
                            {
                                pokemonImage5.image = UIImage(named: "feraligatr")!
                            }
                if value5.lowercased() == "sentret"
                            {
                                pokemonImage5.image = UIImage(named: "sentret")!
                            }
                if value5.lowercased() == "furret"
                            {
                                pokemonImage5.image = UIImage(named: "furret")!
                            }
                if value5.lowercased() == "hoothoot"
                            {
                                pokemonImage5.image = UIImage(named: "hoothoot")!
                            }
                if value5.lowercased() == "noctowl"
                            {
                                pokemonImage5.image = UIImage(named: "noctowl")!
                            }
                if value5.lowercased() == "ledyba"
                            {
                                pokemonImage5.image = UIImage(named: "ledyba")!
                            }
                if value5.lowercased() == "ledian"
                            {
                                pokemonImage5.image = UIImage(named: "ledian")!
                            }
                if value5.lowercased() == "spinarak"
                            {
                                pokemonImage5.image = UIImage(named: "spinarak")!
                            }
                if value5.lowercased() == "ariados"
                            {
                                pokemonImage5.image = UIImage(named: "ariados")!
                            }
                if value5.lowercased() == "crobat"
                            {
                                pokemonImage5.image = UIImage(named: "crobat")!
                            }
                if value5.lowercased() == "chinchou"
                            {
                                pokemonImage5.image = UIImage(named: "chinchou")!
                            }
                if value5.lowercased() == "lanturn"
                            {
                                pokemonImage5.image = UIImage(named: "lanturn")!
                            }
                if value5.lowercased() == "pichu"
                            {
                                pokemonImage5.image = UIImage(named: "pichu")!
                            }
                 if value5.lowercased() == "cleffa"
                            {
                                pokemonImage5.image = UIImage(named: "cleffa")!
                            }
                if value5.lowercased() == "igglybuff"
                            {
                                pokemonImage5.image = UIImage(named: "igglybuff")!
                            }
                if value5.lowercased() == "togepi"
                            {
                                pokemonImage5.image = UIImage(named: "togepi")!
                            }
                if value5.lowercased() == "togetic"
                            {
                                pokemonImage5.image = UIImage(named: "togetic")!
                            }
                if value5.lowercased() == "natu"
                            {
                                pokemonImage5.image = UIImage(named: "natu")!
                            }
                if value5.lowercased() == "xatu"
                            {
                                pokemonImage5.image = UIImage(named: "xatu")!
                            }
                if value5.lowercased() == "mareep"
                            {
                                pokemonImage5.image = UIImage(named: "mareep")!
                            }
                if value5.lowercased() == "flaaffy"
                            {
                                pokemonImage5.image = UIImage(named: "flaaffy")!
                            }
                if value5.lowercased() == "ampharos"
                            {
                                pokemonImage5.image = UIImage(named: "ampharos")!
                            }
                if value5.lowercased() == "bellossom"
                            {
                                pokemonImage5.image = UIImage(named: "bellossom")!
                            }
                 if value5.lowercased() == "marill"
                            {
                                pokemonImage5.image = UIImage(named: "marill")!
                            }
                if value5.lowercased() == "azumarill"
                            {
                                pokemonImage5.image = UIImage(named: "azumarill")!
                            }
                if value5.lowercased() == "sudowoodo"
                            {
                                pokemonImage5.image = UIImage(named: "sudowoodo")!
                            }
                if value5.lowercased() == "politoed"
                            {
                                pokemonImage5.image = UIImage(named: "politoed")!
                            }
                if value5.lowercased() == "hoppip"
                            {
                                pokemonImage5.image = UIImage(named: "hoppip")!
                            }
                if value5.lowercased() == "skiploom"
                            {
                                pokemonImage5.image = UIImage(named: "skiploom")!
                            }
                if value5.lowercased() == "jumpluff"
                            {
                                pokemonImage5.image = UIImage(named: "jumpluff")!
                            }
                if value5.lowercased() == "aipom"
                            {
                                pokemonImage5.image = UIImage(named: "aipom")!
                            }
                if value5.lowercased() == "sunkern"
                            {
                                pokemonImage5.image = UIImage(named: "sunkern")!
                            }
                if value5.lowercased() == "sunflora"
                            {
                                pokemonImage5.image = UIImage(named: "sunflora")!
                            }
                if value5.lowercased() == "yanma"
                            {
                                pokemonImage5.image = UIImage(named: "yanma")!
                            }
                if value5.lowercased() == "wooper"
                            {
                                pokemonImage5.image = UIImage(named: "wooper")!
                            }
                if value5.lowercased() == "quagsire"
                            {
                                pokemonImage5.image = UIImage(named: "quagsire")!
                            }
                if value5.lowercased() == "espeon"
                            {
                                pokemonImage5.image = UIImage(named: "espeon")!
                            }
                if value5.lowercased() == "umbreon"
                            {
                                pokemonImage5.image = UIImage(named: "umbreon")!
                            }
                if value5.lowercased() == "murkrow"
                            {
                                pokemonImage5.image = UIImage(named: "murkrow")!
                            }
                if value5.lowercased() == "slowking"
                            {
                                pokemonImage5.image = UIImage(named: "slowking")!
                            }
                if value5.lowercased() == "girafarig"
                            {
                                pokemonImage5.image = UIImage(named: "girafarig")!
                            }
                if value5.lowercased() == "misdreavus"
                            {
                                pokemonImage5.image = UIImage(named: "misdreavus")!
                            }
                if value5.lowercased() == "unown"
                            {
                                pokemonImage5.image = UIImage(named: "unown")!
                            }
                if value5.lowercased() == "wobbuffet"
                            {
                                pokemonImage5.image = UIImage(named: "wobbuffet")!
                            }
                if value5.lowercased() == "pineco"
                            {
                                pokemonImage5.image = UIImage(named: "pineco")!
                            }
                if value5.lowercased() == "forretress"
                            {
                                pokemonImage5.image = UIImage(named: "forretress")!
                            }
                if value5.lowercased() == "dunsparce"
                            {
                                pokemonImage5.image = UIImage(named: "dunsparce")!
                            }
                if value5.lowercased() == "gligar"
                            {
                                pokemonImage5.image = UIImage(named: "gligar")!
                            }
                if value5.lowercased() == "steelix"
                            {
                                pokemonImage5.image = UIImage(named: "steelix")!
                            }
                if value5.lowercased() == "snubbull"
                            {
                                pokemonImage5.image = UIImage(named: "snubbull")!
                            }
                if value5.lowercased() == "granbull"
                            {
                                pokemonImage5.image = UIImage(named: "granbull")!
                            }
                if value5.lowercased() == "qwilfish"
                            {
                                pokemonImage5.image = UIImage(named: "qwilfish")!
                            }
                if value5.lowercased() == "scizor"
                            {
                                pokemonImage5.image = UIImage(named: "scizor")!
                            }
                if value5.lowercased() == "shuckle"
                            {
                                pokemonImage5.image = UIImage(named: "shuckle")!
                            }
                if value5.lowercased() == "heracross"
                            {
                                pokemonImage5.image = UIImage(named: "heracross")!
                            }
                if value5.lowercased() == "sneasel"
                            {
                                pokemonImage5.image = UIImage(named: "sneasel")!
                            }
                if value5.lowercased() == "teddiursa"
                            {
                                pokemonImage5.image = UIImage(named: "teddiursa")!
                            }
                if value5.lowercased() == "ursaring"
                            {
                                pokemonImage5.image = UIImage(named: "ursaring")!
                            }
                if value5.lowercased() == "slugma"
                            {
                                pokemonImage5.image = UIImage(named: "slugma")!
                            }
                if value5.lowercased() == "magcargo"
                            {
                                pokemonImage5.image = UIImage(named: "magcargo")!
                            }
                if value5.lowercased() == "swinub"
                            {
                                pokemonImage5.image = UIImage(named: "swinub")!
                            }
                if value5.lowercased() == "piloswine"
                            {
                                pokemonImage5.image = UIImage(named: "piloswine")!
                            }
                if value5.lowercased() == "corsola"
                            {
                                pokemonImage5.image = UIImage(named: "corsola")!
                            }
                if value5.lowercased() == "remoraid"
                            {
                                pokemonImage5.image = UIImage(named: "remoraid")!
                            }
                if value5.lowercased() == "octillery"
                            {
                                pokemonImage5.image = UIImage(named: "octillery")!
                            }
                if value5.lowercased() == "delibird"
                            {
                                pokemonImage5.image = UIImage(named: "delibird")!
                            }
                if value5.lowercased() == "mantine"
                            {
                                pokemonImage5.image = UIImage(named: "mantine")!
                            }
                 if value5.lowercased() == "skarmory"
                            {
                                pokemonImage5.image = UIImage(named: "skarmory")!
                            }
                if value5.lowercased() == "houndour"
                            {
                                pokemonImage5.image = UIImage(named: "houndour")!
                            }
                if value5.lowercased() == "houndoom"
                            {
                                pokemonImage5.image = UIImage(named: "houndoom")!
                            }
                if value5.lowercased() == "kingdra"
                            {
                                pokemonImage5.image = UIImage(named: "kingdra")!
                            }
                if value5.lowercased() == "phanpy"
                            {
                                pokemonImage5.image = UIImage(named: "phanpy")!
                            }
                if value5.lowercased() == "donphan"
                            {
                                pokemonImage5.image = UIImage(named: "donphan")!
                            }
                if value5.lowercased() == "porygon2"
                            {
                                pokemonImage5.image = UIImage(named: "porygon2")!
                            }
                if value5.lowercased() == "stantler"
                            {
                                pokemonImage5.image = UIImage(named: "stantler")!
                            }
                if value5.lowercased() == "smeargle"
                            {
                                pokemonImage5.image = UIImage(named: "smeargle")!
                            }
                if value5.lowercased() == "tyrogue"
                            {
                                pokemonImage5.image = UIImage(named: "tyrogue")!
                            }
                if value5.lowercased() == "hitmontop"
                            {
                                pokemonImage5.image = UIImage(named: "hitmontop")!
                            }
                if value5.lowercased() == "smoochum"
                            {
                                pokemonImage5.image = UIImage(named: "smoochum")!
                            }
                if value5.lowercased() == "elekid"
                            {
                                pokemonImage5.image = UIImage(named: "elekid")!
                            }
                if value5.lowercased() == "magby"
                            {
                                pokemonImage5.image = UIImage(named: "magby")!
                            }
                if value5.lowercased() == "miltank"
                            {
                                pokemonImage5.image = UIImage(named: "miltank")!
                            }
                if value5.lowercased() == "blissey"
                            {
                                pokemonImage5.image = UIImage(named: "blissey")!
                            }
                if value5.lowercased() == "raikou"
                            {
                                pokemonImage5.image = UIImage(named: "raikou")!
                            }
                if value5.lowercased() == "entei"
                            {
                                pokemonImage5.image = UIImage(named: "entei")!
                            }
                if value5.lowercased() == "suicune"
                            {
                                pokemonImage5.image = UIImage(named: "suicune")!
                            }
                if value5.lowercased() == "larvitar"
                            {
                                pokemonImage5.image = UIImage(named: "larvitar")!
                            }
                if value5.lowercased() == "pupitar"
                            {
                                pokemonImage5.image = UIImage(named: "pupitar")!
                            }
                if value5.lowercased() == "tyranitar"
                            {
                                pokemonImage5.image = UIImage(named: "tyranitar")!
                            }
                if value5.lowercased() == "ho-oh"
                            {
                                pokemonImage5.image = UIImage(named: "ho-oh")!
                            }
                if value5.lowercased() == "lugia"
                            {
                                pokemonImage5.image = UIImage(named: "lugia")!
                            }
                if value5.lowercased() == "celebi"
                            {
                                pokemonImage5.image = UIImage(named: "celebi")!
                            }
                if value5.lowercased() == "treecko"
                            {
                                pokemonImage5.image = UIImage(named: "treecko")!
                            }
                if value5.lowercased() == "grovyle"
                            {
                                pokemonImage5.image = UIImage(named: "grovyle")!
                            }
                if value5.lowercased() == "sceptile"
                            {
                                pokemonImage5.image = UIImage(named: "sceptile")!
                            }
                if value5.lowercased() == "torchic"
                            {
                                pokemonImage5.image = UIImage(named: "torchic")!
                            }
                if value5.lowercased() == "combusken"
                            {
                                pokemonImage5.image = UIImage(named: "combusken")!
                            }
                if value5.lowercased() == "blaziken"
                            {
                                pokemonImage5.image = UIImage(named: "blaziken")!
                            }
                if value5.lowercased() == "mudkip"
                            {
                                pokemonImage5.image = UIImage(named: "mudkip")!
                            }
                if value5.lowercased() == "marshtomp"
                            {
                                pokemonImage5.image = UIImage(named: "marshtomp")!
                            }
                if value5.lowercased() == "swampert"
                            {
                                pokemonImage5.image = UIImage(named: "swampert")!
                            }
                if value5.lowercased() == "poochyena"
                            {
                                pokemonImage5.image = UIImage(named: "poochyena")!
                            }
                if value5.lowercased() == "mightyena"
                            {
                                pokemonImage5.image = UIImage(named: "mightyena")!
                            }
                if value5.lowercased() == "zigzagoon"
                            {
                                pokemonImage5.image = UIImage(named: "zigzagoon")!
                            }
                if value5.lowercased() == "linoone"
                            {
                                pokemonImage5.image = UIImage(named: "linoone")!
                            }
                if value5.lowercased() == "wurmple"
                            {
                                pokemonImage5.image = UIImage(named: "wurmple")!
                            }
                if value5.lowercased() == "silcoon"
                            {
                                pokemonImage5.image = UIImage(named: "silcoon")!
                            }
                if value5.lowercased() == "beautifly"
                            {
                                pokemonImage5.image = UIImage(named: "beautifly")!
                            }
                if value5.lowercased() == "cascoon"
                            {
                                pokemonImage5.image = UIImage(named: "cascoon")!
                            }
                if value5.lowercased() == "dustox"
                            {
                                pokemonImage5.image = UIImage(named: "dustox")!
                            }
                if value5.lowercased() == "lotad"
                            {
                                pokemonImage5.image = UIImage(named: "lotad")!
                            }
                if value5.lowercased() == "lombre"
                            {
                                pokemonImage5.image = UIImage(named: "lombre")!
                            }
                if value5.lowercased() == "ludicolo"
                            {
                                pokemonImage5.image = UIImage(named: "ludicolo")!
                            }
                if value5.lowercased() == "seedot"
                            {
                                pokemonImage5.image = UIImage(named: "seedot")!
                            }
                if value5.lowercased() == "nuzleaf"
                            {
                                pokemonImage5.image = UIImage(named: "nuzleaf")!
                            }
                if value5.lowercased() == "shiftry"
                            {
                                pokemonImage5.image = UIImage(named: "shiftry")!
                            }
                if value5.lowercased() == "taillow"
                            {
                                pokemonImage5.image = UIImage(named: "taillow")!
                            }
                if value5.lowercased() == "swellow"
                                    {
                                        pokemonImage5.image = UIImage(named: "swellow")!
                                    }
                if value5.lowercased() == "wingull"
                            {
                                pokemonImage5.image = UIImage(named: "wingull")!
                            }
                if value5.lowercased() == "pelipper"
                            {
                                pokemonImage5.image = UIImage(named: "pelipper")!
                            }
                if value5.lowercased() == "ralts"
                            {
                                pokemonImage5.image = UIImage(named: "ralts")!
                            }
                if value5.lowercased() == "kirlia"
                            {
                                pokemonImage5.image = UIImage(named: "kirlia")!
                            }
                if value5.lowercased() == "gardevoir"
                            {
                                pokemonImage5.image = UIImage(named: "gardevoir")!
                            }
                if value5.lowercased() == "surskit"
                            {
                                pokemonImage5.image = UIImage(named: "surskit")!
                            }
                if value5.lowercased() == "masquerain"
                            {
                                pokemonImage5.image = UIImage(named: "masquerain")!
                            }
                if value5.lowercased() == "shroomish"
                            {
                                pokemonImage5.image = UIImage(named: "shroomish")!
                            }
                if value5.lowercased() == "breloom"
                            {
                                pokemonImage5.image = UIImage(named: "breloom")!
                            }
                if value5.lowercased() == "slakoth"
                            {
                                pokemonImage5.image = UIImage(named: "slakoth")!
                            }
                if value5.lowercased() == "vigoroth"
                            {
                                pokemonImage5.image = UIImage(named: "vigoroth")!
                            }
                if value5.lowercased() == "slaking"
                            {
                                pokemonImage5.image = UIImage(named: "slaking")!
                            }
                if value5.lowercased() == "nincada"
                            {
                                pokemonImage5.image = UIImage(named: "nincada")!
                            }
                if value5.lowercased() == "ninjask"
                            {
                                pokemonImage5.image = UIImage(named: "ninjask")!
                            }
                if value5.lowercased() == "shedinja"
                            {
                                pokemonImage5.image = UIImage(named: "shedinja")!
                            }
                if value5.lowercased() == "whismur"
                            {
                                pokemonImage5.image = UIImage(named: "whismur")!
                            }
                if value5.lowercased() == "loudred"
                            {
                                pokemonImage5.image = UIImage(named: "loudred")!
                            }
                if value5.lowercased() == "exploud"
                            {
                                pokemonImage5.image = UIImage(named: "exploud")!
                            }
                if value5.lowercased() == "makuhita"
                            {
                                pokemonImage5.image = UIImage(named: "makuhita")!
                            }
                if value5.lowercased() == "hariyama"
                            {
                                pokemonImage5.image = UIImage(named: "hariyama")!
                            }
                if value5.lowercased() == "azurill"
                            {
                                pokemonImage5.image = UIImage(named: "azurill")!
                            }
                if value5.lowercased() == "nosepass"
                            {
                                pokemonImage5.image = UIImage(named: "nosepass")!
                            }
                if value5.lowercased() == "skitty"
                            {
                                pokemonImage5.image = UIImage(named: "skitty")!
                            }
                if value5.lowercased() == "delcatty"
                            {
                                pokemonImage5.image = UIImage(named: "delcatty")!
                            }
                if value5.lowercased() == "sableye"
                            {
                                pokemonImage5.image = UIImage(named: "sableye")!
                            }
                if value5.lowercased() == "mawile"
                            {
                                pokemonImage5.image = UIImage(named: "mawile")!
                            }
                if value5.lowercased() == "aron"
                            {
                                pokemonImage5.image = UIImage(named: "aron")!
                            }
                if value5.lowercased() == "lairon"
                            {
                                pokemonImage5.image = UIImage(named: "lairon")!
                            }
                if value5.lowercased() == "aggron"
                            {
                                pokemonImage5.image = UIImage(named: "aggron")!
                            }
                if value5.lowercased() == "meditite"
                            {
                                pokemonImage5.image = UIImage(named: "meditite")!
                            }
                if value5.lowercased() == "medicham"
                            {
                                pokemonImage5.image = UIImage(named: "medicham")!
                            }
                if value5.lowercased() == "electrike"
                            {
                                pokemonImage5.image = UIImage(named: "electrike")!
                            }
                if value5.lowercased() == "manectric"
                            {
                                pokemonImage5.image = UIImage(named: "manectric")!
                            }
                if value5.lowercased() == "plusle"
                            {
                                pokemonImage5.image = UIImage(named: "plusle")!
                            }
                if value5.lowercased() == "minun"
                            {
                                pokemonImage5.image = UIImage(named: "minun")!
                            }
                if value5.lowercased() == "volbeat"
                            {
                                pokemonImage5.image = UIImage(named: "volbeat")!
                            }
                if value5.lowercased() == "illumise"
                            {
                                pokemonImage5.image = UIImage(named: "illumise")!
                            }
                if value5.lowercased() == "roselia"
                            {
                                pokemonImage5.image = UIImage(named: "roselia")!
                            }
                if value5.lowercased() == "gulpin"
                            {
                                pokemonImage5.image = UIImage(named: "gulpin")!
                            }
                if value5.lowercased() == "swalot"
                            {
                                pokemonImage5.image = UIImage(named: "swalot")!
                            }
                if value5.lowercased() == "carvana"
                            {
                                pokemonImage5.image = UIImage(named: "carvana")!
                            }
                if value5.lowercased() == "sharpedo"
                            {
                                pokemonImage5.image = UIImage(named: "sharpedo")!
                            }
                if value5.lowercased() == "wailmer"
                            {
                                pokemonImage5.image = UIImage(named: "wailmer")!
                            }
                if value5.lowercased() == "wailord"
                            {
                                pokemonImage5.image = UIImage(named: "wailord")!
                            }
                if value5.lowercased() == "numel"
                            {
                                pokemonImage5.image = UIImage(named: "numel")!
                            }
                if value5.lowercased() == "camerupt"
                            {
                                pokemonImage5.image = UIImage(named: "camerupt")!
                            }
                if value5.lowercased() == "torkoal"
                            {
                                pokemonImage5.image = UIImage(named: "torkoal")!
                            }
                if value5.lowercased() == "spoink"
                            {
                                pokemonImage5.image = UIImage(named: "spoink")!
                            }
                if value5.lowercased() == "grumpig"
                            {
                                pokemonImage5.image = UIImage(named: "grumpig")!
                            }
                if value5.lowercased() == "spinda"
                            {
                                pokemonImage5.image = UIImage(named: "spinda")!
                            }
                if value5.lowercased() == "trapinch"
                            {
                                pokemonImage5.image = UIImage(named: "trapinch")!
                            }
                if value5.lowercased() == "vibrava"
                            {
                                pokemonImage5.image = UIImage(named: "vibrava")!
                            }
                if value5.lowercased() == "flygon"
                            {
                                pokemonImage5.image = UIImage(named: "flygon")!
                            }
                if value5.lowercased() == "cacnea"
                            {
                                pokemonImage5.image = UIImage(named: "cacnea")!
                            }
                if value5.lowercased() == "cacturne"
                            {
                                pokemonImage5.image = UIImage(named: "cacturne")!
                            }
                if value5.lowercased() == "swablu"
                            {
                                pokemonImage5.image = UIImage(named: "swablu")!
                            }
                if value5.lowercased() == "altaria"
                            {
                                pokemonImage5.image = UIImage(named: "altaria")!
                            }
                if value5.lowercased() == "zangoose"
                            {
                                pokemonImage5.image = UIImage(named: "zangoose")!
                            }
                if value5.lowercased() == "seviper"
                            {
                                pokemonImage5.image = UIImage(named: "seviper")!
                            }
                if value5.lowercased() == "lunatone"
                            {
                                pokemonImage5.image = UIImage(named: "lunatone")!
                            }
                if value5.lowercased() == "solrock"
                            {
                                pokemonImage5.image = UIImage(named: "solrock")!
                            }
                if value5.lowercased() == "barboach"
                            {
                                pokemonImage5.image = UIImage(named: "barboach")!
                            }
                if value5.lowercased() == "whiscash"
                            {
                                pokemonImage5.image = UIImage(named: "whiscash")!
                            }
                if value5.lowercased() == "corphish"
                            {
                                pokemonImage5.image = UIImage(named: "corphish")!
                            }
                if value5.lowercased() == "crawdaunt"
                            {
                                pokemonImage5.image = UIImage(named: "crawdaunt")!
                            }
                if value5.lowercased() == "baltoy"
                            {
                                pokemonImage5.image = UIImage(named: "baltoy")!
                            }
                if value5.lowercased() == "claydol"
                            {
                                pokemonImage5.image = UIImage(named: "claydol")!
                            }
                if value5.lowercased() == "lileep"
                            {
                                pokemonImage5.image = UIImage(named: "lileep")!
                            }
                if value5.lowercased() == "cradily"
                            {
                                pokemonImage5.image = UIImage(named: "cradily")!
                            }
                if value5.lowercased() == "anorith"
                            {
                                pokemonImage5.image = UIImage(named: "anorith")!
                            }
                if value5.lowercased() == "armaldo"
                            {
                                pokemonImage5.image = UIImage(named: "armaldo")!
                            }
                if value5.lowercased() == "feebas"
                            {
                                pokemonImage5.image = UIImage(named: "feebas")!
                            }
                if value5.lowercased() == "milotic"
                            {
                                pokemonImage5.image = UIImage(named: "milotic")!
                            }
                if value5.lowercased() == "castform"
                            {
                                pokemonImage5.image = UIImage(named: "castform")!
                            }
                if value5.lowercased() == "sunny castform"
                            {
                                pokemonImage5.image = UIImage(named: "sunny castform")!
                            }
                if value5.lowercased() == "snowy castform"
                            {
                                pokemonImage5.image = UIImage(named: "snowy castform")!
                            }
                if value5.lowercased() == "rainy castform"
                            {
                                pokemonImage5.image = UIImage(named: "rainy castform")!
                            }
                if value5.lowercased() == "kecleon"
                            {
                                pokemonImage5.image = UIImage(named: "kecleon")!
                            }
                if value5.lowercased() == "shuppet"
                            {
                                pokemonImage5.image = UIImage(named: "shuppet")!
                            }
                if value5.lowercased() == "banette"
                            {
                                pokemonImage5.image = UIImage(named: "banette")!
                            }
                if value5.lowercased() == "duskull"
                            {
                                pokemonImage5.image = UIImage(named: "duskull")!
                            }
                if value5.lowercased() == "dusclops"
                            {
                                pokemonImage5.image = UIImage(named: "dusclops")!
                            }
                if value5.lowercased() == "tropius"
                            {
                                pokemonImage5.image = UIImage(named: "tropius")!
                            }
                if value5.lowercased() == "chimecho"
                            {
                                pokemonImage5.image = UIImage(named: "chimecho")!
                            }
                if value5.lowercased() == "absol"
                            {
                                pokemonImage5.image = UIImage(named: "absol")!
                            }
                if value5.lowercased() == "wynaut"
                            {
                                pokemonImage5.image = UIImage(named: "wynaut")!
                            }
                if value5.lowercased() == "snorunt"
                            {
                                pokemonImage5.image = UIImage(named: "snorunt")!
                            }
                if value5.lowercased() == "glalie"
                            {
                                pokemonImage5.image = UIImage(named: "glalie")!
                            }
                if value5.lowercased() == "spheal"
                            {
                                pokemonImage5.image = UIImage(named: "spheal")!
                            }
                if value5.lowercased() == "sealeo"
                            {
                                pokemonImage5.image = UIImage(named: "sealeo")!
                            }
                if value5.lowercased() == "walrein"
                            {
                                pokemonImage5.image = UIImage(named: "walrein")!
                            }
                if value5.lowercased() == "clamperl"
                            {
                                pokemonImage5.image = UIImage(named: "clamperl")!
                            }
                if value5.lowercased() == "huntail"
                            {
                                pokemonImage5.image = UIImage(named: "huntail")!
                            }
                if value5.lowercased() == "gorebyss"
                            {
                                pokemonImage5.image = UIImage(named: "gorebyss")!
                            }
                if value5.lowercased() == "relicanth"
                            {
                                pokemonImage5.image = UIImage(named: "relicanth")!
                            }
                if value5.lowercased() == "luvdisc"
                            {
                                pokemonImage5.image = UIImage(named: "luvdisc")!
                            }
                if value5.lowercased() == "bagon"
                            {
                                pokemonImage5.image = UIImage(named: "bagon")!
                            }
                if value5.lowercased() == "shelgon"
                            {
                                pokemonImage5.image = UIImage(named: "shelgon")!
                            }
                if value5.lowercased() == "salamence"
                            {
                                pokemonImage5.image = UIImage(named: "salamence")!
                            }
                if value5.lowercased() == "beldum"
                            {
                                pokemonImage5.image = UIImage(named: "beldum")!
                            }
                if value5.lowercased() == "metang"
                            {
                                pokemonImage5.image = UIImage(named: "metang")!
                            }
                if value5.lowercased() == "metagross"
                            {
                                pokemonImage5.image = UIImage(named: "metagross")!
                            }
                if value5.lowercased() == "regirock"
                            {
                                pokemonImage5.image = UIImage(named: "regirock")!
                            }
                if value5.lowercased() == "regice"
                            {
                                pokemonImage5.image = UIImage(named: "regice")!
                            }
                if value5.lowercased() == "registeel"
                            {
                                pokemonImage5.image = UIImage(named: "registeel")!
                            }
                if value5.lowercased() == "latias"
                            {
                                pokemonImage5.image = UIImage(named: "latias")!
                            }
                if value5.lowercased() == "latios"
                            {
                                pokemonImage5.image = UIImage(named: "latios")!
                            }
                if value5.lowercased() == "kyogre"
                            {
                                pokemonImage5.image = UIImage(named: "kyogre")!
                            }
                if value5.lowercased() == "groudon"
                            {
                                pokemonImage5.image = UIImage(named: "groudon")!
                            }
                if value5.lowercased() == "rayquaza"
                            {
                                pokemonImage5.image = UIImage(named: "rayquaza")!
                            }
                if value5.lowercased() == "jirachi"
                            {
                                pokemonImage5.image = UIImage(named: "jirachi")!
                            }
                if value5.lowercased() == "deoxys"
                            {
                                pokemonImage5.image = UIImage(named: "deoxys")!
                            }
                if value5.lowercased() == "defence deoxys"
                            {
                                pokemonImage5.image = UIImage(named: "defence deoxys")!
                            }
                if value5.lowercased() == "attack deoxys"
                            {
                                pokemonImage5.image = UIImage(named: "attack deoxys")!
                            }
                if value5.lowercased() == "speed deoxys"
                            {
                                pokemonImage5.image = UIImage(named: "speed deoxys")!
                            }
                if value5.lowercased() == "turtwig"
                            {
                                pokemonImage5.image = UIImage(named: "turtwig")!
                            }
                if value5.lowercased() == "grotle"
                            {
                                pokemonImage5.image = UIImage(named: "grotle")!
                            }
                if value5.lowercased() == "torterra"
                            {
                                pokemonImage5.image = UIImage(named: "torterra")!
                            }
                if value5.lowercased() == "chimchar"
                            {
                                pokemonImage5.image = UIImage(named: "chimchar")!
                            }
                if value5.lowercased() == "monferno"
                            {
                                pokemonImage5.image = UIImage(named: "monferno")!
                            }
                if value5.lowercased() == "infernape"
                            {
                                pokemonImage5.image = UIImage(named: "infernape")!
                            }
                if value5.lowercased() == "piplup"
                            {
                                pokemonImage5.image = UIImage(named: "piplup")!
                            }
                if value5.lowercased() == "prinplup"
                            {
                                pokemonImage5.image = UIImage(named: "prinplup")!
                            }
                if value5.lowercased() == "empoleon"
                            {
                                pokemonImage5.image = UIImage(named: "empoleon")!
                            }
                if value5.lowercased() == "starly"
                            {
                                pokemonImage5.image = UIImage(named: "starly")!
                            }
                if value5.lowercased() == "staravia"
                            {
                                pokemonImage5.image = UIImage(named: "starvaria")!
                            }
                if value5.lowercased() == "staraptor"
                            {
                                pokemonImage5.image = UIImage(named: "staraptor")!
                            }
                if value5.lowercased() == "bidoof"
                            {
                                pokemonImage5.image = UIImage(named: "bidoof")!
                            }
                if value5.lowercased() == "bibarel"
                            {
                                pokemonImage5.image = UIImage(named: "bibarel")!
                            }
                if value5.lowercased() == "kricketot"
                            {
                                pokemonImage5.image = UIImage(named: "kricketot")!
                            }
                if value5.lowercased() == "kricketune"
                            {
                                pokemonImage5.image = UIImage(named: "kricketune")!
                            }
                if value5.lowercased() == "shinx"
                            {
                                pokemonImage5.image = UIImage(named: "shinx")!
                            }
                if value5.lowercased() == "luxio"
                       {
                           pokemonImage5.image = UIImage(named: "luxio")!
                       }
                if value5.lowercased() == "luxray"
                            {
                                pokemonImage5.image = UIImage(named: "luxray")!
                            }
                if value5.lowercased() == "budew"
                            {
                                pokemonImage5.image = UIImage(named: "budew")!
                            }
                if value5.lowercased() == "roserade"
                            {
                                pokemonImage5.image = UIImage(named: "roserade")!
                            }
                if value5.lowercased() == "cranidos"
                            {
                                pokemonImage5.image = UIImage(named: "cranidos")!
                            }
                if value5.lowercased() == "rampardos"
                            {
                                pokemonImage5.image = UIImage(named: "rampardos")!
                            }
                if value5.lowercased() == "shieldon"
                            {
                                pokemonImage5.image = UIImage(named: "shieldon")!
                            }
                if value5.lowercased() == "bastiodon"
                            {
                                pokemonImage5.image = UIImage(named: "bastiodon")!
                            }
                if value5.lowercased() == "plant burmy"
                            {
                                pokemonImage5.image = UIImage(named: "plant burmy")!
                            }
                if value5.lowercased() == "trash burmy"
                            {
                                pokemonImage5.image = UIImage(named: "trash burmy")!
                            }
                if value5.lowercased() == "sand burmy"
                            {
                                pokemonImage5.image = UIImage(named: "sand burmy")!
                            }
                if value5.lowercased() == "plant wormadam"
                            {
                                pokemonImage5.image = UIImage(named: "plant wormadam")!
                            }
                if value5.lowercased() == "trash wormadam"
                            {
                                pokemonImage5.image = UIImage(named: "trash wormadam")!
                            }
                if value5.lowercased() == "sand wormadam"
                            {
                                pokemonImage5.image = UIImage(named: "sand wormadam")!
                            }
                if value5.lowercased() == "mothim"
                            {
                                pokemonImage5.image = UIImage(named: "mothim")!
                            }
                if value5.lowercased() == "combee"
                            {
                                pokemonImage5.image = UIImage(named: "combee")!
                            }
                if value5.lowercased() == "vespiquen"
                            {
                                pokemonImage5.image = UIImage(named: "vespiquen")!
                            }
                if value5.lowercased() == "pachirisu"
                            {
                                pokemonImage5.image = UIImage(named: "pachirisu")!
                            }
                if value5.lowercased() == "buizel"
                            {
                                pokemonImage5.image = UIImage(named: "buizel")!
                            }
                if value5.lowercased() == "floatzel"
                            {
                                pokemonImage5.image = UIImage(named: "floatzel")!
                            }
                if value5.lowercased() == "cherubi"
                            {
                                pokemonImage5.image = UIImage(named: "cherubi")!
                            }
                if value5.lowercased() == "overcast cherrim"
                            {
                                pokemonImage5.image = UIImage(named: "overcast cherrim")!
                            }
                if value5.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage5.image = UIImage(named: "sunshine cherrim")!
                            }
                if value5.lowercased() == "east shellos"
                            {
                                pokemonImage5.image = UIImage(named: "east shellos")!
                            }
                if value5.lowercased() == "west shellos"
                            {
                                pokemonImage5.image = UIImage(named: "west shellos")!
                            }
                if value5.lowercased() == "east gastrodon"
                            {
                                pokemonImage5.image = UIImage(named: "east gastrodon")!
                            }
                if value5.lowercased() == "west gastrodon"
                            {
                                pokemonImage5.image = UIImage(named: "west gastrodon")!
                            }
                if value5.lowercased() == "ambipom"
                            {
                                pokemonImage5.image = UIImage(named: "ambipom")!
                            }
                if value5.lowercased() == "drifloon"
                            {
                                pokemonImage5.image = UIImage(named: "drifloon")!
                            }
                if value5.lowercased() == "drifblim"
                            {
                                pokemonImage5.image = UIImage(named: "drifblim")!
                            }
                if value5.lowercased() == "buneary"
                            {
                                pokemonImage5.image = UIImage(named: "buneary")!
                            }
                if value5.lowercased() == "lopunny"
                            {
                                pokemonImage5.image = UIImage(named: "lopunny")!
                            }
                if value5.lowercased() == "mismagius"
                            {
                                pokemonImage5.image = UIImage(named: "mismagius")!
                            }
                if value5.lowercased() == "honchkrow"
                            {
                                pokemonImage5.image = UIImage(named: "honchkrow")!
                            }
                if value5.lowercased() == "glameow"
                            {
                                pokemonImage5.image = UIImage(named: "glameow")!
                            }
                if value5.lowercased() == "purugly"
                            {
                                pokemonImage5.image = UIImage(named: "purugly")!
                            }
                if value5.lowercased() == "chingling"
                            {
                                pokemonImage5.image = UIImage(named: "chingling")!
                            }
                if value5.lowercased() == "stunky"
                            {
                                pokemonImage5.image = UIImage(named: "stunky")!
                            }
                if value5.lowercased() == "skuntank"
                            {
                                pokemonImage5.image = UIImage(named: "skuntank")!
                            }
                if value5.lowercased() == "bronzor"
                            {
                                pokemonImage5.image = UIImage(named: "bronzor")!
                            }
                if value5.lowercased() == "bronzong"
                            {
                                pokemonImage5.image = UIImage(named: "bronzong")!
                            }
                if value5.lowercased() == "bonsly"
                            {
                                pokemonImage5.image = UIImage(named: "bonsly")!
                            }
                if value5.lowercased() == "mime jr."
                            {
                                pokemonImage5.image = UIImage(named: "mime jr.")!
                            }
                if value5.lowercased() == "happiny"
                            {
                                pokemonImage5.image = UIImage(named: "happiny")!
                            }
                if value5.lowercased() == "chatot"
                            {
                                pokemonImage5.image = UIImage(named: "chatot")!
                            }
                if value5.lowercased() == "spiritomb"
                            {
                                pokemonImage5.image = UIImage(named: "spiritomb")!
                            }
                if value5.lowercased() == "gible"
                            {
                                pokemonImage5.image = UIImage(named: "gible")!
                            }
                if value5.lowercased() == "gabite"
                            {
                                pokemonImage5.image = UIImage(named: "gabite")!
                            }
                if value5.lowercased() == "garchomp"
                            {
                                pokemonImage5.image = UIImage(named: "garchomp")!
                            }
                if value5.lowercased() == "munchlax"
                            {
                                pokemonImage5.image = UIImage(named: "munchlax")!
                            }
                if value5.lowercased() == "riolu"
                            {
                                pokemonImage5.image = UIImage(named: "riolu")!
                            }
                if value5.lowercased() == "lucario"
                            {
                                pokemonImage5.image = UIImage(named: "lucario")!
                            }
                if value5.lowercased() == "hippopotas"
                            {
                                pokemonImage5.image = UIImage(named: "hippopotas")!
                            }
                if value5.lowercased() == "hippowdon"
                            {
                                pokemonImage5.image = UIImage(named: "hippowdon")!
                            }
                if value5.lowercased() == "skorupi"
                            {
                                pokemonImage5.image = UIImage(named: "skorupi")!
                            }
                if value5.lowercased() == "drapion"
                            {
                                pokemonImage5.image = UIImage(named: "drapion")!
                            }
                if value5.lowercased() == "croagunk"
                            {
                                pokemonImage5.image = UIImage(named: "croagunk")!
                            }
                if value5.lowercased() == "toxicroak"
                            {
                                pokemonImage5.image = UIImage(named: "toxicroak")!
                            }
                if value5.lowercased() == "carnivine"
                            {
                                pokemonImage5.image = UIImage(named: "carnivine")!
                            }
                if value5.lowercased() == "finneon"
                            {
                                pokemonImage5.image = UIImage(named: "finneon")!
                            }
                if value5.lowercased() == "lumineon"
                            {
                                pokemonImage5.image = UIImage(named: "lumineon")!
                            }
                if value5.lowercased() == "mantyke"
                            {
                                pokemonImage5.image = UIImage(named: "mantyke")!
                            }
                if value5.lowercased() == "snover"
                            {
                                pokemonImage5.image = UIImage(named: "snover")!
                            }
                if value5.lowercased() == "Abomasnow"
                            {
                                pokemonImage5.image = UIImage(named: "abomasnow")!
                            }
                if value5.lowercased() == "weavile"
                            {
                                pokemonImage5.image = UIImage(named: "weavile")!
                            }
                if value5.lowercased() == "magnezone"
                            {
                                pokemonImage5.image = UIImage(named: "magnezone")!
                            }
                if value5.lowercased() == "lickilicky"
                            {
                                pokemonImage5.image = UIImage(named: "lickilicky")!
                            }
                if value5.lowercased() == "rhyperior"
                            {
                                pokemonImage5.image = UIImage(named: "rhyperior")!
                            }
                if value5.lowercased() == "tangrowth"
                            {
                                pokemonImage5.image = UIImage(named: "tangrowth")!
                            }
                if value5.lowercased() == "electivire"
                            {
                                pokemonImage5.image = UIImage(named: "electivire")!
                            }
                if value5.lowercased() == "magmortar"
                            {
                                pokemonImage5.image = UIImage(named: "magmortar")!
                            }
                if value5.lowercased() == "togekiss"
                            {
                                pokemonImage5.image = UIImage(named: "togekiss")!
                            }
                if value5.lowercased() == "yanmega"
                            {
                                pokemonImage5.image = UIImage(named: "yanmega")!
                            }
                if value5.lowercased() == "leafeon"
                            {
                                pokemonImage5.image = UIImage(named: "leafeon")!
                            }
                if value5.lowercased() == "glaceon"
                            {
                                pokemonImage5.image = UIImage(named: "glaceon")!
                            }
                if value5.lowercased() == "gliscor"
                            {
                                pokemonImage5.image = UIImage(named: "gliscor")!
                            }
                if value5.lowercased() == "mamoswine"
                            {
                                pokemonImage5.image = UIImage(named: "mamoswine")!
                            }
                if value5.lowercased() == "porygon-z"
                            {
                                pokemonImage5.image = UIImage(named: "porygon-z")!
                            }
                if value5.lowercased() == "gallade"
                            {
                                pokemonImage5.image = UIImage(named: "gallade")!
                            }
                if value5.lowercased() == "probopass"
                            {
                                pokemonImage5.image = UIImage(named: "probopass")!
                            }
                if value5.lowercased() == "dusknoir"
                            {
                                pokemonImage5.image = UIImage(named: "dusknoir")!
                            }
                if value5.lowercased() == "froslass"
                            {
                                pokemonImage5.image = UIImage(named: "froslass")!
                            }
                if value5.lowercased() == "uxie"
                            {
                                pokemonImage5.image = UIImage(named: "uxie")!
                            }
                if value5.lowercased() == "azelf"
                            {
                                pokemonImage5.image = UIImage(named: "azelf")!
                            }
                if value5.lowercased() == "mesprit"
                            {
                                pokemonImage5.image = UIImage(named: "mesprit")!
                            }
                if value5.lowercased() == "dialga"
                            {
                                pokemonImage5.image = UIImage(named: "dialga")!
                            }
                if value5.lowercased() == "palkia"
                            {
                                pokemonImage5.image = UIImage(named: "palkia")!
                            }
                if value5.lowercased() == "heatran"
                            {
                                pokemonImage5.image = UIImage(named: "heatran")!
                            }
                if value5.lowercased() == "regigigas"
                            {
                                pokemonImage5.image = UIImage(named: "regigigas")!
                            }
                if value5.lowercased() == "altered giratina"
                            {
                                pokemonImage5.image = UIImage(named: "altered giratina")!
                            }
                if value5.lowercased() == "origin giratina"
                            {
                                pokemonImage5.image = UIImage(named: "origin giratina")!
                            }
                if value5.lowercased() == "cresselia"
                            {
                                pokemonImage5.image = UIImage(named: "cresselia")!
                            }
                if value5.lowercased() == "phione"
                            {
                                pokemonImage5.image = UIImage(named: "phione")!
                            }
                if value5.lowercased() == "manaphy"
                            {
                                pokemonImage5.image = UIImage(named: "manaphy")!
                            }
                if value5.lowercased() == "darkrai"
                            {
                                pokemonImage5.image = UIImage(named: "darkrai")!
                            }
                if value5.lowercased() == "shaymin"
                            {
                                pokemonImage5.image = UIImage(named: "shaymin")!
                            }
                if value5.lowercased() == "shaymin sky"
                            {
                                pokemonImage5.image = UIImage(named: "shaymin sky")!
                            }
                if value5.lowercased() == "arceus"
                            {
                                pokemonImage5.image = UIImage(named: "arceus")!
                            }


                if value6.lowercased() == "bulbasaur"
                            {
                                pokemonImage6.image = UIImage(named: "bulbasaur")!
                            }
                if value6.lowercased() == "ivysaur"
                            {
                                pokemonImage6.image = UIImage(named: "ivysaur")!
                            }
                if value6.lowercased() == "venusaur"
                            {
                                pokemonImage6.image = UIImage(named: "venusaur")!
                            }
                if value6.lowercased() == "charmander"
                            {
                                pokemonImage6.image = UIImage(named: "charmander")!
                            }
                if value6.lowercased() == "charmeleon"
                            {
                                pokemonImage6.image = UIImage(named: "charmeleon")!
                            }
                if value6.lowercased() == "charizard"
                            {
                                pokemonImage6.image = UIImage(named: "charizard")!
                            }
                if value6.lowercased() == "squirtle"
                            {
                                pokemonImage6.image = UIImage(named: "squirtle")!
                            }
                if value6.lowercased() == "wartortle"
                            {
                                pokemonImage6.image = UIImage(named: "wartortle")!
                            }
                if value6.lowercased() == "blastoise"
                            {
                                pokemonImage6.image = UIImage(named: "blastoise")!
                            }
                if value6.lowercased() == "caterpie"
                            {
                                pokemonImage6.image = UIImage(named: "caterpie")!
                            }
                if value6.lowercased() == "metapod"
                            {
                                pokemonImage6.image = UIImage(named: "metapod")!
                            }
                if value6.lowercased() == "butterfree"
                            {
                                pokemonImage6.image = UIImage(named: "butterfree")!
                            }
                if value6.lowercased() == "weedle"
                            {
                                pokemonImage6.image = UIImage(named: "weedle")!
                            }
                if value6.lowercased() == "kakuna"
                            {
                                pokemonImage6.image = UIImage(named: "kakuna")!
                            }
                if value6.lowercased() == "beedrill"
                            {
                                pokemonImage6.image = UIImage(named: "beedrill")!
                            }
                if value6.lowercased() == "pidgey"
                            {
                                pokemonImage6.image = UIImage(named: "pidgey")!
                            }
                if value6.lowercased() == "pidgeotto"
                            {
                                pokemonImage6.image = UIImage(named: "pidgeotto")!
                            }
                if value6.lowercased() == "pidgeot"
                            {
                                pokemonImage6.image = UIImage(named: "pidgeot")!
                            }
                if value6.lowercased() == "rattata"
                            {
                                pokemonImage6.image = UIImage(named: "rattata")!
                            }
                if value6.lowercased() == "raticate"
                            {
                                pokemonImage6.image = UIImage(named: "raticate")!
                            }
                if value6.lowercased() == "alolan rattata"
                            {
                                pokemonImage6.image = UIImage(named: "alolan rattata")!
                            }
                if value6.lowercased() == "alolan raticate"
                            {
                                pokemonImage6.image = UIImage(named: "alolan raticate")!
                            }
                if value6.lowercased() == "spearow"
                            {
                                pokemonImage6.image = UIImage(named: "spearow")!
                            }
                if value6.lowercased() == "fearow"
                            {
                                pokemonImage6.image = UIImage(named: "fearow")!
                            }
                if value6.lowercased() == "ekans"
                            {
                                pokemonImage6.image = UIImage(named: "ekans")!
                            }
                if value6.lowercased() == "arbok"
                            {
                                pokemonImage6.image = UIImage(named: "arbok")!
                            }
                if value6.lowercased() == "pikachu"
                            {
                                pokemonImage6.image = UIImage(named: "pikachu")!
                            }
                if value6.lowercased() == "raichu"
                            {
                                pokemonImage6.image = UIImage(named: "raichu")!
                            }
                if value6.lowercased() == "alolan raichu"
                            {
                                pokemonImage6.image = UIImage(named: "alolan raichu")!
                            }
                if value6.lowercased() == "sandshrew"
                            {
                                pokemonImage6.image = UIImage(named: "sandshrew")!
                            }
                if value6.lowercased() == "sandslash"
                            {
                                pokemonImage6.image = UIImage(named: "sandslash")!
                            }
                if value6.lowercased() == "alolan sandshrew"
                            {
                                pokemonImage6.image = UIImage(named: "alolan sandshrew")!
                            }
                if value6.lowercased() == "alolan sandslash"
                            {
                                pokemonImage6.image = UIImage(named: "alolan sandslash")!
                            }
                if value6.lowercased() == "nidoran f"
                            {
                                pokemonImage6.image = UIImage(named: "nidoran f")!
                            }
                if value6.lowercased() == "nidorina"
                            {
                                pokemonImage6.image = UIImage(named: "nidorina")!
                            }
                if value6.lowercased() == "nidoqueen"
                            {
                                pokemonImage6.image = UIImage(named: "nidoqueen")!
                            }
                if value6.lowercased() == "nidoran m"
                            {
                                pokemonImage6.image = UIImage(named: "nidoran m")!
                            }
                if value6.lowercased() == "nidorino"
                            {
                                pokemonImage6.image = UIImage(named: "nidorino")!
                            }
                if value6.lowercased() == "nidoking"
                            {
                                pokemonImage6.image = UIImage(named: "nidoking")!
                            }
                if value6.lowercased() == "clefairy"
                            {
                                pokemonImage6.image = UIImage(named: "clefairy")!
                            }
                if value6.lowercased() == "clefable"
                            {
                                pokemonImage6.image = UIImage(named: "clefable")!
                            }
                if value6.lowercased() == "vulpix"
                            {
                                pokemonImage6.image = UIImage(named: "vulpix")!
                            }
                if value6.lowercased() == "alolan vulpix"
                            {
                                pokemonImage6.image = UIImage(named: "alolan vulpix")!
                            }
                if value6.lowercased() == "ninetales"
                            {
                                pokemonImage6.image = UIImage(named: "ninetales")!
                            }
                if value6.lowercased() == "alolan ninetales"
                            {
                                pokemonImage6.image = UIImage(named: "alolan ninetales")!
                            }
                if value6.lowercased() == "jigglypuff"
                            {
                                pokemonImage6.image = UIImage(named: "jigglypuff")!
                            }
                if value6.lowercased() == "wigglytuff"
                            {
                                pokemonImage6.image = UIImage(named: "wigglytuff")!
                            }
                if value6.lowercased() == "zubat"
                            {
                                pokemonImage6.image = UIImage(named: "zubat")!
                            }
                if value6.lowercased() == "golbat"
                            {
                                pokemonImage6.image = UIImage(named: "golbat")!
                            }
                if value6.lowercased() == "oddish"
                            {
                                pokemonImage6.image = UIImage(named: "oddish")!
                            }
                if value6.lowercased() == "gloom"
                            {
                                pokemonImage6.image = UIImage(named: "gloom")!
                            }
                if value6.lowercased() == "vileplume"
                            {
                                pokemonImage6.image = UIImage(named: "vileplume")!
                            }
                if value6.lowercased() == "paras"
                            {
                                pokemonImage6.image = UIImage(named: "paras")!
                            }
                if value6.lowercased() == "parasect"
                            {
                                pokemonImage6.image = UIImage(named: "parasect")!
                            }
                if value6.lowercased() == "venonat"
                            {
                                pokemonImage6.image = UIImage(named: "venonat")!
                            }
                if value6.lowercased() == "venomoth"
                            {
                                pokemonImage6.image = UIImage(named: "venomoth")!
                            }
                if value6.lowercased() == "diglett"
                            {
                                pokemonImage6.image = UIImage(named: "diglett")!
                            }
                if value6.lowercased() == "alolan diglett"
                            {
                                pokemonImage6.image = UIImage(named: "alolan diglett")!
                            }
                if value6.lowercased() == "dugtrio"
                            {
                                pokemonImage6.image = UIImage(named: "dugtrio")!
                            }
                if value6.lowercased() == "alolan dugtrio"
                            {
                                pokemonImage6.image = UIImage(named: "alolan dugtrio")!
                            }
                if value6.lowercased() == "meowth"
                            {
                                pokemonImage6.image = UIImage(named: "meowth")!
                            }
                if value6.lowercased() == "alolan meowth"
                            {
                                pokemonImage6.image = UIImage(named: "alolan meowth")!
                            }
                if value6.lowercased() == "persian"
                            {
                                pokemonImage6.image = UIImage(named: "persian")!
                            }
                if value6.lowercased() == "alolan persian"
                            {
                                pokemonImage6.image = UIImage(named: "alolan persian")!
                            }

                if value6.lowercased() == "psyduck"
                            {
                                pokemonImage6.image = UIImage(named: "psyduck")!
                            }
                if value6.lowercased() == "golduck"
                            {
                                pokemonImage6.image = UIImage(named: "golduck")!
                            }
                if value6.lowercased() == "mankey"
                            {
                                pokemonImage6.image = UIImage(named: "mankey")!
                            }
                if value6.lowercased() == "primeape"
                            {
                                pokemonImage6.image = UIImage(named: "primeape")!
                            }
                if value6.lowercased() == "growlithe"
                            {
                                pokemonImage6.image = UIImage(named: "growlithe")!
                            }
                if value6.lowercased() == "arcanine"
                            {
                                pokemonImage6.image = UIImage(named: "arcanine")!
                            }
                if value6.lowercased() == "poliwag"
                            {
                                pokemonImage6.image = UIImage(named: "poliwag")!
                            }
                if value6.lowercased() == "poliwhirl"
                            {
                                pokemonImage6.image = UIImage(named: "poliwhirl")!
                            }
                if value6.lowercased() == "poliwrath"
                            {
                                pokemonImage6.image = UIImage(named: "poliwrath")!
                            }
                if value6.lowercased() == "abra"
                            {
                                pokemonImage6.image = UIImage(named: "abra")!
                            }
                if value6.lowercased() == "kadabra"
                            {
                                pokemonImage6.image = UIImage(named: "kadabra")!
                            }
                if value6.lowercased() == "alakazam"
                            {
                                pokemonImage6.image = UIImage(named: "alakazam")!
                            }
                if value6.lowercased() == "machop"
                            {
                                pokemonImage6.image = UIImage(named: "machop")!
                            }
                if value6.lowercased() == "machoke"
                            {
                                pokemonImage6.image = UIImage(named: "machoke")!
                            }
                if value6.lowercased() == "machamp"
                            {
                                pokemonImage6.image = UIImage(named: "machamp")!
                            }
                if value6.lowercased() == "bellsprout"
                            {
                                pokemonImage6.image = UIImage(named: "bellsprout")!
                            }
                if value6.lowercased() == "weepinbell"
                            {
                                pokemonImage6.image = UIImage(named: "weepinbell")!
                            }
                if value6.lowercased() == "victreebel"
                            {
                                pokemonImage6.image = UIImage(named: "victreebel")!
                            }
                if value6.lowercased() == "tentacool"
                            {
                                pokemonImage6.image = UIImage(named: "tentacool")!
                            }
                if value6.lowercased() == "tentacruel"
                            {
                                pokemonImage6.image = UIImage(named: "tentacruel")!
                            }
                if value6.lowercased() == "geodude"
                            {
                                pokemonImage6.image = UIImage(named: "geodude")!
                            }
                if value6.lowercased() == "alolan geodude"
                            {
                                pokemonImage6.image = UIImage(named: "alolan geodude")!
                            }
                if value6.lowercased() == "graveler"
                            {
                                pokemonImage6.image = UIImage(named: "graveler")!
                            }
                if value6.lowercased() == "alolan graveler"
                            {
                                pokemonImage6.image = UIImage(named: "alolan graveler")!
                            }
                if value6.lowercased() == "golem"
                            {
                                pokemonImage6.image = UIImage(named: "golem")!
                            }
                if value6.lowercased() == "alolan golem"
                            {
                                pokemonImage6.image = UIImage(named: "alolan golem")!
                            }
                if value6.lowercased() == "ponyta"
                            {
                                pokemonImage6.image = UIImage(named: "ponyta")!
                            }
                if value6.lowercased() == "rapidash"
                            {
                                pokemonImage6.image = UIImage(named: "rapidash")!
                            }
                if value6.lowercased() == "slowpoke"
                            {
                                pokemonImage6.image = UIImage(named: "slowpoke")!
                            }
                if value6.lowercased() == "slowbro"
                            {
                                pokemonImage6.image = UIImage(named: "slowbro")!
                            }
                if value6.lowercased() == "magnemite"
                            {
                                pokemonImage6.image = UIImage(named: "magnemite")!
                            }
                if value6.lowercased() == "magneton"
                            {
                                pokemonImage6.image = UIImage(named: "magneton")!
                            }
                if value6.lowercased() == "farfetch’d"
                            {
                                pokemonImage6.image = UIImage(named: "farfetch’d")!
                            }
                if value6.lowercased() == "doduo"
                            {
                                pokemonImage6.image = UIImage(named: "doduo")!
                            }
                if value6.lowercased() == "dodrio"
                            {
                                pokemonImage6.image = UIImage(named: "dodrio")!
                            }
                if value6.lowercased() == "seel"
                            {
                                pokemonImage6.image = UIImage(named: "seel")!
                            }
                if value6.lowercased() == "dewgong"
                            {
                                pokemonImage6.image = UIImage(named: "dewgong")!
                            }
                if value6.lowercased() == "grimer"
                            {
                                pokemonImage6.image = UIImage(named: "grimer")!
                            }
                if value6.lowercased() == "alolan grimer"
                            {
                                pokemonImage6.image = UIImage(named: "alolan grimer")!
                            }
                if value6.lowercased() == "muk"
                            {
                                pokemonImage6.image = UIImage(named: "muk")!
                            }
                if value6.lowercased() == "alolan muk"
                            {
                                pokemonImage6.image = UIImage(named: "alolan muk")!
                            }
                if value6.lowercased() == "shellder"
                            {
                                pokemonImage6.image = UIImage(named: "shellder")!
                            }
                if value6.lowercased() == "cloyster"
                            {
                                pokemonImage6.image = UIImage(named: "cloyster")!
                            }
                if value6.lowercased() == "gastly"
                            {
                                pokemonImage6.image = UIImage(named: "gastly")!
                            }
                if value6.lowercased() == "haunter"
                            {
                                pokemonImage6.image = UIImage(named: "haunter")!
                            }
                if value6.lowercased() == "gengar"
                            {
                                pokemonImage6.image = UIImage(named: "gengar")!
                            }
                if value6.lowercased() == "onix"
                            {
                                pokemonImage6.image = UIImage(named: "onix")!
                            }
                if value6.lowercased() == "drowzee"
                            {
                                pokemonImage6.image = UIImage(named: "drowzee")!
                            }
                if value6.lowercased() == "hypno"
                            {
                                pokemonImage6.image = UIImage(named: "hypno")!
                            }
                if value6.lowercased() == "krabby"
                            {
                                pokemonImage6.image = UIImage(named: "krabby")!
                            }
                if value6.lowercased() == "kingler"
                            {
                                pokemonImage6.image = UIImage(named: "kingler")!
                            }
                if value6.lowercased() == "voltorb"
                            {
                                pokemonImage6.image = UIImage(named: "voltorb")!
                            }
                if value6.lowercased() == "electrode"
                            {
                                pokemonImage6.image = UIImage(named: "electrode")!
                            }
                if value6.lowercased() == "exeggcute"
                            {
                                pokemonImage6.image = UIImage(named: "exeggcute")!
                            }
                if value6.lowercased() == "exeggutor"
                            {
                                pokemonImage6.image = UIImage(named: "exeggutor")!
                            }
                if value6.lowercased() == "alolan exeggutor"
                            {
                                pokemonImage6.image = UIImage(named: "alolan exeggutor")!
                            }
                if value6.lowercased() == "cubone"
                            {
                                pokemonImage6.image = UIImage(named: "cubone")!
                            }
                if value6.lowercased() == "marowak"
                            {
                                pokemonImage6.image = UIImage(named: "marowak")!
                            }
                if value6.lowercased() == "alolan marowak"
                            {
                                pokemonImage6.image = UIImage(named: "alolan marowak")!
                            }
                if value6.lowercased() == "hitmonlee"
                            {
                                pokemonImage6.image = UIImage(named: "hitmonlee")!
                            }
                if value6.lowercased() == "hitmonchan"
                            {
                                pokemonImage6.image = UIImage(named: "hitmonchan")!
                            }
                if value6.lowercased() == "lickitung"
                            {
                                pokemonImage6.image = UIImage(named: "lickitung")!
                            }
                if value6.lowercased() == "koffing"
                            {
                                pokemonImage6.image = UIImage(named: "koffing")!
                            }
                if value6.lowercased() == "weezing"
                            {
                                pokemonImage6.image = UIImage(named: "weezing")!
                            }
                if value6.lowercased() == "rhyhorn"
                            {
                                pokemonImage6.image = UIImage(named: "rhyhorn")!
                            }
                if value6.lowercased() == "rhydon"
                            {
                                pokemonImage6.image = UIImage(named: "rhydon")!
                            }
                if value6.lowercased() == "chansey"
                            {
                                pokemonImage6.image = UIImage(named: "chansey")!
                            }
                if value6.lowercased() == "tangela"
                            {
                                pokemonImage6.image = UIImage(named: "tangela")!
                            }
                if value6.lowercased() == "kangaskhan"
                            {
                                pokemonImage6.image = UIImage(named: "kangaskhan")!
                            }
                if value6.lowercased() == "horsea"
                            {
                                pokemonImage6.image = UIImage(named: "horsea")!
                            }
                if value6.lowercased() == "seadra"
                            {
                                pokemonImage6.image = UIImage(named: "seadra")!
                            }
                if value6.lowercased() == "goldeen"
                            {
                                pokemonImage6.image = UIImage(named: "goldeen")!
                            }
                if value6.lowercased() == "seaking"
                            {
                                pokemonImage6.image = UIImage(named: "seaking")!
                            }
                if value6.lowercased() == "staryu"
                            {
                                pokemonImage6.image = UIImage(named: "staryu")!
                            }
                if value6.lowercased() == "starmie"
                            {
                                pokemonImage6.image = UIImage(named: "starmie")!
                            }
                if value6.lowercased() == "mr.mime"
                            {
                                pokemonImage6.image = UIImage(named: "mr.mime")!
                            }
                if value6.lowercased() == "scyther"
                            {
                                pokemonImage6.image = UIImage(named: "scyther")!
                            }
                if value6.lowercased() == "jynx"
                            {
                                pokemonImage6.image = UIImage(named: "jynx")!
                            }
                if value6.lowercased() == "electabuzz"
                            {
                                pokemonImage6.image = UIImage(named: "electabuzz")!
                            }
                if value6.lowercased() == "magmar"
                            {
                                pokemonImage6.image = UIImage(named: "magmar")!
                            }
                if value6.lowercased() == "pinsir"
                            {
                                pokemonImage6.image = UIImage(named: "pinsir")!
                            }
                if value6.lowercased() == "tauros"
                            {
                                pokemonImage6.image = UIImage(named: "tauros")!
                            }
                if value6.lowercased() == "magikarp"
                            {
                                pokemonImage6.image = UIImage(named: "magikarp")!
                            }
                if value6.lowercased() == "gyarados"
                            {
                                pokemonImage6.image = UIImage(named: "gyarados")!
                            }
                if value6.lowercased() == "lapras"
                            {
                                pokemonImage6.image = UIImage(named: "lapras")!
                            }
                if value6.lowercased() == "ditto"
                            {
                                pokemonImage6.image = UIImage(named: "ditto")!
                            }
                if value6.lowercased() == "eevee"
                            {
                                pokemonImage6.image = UIImage(named: "eevee")!
                            }
                if value6.lowercased() == "vaporeon"
                            {
                                pokemonImage6.image = UIImage(named: "vaporeon")!
                            }
                if value6.lowercased() == "jolteon"
                            {
                                pokemonImage6.image = UIImage(named: "jolteon")!
                            }
                if value6.lowercased() == "flareon"
                            {
                                pokemonImage6.image = UIImage(named: "flareon")!
                            }
                if value6.lowercased() == "porygon"
                            {
                                pokemonImage6.image = UIImage(named: "porygon")!
                            }
                if value6.lowercased() == "omanyte"
                            {
                                pokemonImage6.image = UIImage(named: "omanyte")!
                            }
                if value6.lowercased() == "omastar"
                            {
                                pokemonImage6.image = UIImage(named: "omastar")!
                            }
                if value6.lowercased() == "kabuto"
                            {
                                pokemonImage6.image = UIImage(named: "kabuto")!
                            }
                if value6.lowercased() == "kabutops"
                            {
                                pokemonImage6.image = UIImage(named: "kabutops")!
                            }
                if value6.lowercased() == "aerodactyl"
                            {
                                pokemonImage6.image = UIImage(named: "aerodactyl")!
                            }
                if value6.lowercased() == "snorlax"
                            {
                                pokemonImage6.image = UIImage(named: "snorlax")!
                            }
                if value6.lowercased() == "articuno"
                            {
                                pokemonImage6.image = UIImage(named: "articuno")!
                            }
                if value6.lowercased() == "zapdos"
                            {
                                pokemonImage6.image = UIImage(named: "zapdos")!
                            }
                if value6.lowercased() == "moltres"
                            {
                                pokemonImage6.image = UIImage(named: "moltres")!
                            }
                if value6.lowercased() == "dratini"
                            {
                                pokemonImage6.image = UIImage(named: "dratini")!
                            }
                if value6.lowercased() == "dragonair"
                            {
                                pokemonImage6.image = UIImage(named: "dragonair")!
                            }
                if value6.lowercased() == "mewtwo"
                            {
                                pokemonImage6.image = UIImage(named: "mewtwo")!
                            }
                if value6.lowercased() == "mew"
                            {
                                pokemonImage6.image = UIImage(named: "mew")!
                            }

                // Gen Two

                if value6.lowercased() == "chikorita"
                            {
                                pokemonImage6.image = UIImage(named: "chikorita")!
                            }
                if value6.lowercased() == "bayleef"
                            {
                                pokemonImage6.image = UIImage(named: "bayleef")!
                            }
                if value6.lowercased() == "meganium"
                            {
                                pokemonImage6.image = UIImage(named: "meganium")!
                            }
                if value6.lowercased() == "cyndaquil"
                            {
                                pokemonImage6.image = UIImage(named: "cyndaquil")!
                            }
                if value6.lowercased() == "quilava"
                            {
                                pokemonImage6.image = UIImage(named: "quilava")!
                            }
                if value6.lowercased() == "typhlosion"
                            {
                                pokemonImage6.image = UIImage(named: "typhlosion")!
                            }
                if value6.lowercased() == "totodile"
                            {
                                pokemonImage6.image = UIImage(named: "totodile")!
                            }
                if value6.lowercased() == "croconaw"
                            {
                                pokemonImage6.image = UIImage(named: "croconaw")!
                            }
                if value6.lowercased() == "feraligatr"
                            {
                                pokemonImage6.image = UIImage(named: "feraligatr")!
                            }
                if value6.lowercased() == "sentret"
                            {
                                pokemonImage6.image = UIImage(named: "sentret")!
                            }
                if value6.lowercased() == "furret"
                            {
                                pokemonImage6.image = UIImage(named: "furret")!
                            }
                if value6.lowercased() == "hoothoot"
                            {
                                pokemonImage6.image = UIImage(named: "hoothoot")!
                            }
                if value6.lowercased() == "noctowl"
                            {
                                pokemonImage6.image = UIImage(named: "noctowl")!
                            }
                if value6.lowercased() == "ledyba"
                            {
                                pokemonImage6.image = UIImage(named: "ledyba")!
                            }
                if value6.lowercased() == "ledian"
                            {
                                pokemonImage6.image = UIImage(named: "ledian")!
                            }
                if value6.lowercased() == "spinarak"
                            {
                                pokemonImage6.image = UIImage(named: "spinarak")!
                            }
                if value6.lowercased() == "ariados"
                            {
                                pokemonImage6.image = UIImage(named: "ariados")!
                            }
                if value6.lowercased() == "crobat"
                            {
                                pokemonImage6.image = UIImage(named: "crobat")!
                            }
                if value6.lowercased() == "chinchou"
                            {
                                pokemonImage6.image = UIImage(named: "chinchou")!
                            }
                if value6.lowercased() == "lanturn"
                            {
                                pokemonImage6.image = UIImage(named: "lanturn")!
                            }
                if value6.lowercased() == "pichu"
                            {
                                pokemonImage6.image = UIImage(named: "pichu")!
                            }
                 if value6.lowercased() == "cleffa"
                            {
                                pokemonImage6.image = UIImage(named: "cleffa")!
                            }
                if value6.lowercased() == "igglybuff"
                            {
                                pokemonImage6.image = UIImage(named: "igglybuff")!
                            }
                if value6.lowercased() == "togepi"
                            {
                                pokemonImage6.image = UIImage(named: "togepi")!
                            }
                if value6.lowercased() == "togetic"
                            {
                                pokemonImage6.image = UIImage(named: "togetic")!
                            }
                if value6.lowercased() == "natu"
                            {
                                pokemonImage6.image = UIImage(named: "natu")!
                            }
                if value6.lowercased() == "xatu"
                            {
                                pokemonImage6.image = UIImage(named: "xatu")!
                            }
                if value6.lowercased() == "mareep"
                            {
                                pokemonImage6.image = UIImage(named: "mareep")!
                            }
                if value6.lowercased() == "flaaffy"
                            {
                                pokemonImage6.image = UIImage(named: "flaaffy")!
                            }
                if value6.lowercased() == "ampharos"
                            {
                                pokemonImage6.image = UIImage(named: "ampharos")!
                            }
                if value6.lowercased() == "bellossom"
                            {
                                pokemonImage6.image = UIImage(named: "bellossom")!
                            }
                 if value6.lowercased() == "marill"
                            {
                                pokemonImage6.image = UIImage(named: "marill")!
                            }
                if value6.lowercased() == "azumarill"
                            {
                                pokemonImage6.image = UIImage(named: "azumarill")!
                            }
                if value6.lowercased() == "sudowoodo"
                            {
                                pokemonImage6.image = UIImage(named: "sudowoodo")!
                            }
                if value6.lowercased() == "politoed"
                            {
                                pokemonImage6.image = UIImage(named: "politoed")!
                            }
                if value6.lowercased() == "hoppip"
                            {
                                pokemonImage6.image = UIImage(named: "hoppip")!
                            }
                if value6.lowercased() == "skiploom"
                            {
                                pokemonImage6.image = UIImage(named: "skiploom")!
                            }
                if value6.lowercased() == "jumpluff"
                            {
                                pokemonImage6.image = UIImage(named: "jumpluff")!
                            }
                if value6.lowercased() == "aipom"
                            {
                                pokemonImage6.image = UIImage(named: "aipom")!
                            }
                if value6.lowercased() == "sunkern"
                            {
                                pokemonImage6.image = UIImage(named: "sunkern")!
                            }
                if value6.lowercased() == "sunflora"
                            {
                                pokemonImage6.image = UIImage(named: "sunflora")!
                            }
                if value6.lowercased() == "yanma"
                            {
                                pokemonImage6.image = UIImage(named: "yanma")!
                            }
                if value6.lowercased() == "wooper"
                            {
                                pokemonImage6.image = UIImage(named: "wooper")!
                            }
                if value6.lowercased() == "quagsire"
                            {
                                pokemonImage6.image = UIImage(named: "quagsire")!
                            }
                if value6.lowercased() == "espeon"
                            {
                                pokemonImage6.image = UIImage(named: "espeon")!
                            }
                if value6.lowercased() == "umbreon"
                            {
                                pokemonImage6.image = UIImage(named: "umbreon")!
                            }
                if value6.lowercased() == "murkrow"
                            {
                                pokemonImage6.image = UIImage(named: "murkrow")!
                            }
                if value6.lowercased() == "slowking"
                            {
                                pokemonImage6.image = UIImage(named: "slowking")!
                            }
                if value6.lowercased() == "girafarig"
                            {
                                pokemonImage6.image = UIImage(named: "girafarig")!
                            }
                if value6.lowercased() == "misdreavus"
                            {
                                pokemonImage6.image = UIImage(named: "misdreavus")!
                            }
                if value6.lowercased() == "unown"
                            {
                                pokemonImage6.image = UIImage(named: "unown")!
                            }
                if value6.lowercased() == "wobbuffet"
                            {
                                pokemonImage6.image = UIImage(named: "wobbuffet")!
                            }
                if value6.lowercased() == "pineco"
                            {
                                pokemonImage6.image = UIImage(named: "pineco")!
                            }
                if value6.lowercased() == "forretress"
                            {
                                pokemonImage6.image = UIImage(named: "forretress")!
                            }
                if value6.lowercased() == "dunsparce"
                            {
                                pokemonImage6.image = UIImage(named: "dunsparce")!
                            }
                if value6.lowercased() == "gligar"
                            {
                                pokemonImage6.image = UIImage(named: "gligar")!
                            }
                if value6.lowercased() == "steelix"
                            {
                                pokemonImage6.image = UIImage(named: "steelix")!
                            }
                if value6.lowercased() == "snubbull"
                            {
                                pokemonImage6.image = UIImage(named: "snubbull")!
                            }
                if value6.lowercased() == "granbull"
                            {
                                pokemonImage6.image = UIImage(named: "granbull")!
                            }
                if value6.lowercased() == "qwilfish"
                            {
                                pokemonImage6.image = UIImage(named: "qwilfish")!
                            }
                if value6.lowercased() == "scizor"
                            {
                                pokemonImage6.image = UIImage(named: "scizor")!
                            }
                if value6.lowercased() == "shuckle"
                            {
                                pokemonImage6.image = UIImage(named: "shuckle")!
                            }
                if value6.lowercased() == "heracross"
                            {
                                pokemonImage6.image = UIImage(named: "heracross")!
                            }
                if value6.lowercased() == "sneasel"
                            {
                                pokemonImage6.image = UIImage(named: "sneasel")!
                            }
                if value6.lowercased() == "teddiursa"
                            {
                                pokemonImage6.image = UIImage(named: "teddiursa")!
                            }
                if value6.lowercased() == "ursaring"
                            {
                                pokemonImage6.image = UIImage(named: "ursaring")!
                            }
                if value6.lowercased() == "slugma"
                            {
                                pokemonImage6.image = UIImage(named: "slugma")!
                            }
                if value6.lowercased() == "magcargo"
                            {
                                pokemonImage6.image = UIImage(named: "magcargo")!
                            }
                if value6.lowercased() == "swinub"
                            {
                                pokemonImage6.image = UIImage(named: "swinub")!
                            }
                if value6.lowercased() == "piloswine"
                            {
                                pokemonImage6.image = UIImage(named: "piloswine")!
                            }
                if value6.lowercased() == "corsola"
                            {
                                pokemonImage6.image = UIImage(named: "corsola")!
                            }
                if value6.lowercased() == "remoraid"
                            {
                                pokemonImage6.image = UIImage(named: "remoraid")!
                            }
                if value6.lowercased() == "octillery"
                            {
                                pokemonImage6.image = UIImage(named: "octillery")!
                            }
                if value6.lowercased() == "delibird"
                            {
                                pokemonImage6.image = UIImage(named: "delibird")!
                            }
                if value6.lowercased() == "mantine"
                            {
                                pokemonImage6.image = UIImage(named: "mantine")!
                            }
                 if value6.lowercased() == "skarmory"
                            {
                                pokemonImage6.image = UIImage(named: "skarmory")!
                            }
                if value6.lowercased() == "houndour"
                            {
                                pokemonImage6.image = UIImage(named: "houndour")!
                            }
                if value6.lowercased() == "houndoom"
                            {
                                pokemonImage6.image = UIImage(named: "houndoom")!
                            }
                if value6.lowercased() == "kingdra"
                            {
                                pokemonImage6.image = UIImage(named: "kingdra")!
                            }
                if value6.lowercased() == "phanpy"
                            {
                                pokemonImage6.image = UIImage(named: "phanpy")!
                            }
                if value6.lowercased() == "donphan"
                            {
                                pokemonImage6.image = UIImage(named: "donphan")!
                            }
                if value6.lowercased() == "porygon2"
                            {
                                pokemonImage6.image = UIImage(named: "porygon2")!
                            }
                if value6.lowercased() == "stantler"
                            {
                                pokemonImage6.image = UIImage(named: "stantler")!
                            }
                if value6.lowercased() == "smeargle"
                            {
                                pokemonImage6.image = UIImage(named: "smeargle")!
                            }
                if value6.lowercased() == "tyrogue"
                            {
                                pokemonImage6.image = UIImage(named: "tyrogue")!
                            }
                if value6.lowercased() == "hitmontop"
                            {
                                pokemonImage6.image = UIImage(named: "hitmontop")!
                            }
                if value6.lowercased() == "smoochum"
                            {
                                pokemonImage6.image = UIImage(named: "smoochum")!
                            }
                if value6.lowercased() == "elekid"
                            {
                                pokemonImage6.image = UIImage(named: "elekid")!
                            }
                if value6.lowercased() == "magby"
                            {
                                pokemonImage6.image = UIImage(named: "magby")!
                            }
                if value6.lowercased() == "miltank"
                            {
                                pokemonImage6.image = UIImage(named: "miltank")!
                            }
                if value6.lowercased() == "blissey"
                            {
                                pokemonImage6.image = UIImage(named: "blissey")!
                            }
                if value6.lowercased() == "raikou"
                            {
                                pokemonImage6.image = UIImage(named: "raikou")!
                            }
                if value6.lowercased() == "entei"
                            {
                                pokemonImage6.image = UIImage(named: "entei")!
                            }
                if value6.lowercased() == "suicune"
                            {
                                pokemonImage6.image = UIImage(named: "suicune")!
                            }
                if value6.lowercased() == "larvitar"
                            {
                                pokemonImage6.image = UIImage(named: "larvitar")!
                            }
                if value6.lowercased() == "pupitar"
                            {
                                pokemonImage6.image = UIImage(named: "pupitar")!
                            }
                if value6.lowercased() == "tyranitar"
                            {
                                pokemonImage6.image = UIImage(named: "tyranitar")!
                            }
                if value6.lowercased() == "ho-oh"
                            {
                                pokemonImage6.image = UIImage(named: "ho-oh")!
                            }
                if value6.lowercased() == "lugia"
                            {
                                pokemonImage6.image = UIImage(named: "lugia")!
                            }
                if value6.lowercased() == "celebi"
                            {
                                pokemonImage6.image = UIImage(named: "celebi")!
                            }
                if value6.lowercased() == "treecko"
                            {
                                pokemonImage6.image = UIImage(named: "treecko")!
                            }
                if value6.lowercased() == "grovyle"
                            {
                                pokemonImage6.image = UIImage(named: "grovyle")!
                            }
                if value6.lowercased() == "sceptile"
                            {
                                pokemonImage6.image = UIImage(named: "sceptile")!
                            }
                if value6.lowercased() == "torchic"
                            {
                                pokemonImage6.image = UIImage(named: "torchic")!
                            }
                if value6.lowercased() == "combusken"
                            {
                                pokemonImage6.image = UIImage(named: "combusken")!
                            }
                if value6.lowercased() == "blaziken"
                            {
                                pokemonImage6.image = UIImage(named: "blaziken")!
                            }
                if value6.lowercased() == "mudkip"
                            {
                                pokemonImage6.image = UIImage(named: "mudkip")!
                            }
                if value6.lowercased() == "marshtomp"
                            {
                                pokemonImage6.image = UIImage(named: "marshtomp")!
                            }
                if value6.lowercased() == "swampert"
                            {
                                pokemonImage6.image = UIImage(named: "swampert")!
                            }
                if value6.lowercased() == "poochyena"
                            {
                                pokemonImage6.image = UIImage(named: "poochyena")!
                            }
                if value6.lowercased() == "mightyena"
                            {
                                pokemonImage6.image = UIImage(named: "mightyena")!
                            }
                if value6.lowercased() == "zigzagoon"
                            {
                                pokemonImage6.image = UIImage(named: "zigzagoon")!
                            }
                if value6.lowercased() == "linoone"
                            {
                                pokemonImage6.image = UIImage(named: "linoone")!
                            }
                if value6.lowercased() == "wurmple"
                            {
                                pokemonImage6.image = UIImage(named: "wurmple")!
                            }
                if value6.lowercased() == "silcoon"
                            {
                                pokemonImage6.image = UIImage(named: "silcoon")!
                            }
                if value6.lowercased() == "beautifly"
                            {
                                pokemonImage6.image = UIImage(named: "beautifly")!
                            }
                if value6.lowercased() == "cascoon"
                            {
                                pokemonImage6.image = UIImage(named: "cascoon")!
                            }
                if value6.lowercased() == "dustox"
                            {
                                pokemonImage6.image = UIImage(named: "dustox")!
                            }
                if value6.lowercased() == "lotad"
                            {
                                pokemonImage6.image = UIImage(named: "lotad")!
                            }
                if value6.lowercased() == "lombre"
                            {
                                pokemonImage6.image = UIImage(named: "lombre")!
                            }
                if value6.lowercased() == "ludicolo"
                            {
                                pokemonImage6.image = UIImage(named: "ludicolo")!
                            }
                if value6.lowercased() == "seedot"
                            {
                                pokemonImage6.image = UIImage(named: "seedot")!
                            }
                if value6.lowercased() == "nuzleaf"
                            {
                                pokemonImage6.image = UIImage(named: "nuzleaf")!
                            }
                if value6.lowercased() == "shiftry"
                            {
                                pokemonImage6.image = UIImage(named: "shiftry")!
                            }
                if value6.lowercased() == "taillow"
                            {
                                pokemonImage6.image = UIImage(named: "taillow")!
                            }
                if value6.lowercased() == "swellow"
                                    {
                                        pokemonImage6.image = UIImage(named: "swellow")!
                                    }
                if value6.lowercased() == "wingull"
                            {
                                pokemonImage6.image = UIImage(named: "wingull")!
                            }
                if value6.lowercased() == "pelipper"
                            {
                                pokemonImage6.image = UIImage(named: "pelipper")!
                            }
                if value6.lowercased() == "ralts"
                            {
                                pokemonImage6.image = UIImage(named: "ralts")!
                            }
                if value6.lowercased() == "kirlia"
                            {
                                pokemonImage6.image = UIImage(named: "kirlia")!
                            }
                if value6.lowercased() == "gardevoir"
                            {
                                pokemonImage6.image = UIImage(named: "gardevoir")!
                            }
                if value6.lowercased() == "surskit"
                            {
                                pokemonImage6.image = UIImage(named: "surskit")!
                            }
                if value6.lowercased() == "masquerain"
                            {
                                pokemonImage6.image = UIImage(named: "masquerain")!
                            }
                if value6.lowercased() == "shroomish"
                            {
                                pokemonImage6.image = UIImage(named: "shroomish")!
                            }
                if value6.lowercased() == "breloom"
                            {
                                pokemonImage6.image = UIImage(named: "breloom")!
                            }
                if value6.lowercased() == "slakoth"
                            {
                                pokemonImage6.image = UIImage(named: "slakoth")!
                            }
                if value6.lowercased() == "vigoroth"
                            {
                                pokemonImage6.image = UIImage(named: "vigoroth")!
                            }
                if value6.lowercased() == "slaking"
                            {
                                pokemonImage6.image = UIImage(named: "slaking")!
                            }
                if value6.lowercased() == "nincada"
                            {
                                pokemonImage6.image = UIImage(named: "nincada")!
                            }
                if value6.lowercased() == "ninjask"
                            {
                                pokemonImage6.image = UIImage(named: "ninjask")!
                            }
                if value6.lowercased() == "shedinja"
                            {
                                pokemonImage6.image = UIImage(named: "shedinja")!
                            }
                if value6.lowercased() == "whismur"
                            {
                                pokemonImage6.image = UIImage(named: "whismur")!
                            }
                if value6.lowercased() == "loudred"
                            {
                                pokemonImage6.image = UIImage(named: "loudred")!
                            }
                if value6.lowercased() == "exploud"
                            {
                                pokemonImage6.image = UIImage(named: "exploud")!
                            }
                if value6.lowercased() == "makuhita"
                            {
                                pokemonImage6.image = UIImage(named: "makuhita")!
                            }
                if value6.lowercased() == "hariyama"
                            {
                                pokemonImage6.image = UIImage(named: "hariyama")!
                            }
                if value6.lowercased() == "azurill"
                            {
                                pokemonImage6.image = UIImage(named: "azurill")!
                            }
                if value6.lowercased() == "nosepass"
                            {
                                pokemonImage6.image = UIImage(named: "nosepass")!
                            }
                if value6.lowercased() == "skitty"
                            {
                                pokemonImage6.image = UIImage(named: "skitty")!
                            }
                if value6.lowercased() == "delcatty"
                            {
                                pokemonImage6.image = UIImage(named: "delcatty")!
                            }
                if value6.lowercased() == "sableye"
                            {
                                pokemonImage6.image = UIImage(named: "sableye")!
                            }
                if value6.lowercased() == "mawile"
                            {
                                pokemonImage6.image = UIImage(named: "mawile")!
                            }
                if value6.lowercased() == "aron"
                            {
                                pokemonImage6.image = UIImage(named: "aron")!
                            }
                if value6.lowercased() == "lairon"
                            {
                                pokemonImage6.image = UIImage(named: "lairon")!
                            }
                if value6.lowercased() == "aggron"
                            {
                                pokemonImage6.image = UIImage(named: "aggron")!
                            }
                if value6.lowercased() == "meditite"
                            {
                                pokemonImage6.image = UIImage(named: "meditite")!
                            }
                if value6.lowercased() == "medicham"
                            {
                                pokemonImage6.image = UIImage(named: "medicham")!
                            }
                if value6.lowercased() == "electrike"
                            {
                                pokemonImage6.image = UIImage(named: "electrike")!
                            }
                if value6.lowercased() == "manectric"
                            {
                                pokemonImage6.image = UIImage(named: "manectric")!
                            }
                if value6.lowercased() == "plusle"
                            {
                                pokemonImage6.image = UIImage(named: "plusle")!
                            }
                if value6.lowercased() == "minun"
                            {
                                pokemonImage6.image = UIImage(named: "minun")!
                            }
                if value6.lowercased() == "volbeat"
                            {
                                pokemonImage6.image = UIImage(named: "volbeat")!
                            }
                if value6.lowercased() == "illumise"
                            {
                                pokemonImage6.image = UIImage(named: "illumise")!
                            }
                if value6.lowercased() == "roselia"
                            {
                                pokemonImage6.image = UIImage(named: "roselia")!
                            }
                if value6.lowercased() == "gulpin"
                            {
                                pokemonImage6.image = UIImage(named: "gulpin")!
                            }
                if value6.lowercased() == "swalot"
                            {
                                pokemonImage6.image = UIImage(named: "swalot")!
                            }
                if value6.lowercased() == "carvana"
                            {
                                pokemonImage6.image = UIImage(named: "carvana")!
                            }
                if value6.lowercased() == "sharpedo"
                            {
                                pokemonImage6.image = UIImage(named: "sharpedo")!
                            }
                if value6.lowercased() == "wailmer"
                            {
                                pokemonImage6.image = UIImage(named: "wailmer")!
                            }
                if value6.lowercased() == "wailord"
                            {
                                pokemonImage6.image = UIImage(named: "wailord")!
                            }
                if value6.lowercased() == "numel"
                            {
                                pokemonImage6.image = UIImage(named: "numel")!
                            }
                if value6.lowercased() == "camerupt"
                            {
                                pokemonImage6.image = UIImage(named: "camerupt")!
                            }
                if value6.lowercased() == "torkoal"
                            {
                                pokemonImage6.image = UIImage(named: "torkoal")!
                            }
                if value6.lowercased() == "spoink"
                            {
                                pokemonImage6.image = UIImage(named: "spoink")!
                            }
                if value6.lowercased() == "grumpig"
                            {
                                pokemonImage6.image = UIImage(named: "grumpig")!
                            }
                if value6.lowercased() == "spinda"
                            {
                                pokemonImage6.image = UIImage(named: "spinda")!
                            }
                if value6.lowercased() == "trapinch"
                            {
                                pokemonImage6.image = UIImage(named: "trapinch")!
                            }
                if value6.lowercased() == "vibrava"
                            {
                                pokemonImage6.image = UIImage(named: "vibrava")!
                            }
                if value6.lowercased() == "flygon"
                            {
                                pokemonImage6.image = UIImage(named: "flygon")!
                            }
                if value6.lowercased() == "cacnea"
                            {
                                pokemonImage6.image = UIImage(named: "cacnea")!
                            }
                if value6.lowercased() == "cacturne"
                            {
                                pokemonImage6.image = UIImage(named: "cacturne")!
                            }
                if value6.lowercased() == "swablu"
                            {
                                pokemonImage6.image = UIImage(named: "swablu")!
                            }
                if value6.lowercased() == "altaria"
                            {
                                pokemonImage6.image = UIImage(named: "altaria")!
                            }
                if value6.lowercased() == "zangoose"
                            {
                                pokemonImage6.image = UIImage(named: "zangoose")!
                            }
                if value6.lowercased() == "seviper"
                            {
                                pokemonImage6.image = UIImage(named: "seviper")!
                            }
                if value6.lowercased() == "lunatone"
                            {
                                pokemonImage6.image = UIImage(named: "lunatone")!
                            }
                if value6.lowercased() == "solrock"
                            {
                                pokemonImage6.image = UIImage(named: "solrock")!
                            }
                if value6.lowercased() == "barboach"
                            {
                                pokemonImage6.image = UIImage(named: "barboach")!
                            }
                if value6.lowercased() == "whiscash"
                            {
                                pokemonImage6.image = UIImage(named: "whiscash")!
                            }
                if value6.lowercased() == "corphish"
                            {
                                pokemonImage6.image = UIImage(named: "corphish")!
                            }
                if value6.lowercased() == "crawdaunt"
                            {
                                pokemonImage6.image = UIImage(named: "crawdaunt")!
                            }
                if value6.lowercased() == "baltoy"
                            {
                                pokemonImage6.image = UIImage(named: "baltoy")!
                            }
                if value6.lowercased() == "claydol"
                            {
                                pokemonImage6.image = UIImage(named: "claydol")!
                            }
                if value6.lowercased() == "lileep"
                            {
                                pokemonImage6.image = UIImage(named: "lileep")!
                            }
                if value6.lowercased() == "cradily"
                            {
                                pokemonImage6.image = UIImage(named: "cradily")!
                            }
                if value6.lowercased() == "anorith"
                            {
                                pokemonImage6.image = UIImage(named: "anorith")!
                            }
                if value6.lowercased() == "armaldo"
                            {
                                pokemonImage6.image = UIImage(named: "armaldo")!
                            }
                if value6.lowercased() == "feebas"
                            {
                                pokemonImage6.image = UIImage(named: "feebas")!
                            }
                if value6.lowercased() == "milotic"
                            {
                                pokemonImage6.image = UIImage(named: "milotic")!
                            }
                if value6.lowercased() == "castform"
                            {
                                pokemonImage6.image = UIImage(named: "castform")!
                            }
                if value6.lowercased() == "sunny castform"
                            {
                                pokemonImage6.image = UIImage(named: "sunny castform")!
                            }
                if value6.lowercased() == "snowy castform"
                            {
                                pokemonImage6.image = UIImage(named: "snowy castform")!
                            }
                if value6.lowercased() == "rainy castform"
                            {
                                pokemonImage6.image = UIImage(named: "rainy castform")!
                            }
                if value6.lowercased() == "kecleon"
                            {
                                pokemonImage6.image = UIImage(named: "kecleon")!
                            }
                if value6.lowercased() == "shuppet"
                            {
                                pokemonImage6.image = UIImage(named: "shuppet")!
                            }
                if value6.lowercased() == "banette"
                            {
                                pokemonImage6.image = UIImage(named: "banette")!
                            }
                if value6.lowercased() == "duskull"
                            {
                                pokemonImage6.image = UIImage(named: "duskull")!
                            }
                if value6.lowercased() == "dusclops"
                            {
                                pokemonImage6.image = UIImage(named: "dusclops")!
                            }
                if value6.lowercased() == "tropius"
                            {
                                pokemonImage6.image = UIImage(named: "tropius")!
                            }
                if value6.lowercased() == "chimecho"
                            {
                                pokemonImage6.image = UIImage(named: "chimecho")!
                            }
                if value6.lowercased() == "absol"
                            {
                                pokemonImage6.image = UIImage(named: "absol")!
                            }
                if value6.lowercased() == "wynaut"
                            {
                                pokemonImage6.image = UIImage(named: "wynaut")!
                            }
                if value6.lowercased() == "snorunt"
                            {
                                pokemonImage6.image = UIImage(named: "snorunt")!
                            }
                if value6.lowercased() == "glalie"
                            {
                                pokemonImage6.image = UIImage(named: "glalie")!
                            }
                if value6.lowercased() == "spheal"
                            {
                                pokemonImage6.image = UIImage(named: "spheal")!
                            }
                if value6.lowercased() == "sealeo"
                            {
                                pokemonImage6.image = UIImage(named: "sealeo")!
                            }
                if value6.lowercased() == "walrein"
                            {
                                pokemonImage6.image = UIImage(named: "walrein")!
                            }
                if value6.lowercased() == "clamperl"
                            {
                                pokemonImage6.image = UIImage(named: "clamperl")!
                            }
                if value6.lowercased() == "huntail"
                            {
                                pokemonImage6.image = UIImage(named: "huntail")!
                            }
                if value6.lowercased() == "gorebyss"
                            {
                                pokemonImage6.image = UIImage(named: "gorebyss")!
                            }
                if value6.lowercased() == "relicanth"
                            {
                                pokemonImage6.image = UIImage(named: "relicanth")!
                            }
                if value6.lowercased() == "luvdisc"
                            {
                                pokemonImage6.image = UIImage(named: "luvdisc")!
                            }
                if value6.lowercased() == "bagon"
                            {
                                pokemonImage6.image = UIImage(named: "bagon")!
                            }
                if value6.lowercased() == "shelgon"
                            {
                                pokemonImage6.image = UIImage(named: "shelgon")!
                            }
                if value6.lowercased() == "salamence"
                            {
                                pokemonImage6.image = UIImage(named: "salamence")!
                            }
                if value6.lowercased() == "beldum"
                            {
                                pokemonImage6.image = UIImage(named: "beldum")!
                            }
                if value6.lowercased() == "metang"
                            {
                                pokemonImage6.image = UIImage(named: "metang")!
                            }
                if value6.lowercased() == "metagross"
                            {
                                pokemonImage6.image = UIImage(named: "metagross")!
                            }
                if value6.lowercased() == "regirock"
                            {
                                pokemonImage6.image = UIImage(named: "regirock")!
                            }
                if value6.lowercased() == "regice"
                            {
                                pokemonImage6.image = UIImage(named: "regice")!
                            }
                if value6.lowercased() == "registeel"
                            {
                                pokemonImage6.image = UIImage(named: "registeel")!
                            }
                if value6.lowercased() == "latias"
                            {
                                pokemonImage6.image = UIImage(named: "latias")!
                            }
                if value6.lowercased() == "latios"
                            {
                                pokemonImage6.image = UIImage(named: "latios")!
                            }
                if value6.lowercased() == "kyogre"
                            {
                                pokemonImage6.image = UIImage(named: "kyogre")!
                            }
                if value6.lowercased() == "groudon"
                            {
                                pokemonImage6.image = UIImage(named: "groudon")!
                            }
                if value6.lowercased() == "rayquaza"
                            {
                                pokemonImage6.image = UIImage(named: "rayquaza")!
                            }
                if value6.lowercased() == "jirachi"
                            {
                                pokemonImage6.image = UIImage(named: "jirachi")!
                            }
                if value6.lowercased() == "deoxys"
                            {
                                pokemonImage6.image = UIImage(named: "deoxys")!
                            }
                if value6.lowercased() == "defence deoxys"
                            {
                                pokemonImage6.image = UIImage(named: "defence deoxys")!
                            }
                if value6.lowercased() == "attack deoxys"
                            {
                                pokemonImage6.image = UIImage(named: "attack deoxys")!
                            }
                if value6.lowercased() == "speed deoxys"
                            {
                                pokemonImage6.image = UIImage(named: "speed deoxys")!
                            }
                if value6.lowercased() == "turtwig"
                            {
                                pokemonImage6.image = UIImage(named: "turtwig")!
                            }
                if value6.lowercased() == "grotle"
                            {
                                pokemonImage6.image = UIImage(named: "grotle")!
                            }
                if value6.lowercased() == "torterra"
                            {
                                pokemonImage6.image = UIImage(named: "torterra")!
                            }
                if value6.lowercased() == "chimchar"
                            {
                                pokemonImage6.image = UIImage(named: "chimchar")!
                            }
                if value6.lowercased() == "monferno"
                            {
                                pokemonImage6.image = UIImage(named: "monferno")!
                            }
                if value6.lowercased() == "infernape"
                            {
                                pokemonImage6.image = UIImage(named: "infernape")!
                            }
                if value6.lowercased() == "piplup"
                            {
                                pokemonImage6.image = UIImage(named: "piplup")!
                            }
                if value6.lowercased() == "prinplup"
                            {
                                pokemonImage6.image = UIImage(named: "prinplup")!
                            }
                if value6.lowercased() == "empoleon"
                            {
                                pokemonImage6.image = UIImage(named: "empoleon")!
                            }
                if value6.lowercased() == "starly"
                            {
                                pokemonImage6.image = UIImage(named: "starly")!
                            }
                if value6.lowercased() == "staravia"
                            {
                                pokemonImage6.image = UIImage(named: "starvaria")!
                            }
                if value6.lowercased() == "staraptor"
                            {
                                pokemonImage6.image = UIImage(named: "staraptor")!
                            }
                if value6.lowercased() == "bidoof"
                            {
                                pokemonImage6.image = UIImage(named: "bidoof")!
                            }
                if value6.lowercased() == "bibarel"
                            {
                                pokemonImage6.image = UIImage(named: "bibarel")!
                            }
                if value6.lowercased() == "kricketot"
                            {
                                pokemonImage6.image = UIImage(named: "kricketot")!
                            }
                if value6.lowercased() == "kricketune"
                            {
                                pokemonImage6.image = UIImage(named: "kricketune")!
                            }
                if value6.lowercased() == "shinx"
                            {
                                pokemonImage6.image = UIImage(named: "shinx")!
                            }
                if value6.lowercased() == "luxio"
                       {
                           pokemonImage6.image = UIImage(named: "luxio")!
                       }
                if value6.lowercased() == "luxray"
                            {
                                pokemonImage6.image = UIImage(named: "luxray")!
                            }
                if value6.lowercased() == "budew"
                            {
                                pokemonImage6.image = UIImage(named: "budew")!
                            }
                if value6.lowercased() == "roserade"
                            {
                                pokemonImage6.image = UIImage(named: "roserade")!
                            }
                if value6.lowercased() == "cranidos"
                            {
                                pokemonImage6.image = UIImage(named: "cranidos")!
                            }
                if value6.lowercased() == "rampardos"
                            {
                                pokemonImage6.image = UIImage(named: "rampardos")!
                            }
                if value6.lowercased() == "shieldon"
                            {
                                pokemonImage6.image = UIImage(named: "shieldon")!
                            }
                if value6.lowercased() == "bastiodon"
                            {
                                pokemonImage6.image = UIImage(named: "bastiodon")!
                            }
                if value6.lowercased() == "plant burmy"
                            {
                                pokemonImage6.image = UIImage(named: "plant burmy")!
                            }
                if value6.lowercased() == "trash burmy"
                            {
                                pokemonImage6.image = UIImage(named: "trash burmy")!
                            }
                if value6.lowercased() == "sand burmy"
                            {
                                pokemonImage6.image = UIImage(named: "sand burmy")!
                            }
                if value6.lowercased() == "plant wormadam"
                            {
                                pokemonImage6.image = UIImage(named: "plant wormadam")!
                            }
                if value6.lowercased() == "trash wormadam"
                            {
                                pokemonImage6.image = UIImage(named: "trash wormadam")!
                            }
                if value6.lowercased() == "sand wormadam"
                            {
                                pokemonImage6.image = UIImage(named: "sand wormadam")!
                            }
                if value6.lowercased() == "mothim"
                            {
                                pokemonImage6.image = UIImage(named: "mothim")!
                            }
                if value6.lowercased() == "combee"
                            {
                                pokemonImage6.image = UIImage(named: "combee")!
                            }
                if value6.lowercased() == "vespiquen"
                            {
                                pokemonImage6.image = UIImage(named: "vespiquen")!
                            }
                if value6.lowercased() == "pachirisu"
                            {
                                pokemonImage6.image = UIImage(named: "pachirisu")!
                            }
                if value6.lowercased() == "buizel"
                            {
                                pokemonImage6.image = UIImage(named: "buizel")!
                            }
                if value6.lowercased() == "floatzel"
                            {
                                pokemonImage6.image = UIImage(named: "floatzel")!
                            }
                if value6.lowercased() == "cherubi"
                            {
                                pokemonImage6.image = UIImage(named: "cherubi")!
                            }
                if value6.lowercased() == "overcast cherrim"
                            {
                                pokemonImage6.image = UIImage(named: "overcast cherrim")!
                            }
                if value6.lowercased() == "sunshine cherrim"
                            {
                                pokemonImage6.image = UIImage(named: "sunshine cherrim")!
                            }
                if value6.lowercased() == "east shellos"
                            {
                                pokemonImage6.image = UIImage(named: "east shellos")!
                            }
                if value6.lowercased() == "west shellos"
                            {
                                pokemonImage6.image = UIImage(named: "west shellos")!
                            }
                if value6.lowercased() == "east gastrodon"
                            {
                                pokemonImage6.image = UIImage(named: "east gastrodon")!
                            }
                if value6.lowercased() == "west gastrodon"
                            {
                                pokemonImage6.image = UIImage(named: "west gastrodon")!
                            }
                if value6.lowercased() == "ambipom"
                            {
                                pokemonImage6.image = UIImage(named: "ambipom")!
                            }
                if value6.lowercased() == "drifloon"
                            {
                                pokemonImage6.image = UIImage(named: "drifloon")!
                            }
                if value6.lowercased() == "drifblim"
                            {
                                pokemonImage6.image = UIImage(named: "drifblim")!
                            }
                if value6.lowercased() == "buneary"
                            {
                                pokemonImage6.image = UIImage(named: "buneary")!
                            }
                if value6.lowercased() == "lopunny"
                            {
                                pokemonImage6.image = UIImage(named: "lopunny")!
                            }
                if value6.lowercased() == "mismagius"
                            {
                                pokemonImage6.image = UIImage(named: "mismagius")!
                            }
                if value6.lowercased() == "honchkrow"
                            {
                                pokemonImage6.image = UIImage(named: "honchkrow")!
                            }
                if value6.lowercased() == "glameow"
                            {
                                pokemonImage6.image = UIImage(named: "glameow")!
                            }
                if value6.lowercased() == "purugly"
                            {
                                pokemonImage6.image = UIImage(named: "purugly")!
                            }
                if value6.lowercased() == "chingling"
                            {
                                pokemonImage6.image = UIImage(named: "chingling")!
                            }
                if value6.lowercased() == "stunky"
                            {
                                pokemonImage6.image = UIImage(named: "stunky")!
                            }
                if value6.lowercased() == "skuntank"
                            {
                                pokemonImage6.image = UIImage(named: "skuntank")!
                            }
                if value6.lowercased() == "bronzor"
                            {
                                pokemonImage6.image = UIImage(named: "bronzor")!
                            }
                if value6.lowercased() == "bronzong"
                            {
                                pokemonImage6.image = UIImage(named: "bronzong")!
                            }
                if value6.lowercased() == "bonsly"
                            {
                                pokemonImage6.image = UIImage(named: "bonsly")!
                            }
                if value6.lowercased() == "mime jr."
                            {
                                pokemonImage6.image = UIImage(named: "mime jr.")!
                            }
                if value6.lowercased() == "happiny"
                            {
                                pokemonImage6.image = UIImage(named: "happiny")!
                            }
                if value6.lowercased() == "chatot"
                            {
                                pokemonImage6.image = UIImage(named: "chatot")!
                            }
                if value6.lowercased() == "spiritomb"
                            {
                                pokemonImage6.image = UIImage(named: "spiritomb")!
                            }
                if value6.lowercased() == "gible"
                            {
                                pokemonImage6.image = UIImage(named: "gible")!
                            }
                if value6.lowercased() == "gabite"
                            {
                                pokemonImage6.image = UIImage(named: "gabite")!
                            }
                if value6.lowercased() == "garchomp"
                            {
                                pokemonImage6.image = UIImage(named: "garchomp")!
                            }
                if value6.lowercased() == "munchlax"
                            {
                                pokemonImage6.image = UIImage(named: "munchlax")!
                            }
                if value6.lowercased() == "riolu"
                            {
                                pokemonImage6.image = UIImage(named: "riolu")!
                            }
                if value6.lowercased() == "lucario"
                            {
                                pokemonImage6.image = UIImage(named: "lucario")!
                            }
                if value6.lowercased() == "hippopotas"
                            {
                                pokemonImage6.image = UIImage(named: "hippopotas")!
                            }
                if value6.lowercased() == "hippowdon"
                            {
                                pokemonImage6.image = UIImage(named: "hippowdon")!
                            }
                if value6.lowercased() == "skorupi"
                            {
                                pokemonImage6.image = UIImage(named: "skorupi")!
                            }
                if value6.lowercased() == "drapion"
                            {
                                pokemonImage6.image = UIImage(named: "drapion")!
                            }
                if value6.lowercased() == "croagunk"
                            {
                                pokemonImage6.image = UIImage(named: "croagunk")!
                            }
                if value6.lowercased() == "toxicroak"
                            {
                                pokemonImage6.image = UIImage(named: "toxicroak")!
                            }
                if value6.lowercased() == "carnivine"
                            {
                                pokemonImage6.image = UIImage(named: "carnivine")!
                            }
                if value6.lowercased() == "finneon"
                            {
                                pokemonImage6.image = UIImage(named: "finneon")!
                            }
                if value6.lowercased() == "lumineon"
                            {
                                pokemonImage6.image = UIImage(named: "lumineon")!
                            }
                if value6.lowercased() == "mantyke"
                            {
                                pokemonImage6.image = UIImage(named: "mantyke")!
                            }
                if value6.lowercased() == "snover"
                            {
                                pokemonImage6.image = UIImage(named: "snover")!
                            }
                if value6.lowercased() == "Abomasnow"
                            {
                                pokemonImage6.image = UIImage(named: "abomasnow")!
                            }
                if value6.lowercased() == "weavile"
                            {
                                pokemonImage6.image = UIImage(named: "weavile")!
                            }
                if value6.lowercased() == "magnezone"
                            {
                                pokemonImage6.image = UIImage(named: "magnezone")!
                            }
                if value6.lowercased() == "lickilicky"
                            {
                                pokemonImage6.image = UIImage(named: "lickilicky")!
                            }
                if value6.lowercased() == "rhyperior"
                            {
                                pokemonImage6.image = UIImage(named: "rhyperior")!
                            }
                if value6.lowercased() == "tangrowth"
                            {
                                pokemonImage6.image = UIImage(named: "tangrowth")!
                            }
                if value6.lowercased() == "electivire"
                            {
                                pokemonImage6.image = UIImage(named: "electivire")!
                            }
                if value6.lowercased() == "magmortar"
                            {
                                pokemonImage6.image = UIImage(named: "magmortar")!
                            }
                if value6.lowercased() == "togekiss"
                            {
                                pokemonImage6.image = UIImage(named: "togekiss")!
                            }
                if value6.lowercased() == "yanmega"
                            {
                                pokemonImage6.image = UIImage(named: "yanmega")!
                            }
                if value6.lowercased() == "leafeon"
                            {
                                pokemonImage6.image = UIImage(named: "leafeon")!
                            }
                if value6.lowercased() == "glaceon"
                            {
                                pokemonImage6.image = UIImage(named: "glaceon")!
                            }
                if value6.lowercased() == "gliscor"
                            {
                                pokemonImage6.image = UIImage(named: "gliscor")!
                            }
                if value6.lowercased() == "mamoswine"
                            {
                                pokemonImage6.image = UIImage(named: "mamoswine")!
                            }
                if value6.lowercased() == "porygon-z"
                            {
                                pokemonImage6.image = UIImage(named: "porygon-z")!
                            }
                if value6.lowercased() == "gallade"
                            {
                                pokemonImage6.image = UIImage(named: "gallade")!
                            }
                if value6.lowercased() == "probopass"
                            {
                                pokemonImage6.image = UIImage(named: "probopass")!
                            }
                if value6.lowercased() == "dusknoir"
                            {
                                pokemonImage6.image = UIImage(named: "dusknoir")!
                            }
                if value6.lowercased() == "froslass"
                            {
                                pokemonImage6.image = UIImage(named: "froslass")!
                            }
                if value6.lowercased() == "uxie"
                            {
                                pokemonImage6.image = UIImage(named: "uxie")!
                            }
                if value6.lowercased() == "azelf"
                            {
                                pokemonImage6.image = UIImage(named: "azelf")!
                            }
                if value6.lowercased() == "mesprit"
                            {
                                pokemonImage6.image = UIImage(named: "mesprit")!
                            }
                if value6.lowercased() == "dialga"
                            {
                                pokemonImage6.image = UIImage(named: "dialga")!
                            }
                if value6.lowercased() == "palkia"
                            {
                                pokemonImage6.image = UIImage(named: "palkia")!
                            }
                if value6.lowercased() == "heatran"
                            {
                                pokemonImage6.image = UIImage(named: "heatran")!
                            }
                if value6.lowercased() == "regigigas"
                            {
                                pokemonImage6.image = UIImage(named: "regigigas")!
                            }
                if value6.lowercased() == "altered giratina"
                            {
                                pokemonImage6.image = UIImage(named: "altered giratina")!
                            }
                if value6.lowercased() == "origin giratina"
                            {
                                pokemonImage6.image = UIImage(named: "origin giratina")!
                            }
                if value6.lowercased() == "cresselia"
                            {
                                pokemonImage6.image = UIImage(named: "cresselia")!
                            }
                if value6.lowercased() == "phione"
                            {
                                pokemonImage6.image = UIImage(named: "phione")!
                            }
                if value6.lowercased() == "manaphy"
                            {
                                pokemonImage6.image = UIImage(named: "manaphy")!
                            }
                if value6.lowercased() == "darkrai"
                            {
                                pokemonImage6.image = UIImage(named: "darkrai")!
                            }
                if value6.lowercased() == "shaymin"
                            {
                                pokemonImage6.image = UIImage(named: "shaymin")!
                            }
                if value6.lowercased() == "shaymin sky"
                            {
                                pokemonImage6.image = UIImage(named: "shaymin sky")!
                            }
                if value6.lowercased() == "arceus"
                            {
                                pokemonImage6.image = UIImage(named: "arceus")!
                            }



        if value1.lowercased() == "snivy"
                    {
                        pokemonImage1.image = UIImage(named: "snivy")!
                    }
        if value1.lowercased() == "servine"
                    {
                        pokemonImage1.image = UIImage(named: "servine")!
                    }
        if value1.lowercased() == "serperior"
                    {
                        pokemonImage1.image = UIImage(named: "serperior")!
                    }
        if value1.lowercased() == "tepig"
                    {
                        pokemonImage1.image = UIImage(named: "tepig")!
                    }
        if value1.lowercased() == "pignite"
                    {
                        pokemonImage1.image = UIImage(named: "pignite")!
                    }
        if value1.lowercased() == "emboar"
                    {
                        pokemonImage1.image = UIImage(named: "emboar")!
                    }
        if value1.lowercased() == "oshawott"
                    {
                        pokemonImage1.image = UIImage(named: "oshawott")!
                    }
        if value1.lowercased() == "dewott"
                    {
                        pokemonImage1.image = UIImage(named: "dewott")!
                    }
        if value1.lowercased() == "samurott"
                    {
                        pokemonImage1.image = UIImage(named: "samurott")!
                    }
        if value1.lowercased() == "patrat"
                    {
                        pokemonImage1.image = UIImage(named: "patrat")!
                    }
        if value1.lowercased() == "watchog"
                    {
                        pokemonImage1.image = UIImage(named: "watchog")!
                    }
        if value1.lowercased() == "lillipup"
                    {
                        pokemonImage1.image = UIImage(named: "lillipup")!
                    }
        if value1.lowercased() == "herdier"
                    {
                        pokemonImage1.image = UIImage(named: "herdier")!
                    }
        if value1.lowercased() == "stoutland"
                    {
                        pokemonImage1.image = UIImage(named: "stoutland")!
                    }
        if value1.lowercased() == "purrloin"
                    {
                        pokemonImage1.image = UIImage(named: "purrloin")!
                    }
        if value1.lowercased() == "liepard"
                    {
                        pokemonImage1.image = UIImage(named: "liepard")!
                    }
        if value1.lowercased() == "pansage"
                    {
                        pokemonImage1.image = UIImage(named: "pansage")!
                    }
        if value1.lowercased() == "simisage"
                    {
                        pokemonImage1.image = UIImage(named: "simisage")!
                    }
        if value1.lowercased() == "pansear"
                    {
                        pokemonImage1.image = UIImage(named: "pansear")!
                    }
        if value1.lowercased() == "simisear"
                    {
                        pokemonImage1.image = UIImage(named: "simisear")!
                    }
        if value1.lowercased() == "panpour"
                    {
                        pokemonImage1.image = UIImage(named: "panpour")!
                    }
        if value1.lowercased() == "simipour"
                    {
                        pokemonImage1.image = UIImage(named: "simipour")!
                    }
        if value1.lowercased() == "munna"
                    {
                        pokemonImage1.image = UIImage(named: "munna")!
                    }
        if value1.lowercased() == "musharna"
                    {
                        pokemonImage1.image = UIImage(named: "musharna")!
                    }
        if value1.lowercased() == "pidove"
                    {
                        pokemonImage1.image = UIImage(named: "pidove")!
                    }
        if value1.lowercased() == "tranquill"
                    {
                        pokemonImage1.image = UIImage(named: "tranquill")!
                    }
        if value1.lowercased() == "unfezant"
                    {
                        pokemonImage1.image = UIImage(named: "unfezant")!
                    }
        if value1.lowercased() == "blitzle"
                    {
                        pokemonImage1.image = UIImage(named: "blitzle")!
                    }
        if value1.lowercased() == "zebstrika"
                    {
                        pokemonImage1.image = UIImage(named: "zebstrika")!
                    }
        if value1.lowercased() == "roggenrola"
                    {
                        pokemonImage1.image = UIImage(named: "roggenrola")!
                    }
        if value1.lowercased() == "boldore"
                    {
                        pokemonImage1.image = UIImage(named: "boldore")!
                    }
        if value1.lowercased() == "gigalith"
                    {
                        pokemonImage1.image = UIImage(named: "gigalith")!
                    }
        if value1.lowercased() == "woobat"
                    {
                        pokemonImage1.image = UIImage(named: "woobat")!
                    }
        if value1.lowercased() == "swoobat"
                    {
                        pokemonImage1.image = UIImage(named: "swoobat")!
                    }
        if value1.lowercased() == "drilbur"
                    {
                        pokemonImage1.image = UIImage(named: "drilbur")!
                    }
        if value1.lowercased() == "excadrill"
                    {
                        pokemonImage1.image = UIImage(named: "excadrill")!
                    }
        if value1.lowercased() == "audino"
                    {
                        pokemonImage1.image = UIImage(named: "audino")!
                    }
        if value1.lowercased() == "timburr"
                    {
                        pokemonImage1.image = UIImage(named: "timburr")!
                    }
        if value1.lowercased() == "gurdurr"
                    {
                        pokemonImage1.image = UIImage(named: "gurdurr")!
                    }
        if value1.lowercased() == "conkeldurr"
                    {
                        pokemonImage1.image = UIImage(named: "conkeldurr")!
                    }
        if value1.lowercased() == "tympole"
                    {
                        pokemonImage1.image = UIImage(named: "tympole")!
                    }
        if value1.lowercased() == "palpitoad"
                    {
                        pokemonImage1.image = UIImage(named: "palpitoad")!
                    }
        if value1.lowercased() == "seismitoad"
                    {
                        pokemonImage1.image = UIImage(named: "seismitoad")!
                    }
        if value1.lowercased() == "throh"
                    {
                        pokemonImage1.image = UIImage(named: "throh")!
                    }
        if value1.lowercased() == "sawk"
                    {
                        pokemonImage1.image = UIImage(named: "sawk")!
                    }
        if value1.lowercased() == "sewaddle"
                    {
                        pokemonImage1.image = UIImage(named: "sewaddle")!
                    }
        if value1.lowercased() == "swadloon"
                    {
                        pokemonImage1.image = UIImage(named: "swadloon")!
                    }
        if value1.lowercased() == "leavanny"
                    {
                        pokemonImage1.image = UIImage(named: "leavanny")!
                    }
        if value1.lowercased() == "venipede"
                    {
                        pokemonImage1.image = UIImage(named: "venipede")!
                    }
        if value1.lowercased() == "whirlipede"
                    {
                        pokemonImage1.image = UIImage(named: "whirlipede")!
                    }
        if value1.lowercased() == "scolipede"
                    {
                        pokemonImage1.image = UIImage(named: "scolipede")!
                    }
        if value1.lowercased() == "cottonee"
                    {
                        pokemonImage1.image = UIImage(named: "cottonee")!
                    }
        if value1.lowercased() == "whimsicott"
                    {
                        pokemonImage1.image = UIImage(named: "whimsicott")!
                    }
        if value1.lowercased() == "petilil"
                    {
                        pokemonImage1.image = UIImage(named: "petilil")!
                    }
        if value1.lowercased() == "lilligant"
                    {
                        pokemonImage1.image = UIImage(named: "lilligant")!
                    }
        if value1.lowercased() == "basculin"
                    {
                        pokemonImage1.image = UIImage(named: "basculin")!
                    }
        if value1.lowercased() == "sandile"
                    {
                        pokemonImage1.image = UIImage(named: "sandile")!
                    }
        if value1.lowercased() == "krokorok"
                    {
                        pokemonImage1.image = UIImage(named: "krokorok")!
                    }
        if value1.lowercased() == "krookodile"
                    {
                        pokemonImage1.image = UIImage(named: "krookodile")!
                    }
        if value1.lowercased() == "darumaka"
                    {
                        pokemonImage1.image = UIImage(named: "darumaka")!
                    }
        if value1.lowercased() == "darmanitan"
                    {
                        pokemonImage1.image = UIImage(named: "darmanitan")!
                    }
        if value1.lowercased() == "maractus"
                    {
                        pokemonImage1.image = UIImage(named: "maractus")!
                    }
        if value1.lowercased() == "dwebble"
                    {
                        pokemonImage1.image = UIImage(named: "dwebble")!
                    }
        if value1.lowercased() == "crustle"
                    {
                        pokemonImage1.image = UIImage(named: "crustle")!
                    }
        if value1.lowercased() == "scraggy"
                    {
                        pokemonImage1.image = UIImage(named: "scraggy")!
                    }
        if value1.lowercased() == "scrafty"
                    {
                        pokemonImage1.image = UIImage(named: "scrafty")!
                    }
        if value1.lowercased() == "sigilyth"
                    {
                        pokemonImage1.image = UIImage(named: "sigilyth")!
                    }
        if value1.lowercased() == "yamask"
                    {
                        pokemonImage1.image = UIImage(named: "yamask")!
                    }
        if value1.lowercased() == "cofagrigus"
                    {
                        pokemonImage1.image = UIImage(named: "cofagrigus")!
                    }
        if value1.lowercased() == "tirtouga"
                    {
                        pokemonImage1.image = UIImage(named: "tirtouga")!
                    }
        if value1.lowercased() == "carracosta"
                    {
                        pokemonImage1.image = UIImage(named: "carracosta")!
                    }
        if value1.lowercased() == "archen"
                    {
                        pokemonImage1.image = UIImage(named: "archen")!
                    }
        if value1.lowercased() == "archeops"
                    {
                        pokemonImage1.image = UIImage(named: "archeops")!
                    }
        if value1.lowercased() == "trubbish"
                    {
                        pokemonImage1.image = UIImage(named: "trubbish")!
                    }
        if value1.lowercased() == "garbodor"
                    {
                        pokemonImage1.image = UIImage(named: "garbodor")!
                    }
        if value1.lowercased() == "zorua"
                    {
                        pokemonImage1.image = UIImage(named: "zorua")!
                    }
        if value1.lowercased() == "zoroark"
                    {
                        pokemonImage1.image = UIImage(named: "zoroark")!
                    }
        if value1.lowercased() == "minccino"
                    {
                        pokemonImage1.image = UIImage(named: "minccino")!
                    }
        if value1.lowercased() == "cinccino"
                    {
                        pokemonImage1.image = UIImage(named: "cinccino")!
                    }
        if value1.lowercased() == "gothita"
                    {
                        pokemonImage1.image = UIImage(named: "gothita")!
                    }
        if value1.lowercased() == "gothorita"
                    {
                        pokemonImage1.image = UIImage(named: "gothorita")!
                    }
        if value1.lowercased() == "gothitelle"
                    {
                        pokemonImage1.image = UIImage(named: "gothitelle")!
                    }
        if value1.lowercased() == "solosis"
                    {
                        pokemonImage1.image = UIImage(named: "solosis")!
                    }
        if value1.lowercased() == "duosion"
                    {
                        pokemonImage1.image = UIImage(named: "duosion")!
                    }
        if value1.lowercased() == "reuniclus"
                    {
                        pokemonImage1.image = UIImage(named: "reuniclus")!
                    }
        if value1.lowercased() == "ducklett"
                    {
                        pokemonImage1.image = UIImage(named: "ducklett")!
                    }
        if value1.lowercased() == "swanna"
                    {
                        pokemonImage1.image = UIImage(named: "swanna")!
                    }
        if value1.lowercased() == "vanillite"
                    {
                        pokemonImage1.image = UIImage(named: "vanillite")!
                    }
        if value1.lowercased() == "vanillish"
                    {
                        pokemonImage1.image = UIImage(named: "vanillish")!
                    }
        if value1.lowercased() == "vanilluxe"
                    {
                        pokemonImage1.image = UIImage(named: "vanilluxe")!
                    }
        if value1.lowercased() == "deerling"
                    {
                        pokemonImage1.image = UIImage(named: "deerling")!
                    }
        if value1.lowercased() == "sawsbuck"
                    {
                        pokemonImage1.image = UIImage(named: "sawsbuck")!
                    }
        if value1.lowercased() == "emolga"
                    {
                        pokemonImage1.image = UIImage(named: "emolga")!
                    }
        if value1.lowercased() == "karrablast"
                    {
                        pokemonImage1.image = UIImage(named: "karrablast")!
                    }
        if value1.lowercased() == "escavalier"
                    {
                        pokemonImage1.image = UIImage(named: "escavalier")!
                    }
        if value1.lowercased() == "foongus"
                    {
                        pokemonImage1.image = UIImage(named: "foongus")!
                    }
        if value1.lowercased() == "amoonguss"
                    {
                        pokemonImage1.image = UIImage(named: "amoonguss")!
                    }
        if value1.lowercased() == "frillish"
                    {
                        pokemonImage1.image = UIImage(named: "frillish")!
                    }
        if value1.lowercased() == "jellicent"
                    {
                        pokemonImage1.image = UIImage(named: "jellicent")!
                    }
        if value1.lowercased() == "alomomola"
                    {
                        pokemonImage1.image = UIImage(named: "alomomola")!
                    }
        if value1.lowercased() == "joltik"
                    {
                        pokemonImage1.image = UIImage(named: "joltik")!
                    }
        if value1.lowercased() == "galvantula"
                    {
                        pokemonImage1.image = UIImage(named: "galvantula")!
                    }
        if value1.lowercased() == "ferroseed"
                    {
                        pokemonImage1.image = UIImage(named: "ferroseed")!
                    }
        if value1.lowercased() == "ferrothorn"
                    {
                        pokemonImage1.image = UIImage(named: "ferrothorn")!
                    }
        if value1.lowercased() == "klink"
                    {
                        pokemonImage1.image = UIImage(named: "klink")!
                    }
        if value1.lowercased() == "klang"
                    {
                        pokemonImage1.image = UIImage(named: "klang")!
                    }
        if value1.lowercased() == "klinklang"
                    {
                        pokemonImage1.image = UIImage(named: "klinklang")!
                    }
        if value1.lowercased() == "tynamo"
                    {
                        pokemonImage1.image = UIImage(named: "tynamo")!
                    }
        if value1.lowercased() == "eelektrik"
                    {
                        pokemonImage1.image = UIImage(named: "eelektrik")!
                    }
        if value1.lowercased() == "eelektross"
                    {
                        pokemonImage1.image = UIImage(named: "eelektross")!
                    }
        if value1.lowercased() == "elgyem"
                    {
                        pokemonImage1.image = UIImage(named: "elgyem")!
                    }
        if value1.lowercased() == "beheeyem"
                    {
                        pokemonImage1.image = UIImage(named: "beheeyem")!
                    }
        if value1.lowercased() == "litwick"
                    {
                        pokemonImage1.image = UIImage(named: "litwick")!
                    }
        if value1.lowercased() == "lampent"
                    {
                        pokemonImage1.image = UIImage(named: "lampent")!
                    }
        if value1.lowercased() == "chandelure"
                    {
                        pokemonImage1.image = UIImage(named: "chandelure")!
                    }
        if value1.lowercased() == "axew"
                    {
                        pokemonImage1.image = UIImage(named: "axew")!
                    }
        if value1.lowercased() == "fraxure"
                    {
                        pokemonImage1.image = UIImage(named: "fraxure")!
                    }
        if value1.lowercased() == "haxorus"
                    {
                        pokemonImage1.image = UIImage(named: "haxorus")!
                    }
        if value1.lowercased() == "cubchoo"
                    {
                        pokemonImage1.image = UIImage(named: "cubchoo")!
                    }
        if value1.lowercased() == "beartic"
                    {
                        pokemonImage1.image = UIImage(named: "beartic")!
                    }
        if value1.lowercased() == "cryogonal"
                    {
                        pokemonImage1.image = UIImage(named: "cryogonal")!
                    }
        if value1.lowercased() == "shelmet"
                    {
                        pokemonImage1.image = UIImage(named: "shelmet")!
                    }
        if value1.lowercased() == "accelgor"
                    {
                        pokemonImage1.image = UIImage(named: "accelgor")!
                    }
        if value1.lowercased() == "stunfisk"
                    {
                        pokemonImage1.image = UIImage(named: "stunfisk")!
                    }
        if value1.lowercased() == "mienfoo"
                    {
                        pokemonImage1.image = UIImage(named: "mienfoo")!
                    }
        if value1.lowercased() == "mienshao"
                    {
                        pokemonImage1.image = UIImage(named: "mienshao")!
                    }
        if value1.lowercased() == "druddigon"
                    {
                        pokemonImage1.image = UIImage(named: "druddigon")!
                    }
        if value1.lowercased() == "golett"
                    {
                        pokemonImage1.image = UIImage(named: "golett")!
                    }
        if value1.lowercased() == "golurk"
                    {
                        pokemonImage1.image = UIImage(named: "golurk")!
                    }
        if value1.lowercased() == "pawniard"
                    {
                        pokemonImage1.image = UIImage(named: "pawniard")!
                    }
        if value1.lowercased() == "bisharp"
                    {
                        pokemonImage1.image = UIImage(named: "bisharp")!
                    }
        if value1.lowercased() == "bouffalant"
                    {
                        pokemonImage1.image = UIImage(named: "bouffalant")!
                    }
        if value1.lowercased() == "rufflet"
                    {
                        pokemonImage1.image = UIImage(named: "rufflet")!
                    }
        if value1.lowercased() == "braviary"
                    {
                        pokemonImage1.image = UIImage(named: "braviary")!
                    }
        if value1.lowercased() == "vullaby"
                    {
                        pokemonImage1.image = UIImage(named: "vullaby")!
                    }
        if value1.lowercased() == "mandibuzz"
                    {
                        pokemonImage1.image = UIImage(named: "mandibuzz")!
                    }
        if value1.lowercased() == "heatmor"
                    {
                        pokemonImage1.image = UIImage(named: "heatmor")!
                    }
        if value1.lowercased() == "durant"
                    {
                        pokemonImage1.image = UIImage(named: "durant")!
                    }
        if value1.lowercased() == "deino"
                    {
                        pokemonImage1.image = UIImage(named: "deino")!
                    }
        if value1.lowercased() == "zweilous"
                    {
                        pokemonImage1.image = UIImage(named: "zweilous")!
                    }
        if value1.lowercased() == "hydreigon"
                    {
                        pokemonImage1.image = UIImage(named: "hydreigon")!
                    }
        if value1.lowercased() == "larvesta"
                    {
                        pokemonImage1.image = UIImage(named: "larvesta")!
                    }
        if value1.lowercased() == "volcarona"
                    {
                        pokemonImage1.image = UIImage(named: "volcarona")!
                    }
        if value1.lowercased() == "cobalion"
                    {
                        pokemonImage1.image = UIImage(named: "cobalion")!
                    }
        if value1.lowercased() == "terrakion"
                    {
                        pokemonImage1.image = UIImage(named: "terrakion")!
                    }
        if value1.lowercased() == "virizion"
                    {
                        pokemonImage1.image = UIImage(named: "virizion")!
                    }
        if value1.lowercased() == "tornadus"
                    {
                        pokemonImage1.image = UIImage(named: "tornadus")!
                    }
        if value1.lowercased() == "thundurus"
                    {
                        pokemonImage1.image = UIImage(named: "thundurus")!
                    }
        if value1.lowercased() == "reshiram"
                    {
                        pokemonImage1.image = UIImage(named: "reshiram")!
                    }
        if value1.lowercased() == "zekrom"
                    {
                        pokemonImage1.image = UIImage(named: "zekrom")!
                    }
        if value1.lowercased() == "landorus"
                    {
                        pokemonImage1.image = UIImage(named: "landorus")!
                    }
        if value1.lowercased() == "kyurem"
                    {
                        pokemonImage1.image = UIImage(named: "kyurem")!
                    }
        if value1.lowercased() == "keldeo"
                    {
                        pokemonImage1.image = UIImage(named: "keldeo")!
                    }
        if value1.lowercased() == "meloetta"
                    {
                        pokemonImage1.image = UIImage(named: "meloetta")!
                    }
        if value1.lowercased() == "genesect"
                    {
                        pokemonImage1.image = UIImage(named: "genesect")!
                    }




        if value2.lowercased() == "snivy"
                    {
                        pokemonImage2.image = UIImage(named: "snivy")!
                    }
        if value2.lowercased() == "servine"
                    {
                        pokemonImage2.image = UIImage(named: "servine")!
                    }
        if value2.lowercased() == "serperior"
                    {
                        pokemonImage2.image = UIImage(named: "serperior")!
                    }
        if value2.lowercased() == "tepig"
                    {
                        pokemonImage2.image = UIImage(named: "tepig")!
                    }
        if value2.lowercased() == "pignite"
                    {
                        pokemonImage2.image = UIImage(named: "pignite")!
                    }
        if value2.lowercased() == "emboar"
                    {
                        pokemonImage2.image = UIImage(named: "emboar")!
                    }
        if value2.lowercased() == "oshawott"
                    {
                        pokemonImage2.image = UIImage(named: "oshawott")!
                    }
        if value2.lowercased() == "dewott"
                    {
                        pokemonImage2.image = UIImage(named: "dewott")!
                    }
        if value2.lowercased() == "samurott"
                    {
                        pokemonImage2.image = UIImage(named: "samurott")!
                    }
        if value2.lowercased() == "patrat"
                    {
                        pokemonImage2.image = UIImage(named: "patrat")!
                    }
        if value2.lowercased() == "watchog"
                    {
                        pokemonImage2.image = UIImage(named: "watchog")!
                    }
        if value2.lowercased() == "lillipup"
                    {
                        pokemonImage2.image = UIImage(named: "lillipup")!
                    }
        if value2.lowercased() == "herdier"
                    {
                        pokemonImage2.image = UIImage(named: "herdier")!
                    }
        if value2.lowercased() == "stoutland"
                    {
                        pokemonImage2.image = UIImage(named: "stoutland")!
                    }
        if value2.lowercased() == "purrloin"
                    {
                        pokemonImage2.image = UIImage(named: "purrloin")!
                    }
        if value2.lowercased() == "liepard"
                    {
                        pokemonImage2.image = UIImage(named: "liepard")!
                    }
        if value2.lowercased() == "pansage"
                    {
                        pokemonImage2.image = UIImage(named: "pansage")!
                    }
        if value2.lowercased() == "simisage"
                    {
                        pokemonImage2.image = UIImage(named: "simisage")!
                    }
        if value2.lowercased() == "pansear"
                    {
                        pokemonImage2.image = UIImage(named: "pansear")!
                    }
        if value2.lowercased() == "simisear"
                    {
                        pokemonImage2.image = UIImage(named: "simisear")!
                    }
        if value2.lowercased() == "panpour"
                    {
                        pokemonImage2.image = UIImage(named: "panpour")!
                    }
        if value2.lowercased() == "simipour"
                    {
                        pokemonImage2.image = UIImage(named: "simipour")!
                    }
        if value2.lowercased() == "munna"
                    {
                        pokemonImage2.image = UIImage(named: "munna")!
                    }
        if value2.lowercased() == "musharna"
                    {
                        pokemonImage2.image = UIImage(named: "musharna")!
                    }
        if value2.lowercased() == "pidove"
                    {
                        pokemonImage2.image = UIImage(named: "pidove")!
                    }
        if value2.lowercased() == "tranquill"
                    {
                        pokemonImage2.image = UIImage(named: "tranquill")!
                    }
        if value2.lowercased() == "unfezant"
                    {
                        pokemonImage2.image = UIImage(named: "unfezant")!
                    }
        if value2.lowercased() == "blitzle"
                    {
                        pokemonImage2.image = UIImage(named: "blitzle")!
                    }
        if value2.lowercased() == "zebstrika"
                    {
                        pokemonImage2.image = UIImage(named: "zebstrika")!
                    }
        if value2.lowercased() == "roggenrola"
                    {
                        pokemonImage2.image = UIImage(named: "roggenrola")!
                    }
        if value2.lowercased() == "boldore"
                    {
                        pokemonImage2.image = UIImage(named: "boldore")!
                    }
        if value2.lowercased() == "gigalith"
                    {
                        pokemonImage2.image = UIImage(named: "gigalith")!
                    }
        if value2.lowercased() == "woobat"
                    {
                        pokemonImage2.image = UIImage(named: "woobat")!
                    }
        if value2.lowercased() == "swoobat"
                    {
                        pokemonImage2.image = UIImage(named: "swoobat")!
                    }
        if value2.lowercased() == "drilbur"
                    {
                        pokemonImage2.image = UIImage(named: "drilbur")!
                    }
        if value2.lowercased() == "excadrill"
                    {
                        pokemonImage2.image = UIImage(named: "excadrill")!
                    }
        if value2.lowercased() == "audino"
                    {
                        pokemonImage2.image = UIImage(named: "audino")!
                    }
        if value2.lowercased() == "timburr"
                    {
                        pokemonImage2.image = UIImage(named: "timburr")!
                    }
        if value2.lowercased() == "gurdurr"
                    {
                        pokemonImage2.image = UIImage(named: "gurdurr")!
                    }
        if value2.lowercased() == "conkeldurr"
                    {
                        pokemonImage2.image = UIImage(named: "conkeldurr")!
                    }
        if value2.lowercased() == "tympole"
                    {
                        pokemonImage2.image = UIImage(named: "tympole")!
                    }
        if value2.lowercased() == "palpitoad"
                    {
                        pokemonImage2.image = UIImage(named: "palpitoad")!
                    }
        if value2.lowercased() == "seismitoad"
                    {
                        pokemonImage2.image = UIImage(named: "seismitoad")!
                    }
        if value2.lowercased() == "throh"
                    {
                        pokemonImage2.image = UIImage(named: "throh")!
                    }
        if value2.lowercased() == "sawk"
                    {
                        pokemonImage2.image = UIImage(named: "sawk")!
                    }
        if value2.lowercased() == "sewaddle"
                    {
                        pokemonImage2.image = UIImage(named: "sewaddle")!
                    }
        if value2.lowercased() == "swadloon"
                    {
                        pokemonImage2.image = UIImage(named: "swadloon")!
                    }
        if value2.lowercased() == "leavanny"
                    {
                        pokemonImage2.image = UIImage(named: "leavanny")!
                    }
        if value2.lowercased() == "venipede"
                    {
                        pokemonImage2.image = UIImage(named: "venipede")!
                    }
        if value2.lowercased() == "whirlipede"
                    {
                        pokemonImage2.image = UIImage(named: "whirlipede")!
                    }
        if value2.lowercased() == "scolipede"
                    {
                        pokemonImage2.image = UIImage(named: "scolipede")!
                    }
        if value2.lowercased() == "cottonee"
                    {
                        pokemonImage2.image = UIImage(named: "cottonee")!
                    }
        if value2.lowercased() == "whimsicott"
                    {
                        pokemonImage2.image = UIImage(named: "whimsicott")!
                    }
        if value2.lowercased() == "petilil"
                    {
                        pokemonImage2.image = UIImage(named: "petilil")!
                    }
        if value2.lowercased() == "lilligant"
                    {
                        pokemonImage2.image = UIImage(named: "lilligant")!
                    }
        if value2.lowercased() == "basculin"
                    {
                        pokemonImage2.image = UIImage(named: "basculin")!
                    }
        if value2.lowercased() == "sandile"
                    {
                        pokemonImage2.image = UIImage(named: "sandile")!
                    }
        if value2.lowercased() == "krokorok"
                    {
                        pokemonImage2.image = UIImage(named: "krokorok")!
                    }
        if value2.lowercased() == "krookodile"
                    {
                        pokemonImage2.image = UIImage(named: "krookodile")!
                    }
        if value2.lowercased() == "darumaka"
                    {
                        pokemonImage2.image = UIImage(named: "darumaka")!
                    }
        if value2.lowercased() == "darmanitan"
                    {
                        pokemonImage2.image = UIImage(named: "darmanitan")!
                    }
        if value2.lowercased() == "maractus"
                    {
                        pokemonImage2.image = UIImage(named: "maractus")!
                    }
        if value2.lowercased() == "dwebble"
                    {
                        pokemonImage2.image = UIImage(named: "dwebble")!
                    }
        if value2.lowercased() == "crustle"
                    {
                        pokemonImage2.image = UIImage(named: "crustle")!
                    }
        if value2.lowercased() == "scraggy"
                    {
                        pokemonImage2.image = UIImage(named: "scraggy")!
                    }
        if value2.lowercased() == "scrafty"
                    {
                        pokemonImage2.image = UIImage(named: "scrafty")!
                    }
        if value2.lowercased() == "sigilyth"
                    {
                        pokemonImage2.image = UIImage(named: "sigilyth")!
                    }
        if value2.lowercased() == "yamask"
                    {
                        pokemonImage2.image = UIImage(named: "yamask")!
                    }
        if value2.lowercased() == "cofagrigus"
                    {
                        pokemonImage2.image = UIImage(named: "cofagrigus")!
                    }
        if value2.lowercased() == "tirtouga"
                    {
                        pokemonImage2.image = UIImage(named: "tirtouga")!
                    }
        if value2.lowercased() == "carracosta"
                    {
                        pokemonImage2.image = UIImage(named: "carracosta")!
                    }
        if value2.lowercased() == "archen"
                    {
                        pokemonImage2.image = UIImage(named: "archen")!
                    }
        if value2.lowercased() == "archeops"
                    {
                        pokemonImage2.image = UIImage(named: "archeops")!
                    }
        if value2.lowercased() == "trubbish"
                    {
                        pokemonImage2.image = UIImage(named: "trubbish")!
                    }
        if value2.lowercased() == "garbodor"
                    {
                        pokemonImage2.image = UIImage(named: "garbodor")!
                    }
        if value2.lowercased() == "zorua"
                    {
                        pokemonImage2.image = UIImage(named: "zorua")!
                    }
        if value2.lowercased() == "zoroark"
                    {
                        pokemonImage2.image = UIImage(named: "zoroark")!
                    }
        if value2.lowercased() == "minccino"
                    {
                        pokemonImage2.image = UIImage(named: "minccino")!
                    }
        if value2.lowercased() == "cinccino"
                    {
                        pokemonImage2.image = UIImage(named: "cinccino")!
                    }
        if value2.lowercased() == "gothita"
                    {
                        pokemonImage2.image = UIImage(named: "gothita")!
                    }
        if value2.lowercased() == "gothorita"
                    {
                        pokemonImage2.image = UIImage(named: "gothorita")!
                    }
        if value2.lowercased() == "gothitelle"
                    {
                        pokemonImage2.image = UIImage(named: "gothitelle")!
                    }
        if value2.lowercased() == "solosis"
                    {
                        pokemonImage2.image = UIImage(named: "solosis")!
                    }
        if value2.lowercased() == "duosion"
                    {
                        pokemonImage2.image = UIImage(named: "duosion")!
                    }
        if value2.lowercased() == "reuniclus"
                    {
                        pokemonImage2.image = UIImage(named: "reuniclus")!
                    }
        if value2.lowercased() == "ducklett"
                    {
                        pokemonImage2.image = UIImage(named: "ducklett")!
                    }
        if value2.lowercased() == "swanna"
                    {
                        pokemonImage2.image = UIImage(named: "swanna")!
                    }
        if value2.lowercased() == "vanillite"
                    {
                        pokemonImage2.image = UIImage(named: "vanillite")!
                    }
        if value2.lowercased() == "vanillish"
                    {
                        pokemonImage2.image = UIImage(named: "vanillish")!
                    }
        if value2.lowercased() == "vanilluxe"
                    {
                        pokemonImage2.image = UIImage(named: "vanilluxe")!
                    }
        if value2.lowercased() == "deerling"
                    {
                        pokemonImage2.image = UIImage(named: "deerling")!
                    }
        if value2.lowercased() == "sawsbuck"
                    {
                        pokemonImage2.image = UIImage(named: "sawsbuck")!
                    }
        if value2.lowercased() == "emolga"
                    {
                        pokemonImage2.image = UIImage(named: "emolga")!
                    }
        if value2.lowercased() == "karrablast"
                    {
                        pokemonImage2.image = UIImage(named: "karrablast")!
                    }
        if value2.lowercased() == "escavalier"
                    {
                        pokemonImage2.image = UIImage(named: "escavalier")!
                    }
        if value2.lowercased() == "foongus"
                    {
                        pokemonImage2.image = UIImage(named: "foongus")!
                    }
        if value2.lowercased() == "amoonguss"
                    {
                        pokemonImage2.image = UIImage(named: "amoonguss")!
                    }
        if value2.lowercased() == "frillish"
                    {
                        pokemonImage2.image = UIImage(named: "frillish")!
                    }
        if value2.lowercased() == "jellicent"
                    {
                        pokemonImage2.image = UIImage(named: "jellicent")!
                    }
        if value2.lowercased() == "alomomola"
                    {
                        pokemonImage2.image = UIImage(named: "alomomola")!
                    }
        if value2.lowercased() == "joltik"
                    {
                        pokemonImage2.image = UIImage(named: "joltik")!
                    }
        if value2.lowercased() == "galvantula"
                    {
                        pokemonImage2.image = UIImage(named: "galvantula")!
                    }
        if value2.lowercased() == "ferroseed"
                    {
                        pokemonImage2.image = UIImage(named: "ferroseed")!
                    }
        if value2.lowercased() == "ferrothorn"
                    {
                        pokemonImage2.image = UIImage(named: "ferrothorn")!
                    }
        if value2.lowercased() == "klink"
                    {
                        pokemonImage2.image = UIImage(named: "klink")!
                    }
        if value2.lowercased() == "klang"
                    {
                        pokemonImage2.image = UIImage(named: "klang")!
                    }
        if value2.lowercased() == "klinklang"
                    {
                        pokemonImage2.image = UIImage(named: "klinklang")!
                    }
        if value2.lowercased() == "tynamo"
                    {
                        pokemonImage2.image = UIImage(named: "tynamo")!
                    }
        if value2.lowercased() == "eelektrik"
                    {
                        pokemonImage2.image = UIImage(named: "eelektrik")!
                    }
        if value2.lowercased() == "eelektross"
                    {
                        pokemonImage2.image = UIImage(named: "eelektross")!
                    }
        if value2.lowercased() == "elgyem"
                    {
                        pokemonImage2.image = UIImage(named: "elgyem")!
                    }
        if value2.lowercased() == "beheeyem"
                    {
                        pokemonImage2.image = UIImage(named: "beheeyem")!
                    }
        if value2.lowercased() == "litwick"
                    {
                        pokemonImage2.image = UIImage(named: "litwick")!
                    }
        if value2.lowercased() == "lampent"
                    {
                        pokemonImage2.image = UIImage(named: "lampent")!
                    }
        if value2.lowercased() == "chandelure"
                    {
                        pokemonImage2.image = UIImage(named: "chandelure")!
                    }
        if value2.lowercased() == "axew"
                    {
                        pokemonImage2.image = UIImage(named: "axew")!
                    }
        if value2.lowercased() == "fraxure"
                    {
                        pokemonImage2.image = UIImage(named: "fraxure")!
                    }
        if value2.lowercased() == "haxorus"
                    {
                        pokemonImage2.image = UIImage(named: "haxorus")!
                    }
        if value2.lowercased() == "cubchoo"
                    {
                        pokemonImage2.image = UIImage(named: "cubchoo")!
                    }
        if value2.lowercased() == "beartic"
                    {
                        pokemonImage2.image = UIImage(named: "beartic")!
                    }
        if value2.lowercased() == "cryogonal"
                    {
                        pokemonImage2.image = UIImage(named: "cryogonal")!
                    }
        if value2.lowercased() == "shelmet"
                    {
                        pokemonImage2.image = UIImage(named: "shelmet")!
                    }
        if value2.lowercased() == "accelgor"
                    {
                        pokemonImage2.image = UIImage(named: "accelgor")!
                    }
        if value2.lowercased() == "stunfisk"
                    {
                        pokemonImage2.image = UIImage(named: "stunfisk")!
                    }
        if value2.lowercased() == "mienfoo"
                    {
                        pokemonImage2.image = UIImage(named: "mienfoo")!
                    }
        if value2.lowercased() == "mienshao"
                    {
                        pokemonImage2.image = UIImage(named: "mienshao")!
                    }
        if value2.lowercased() == "druddigon"
                    {
                        pokemonImage2.image = UIImage(named: "druddigon")!
                    }
        if value2.lowercased() == "golett"
                    {
                        pokemonImage2.image = UIImage(named: "golett")!
                    }
        if value2.lowercased() == "golurk"
                    {
                        pokemonImage2.image = UIImage(named: "golurk")!
                    }
        if value2.lowercased() == "pawniard"
                    {
                        pokemonImage2.image = UIImage(named: "pawniard")!
                    }
        if value2.lowercased() == "bisharp"
                    {
                        pokemonImage2.image = UIImage(named: "bisharp")!
                    }
        if value2.lowercased() == "bouffalant"
                    {
                        pokemonImage2.image = UIImage(named: "bouffalant")!
                    }
        if value2.lowercased() == "rufflet"
                    {
                        pokemonImage2.image = UIImage(named: "rufflet")!
                    }
        if value2.lowercased() == "braviary"
                    {
                        pokemonImage2.image = UIImage(named: "braviary")!
                    }
        if value2.lowercased() == "vullaby"
                    {
                        pokemonImage2.image = UIImage(named: "vullaby")!
                    }
        if value2.lowercased() == "mandibuzz"
                    {
                        pokemonImage2.image = UIImage(named: "mandibuzz")!
                    }
        if value2.lowercased() == "heatmor"
                    {
                        pokemonImage2.image = UIImage(named: "heatmor")!
                    }
        if value2.lowercased() == "durant"
                    {
                        pokemonImage2.image = UIImage(named: "durant")!
                    }
        if value2.lowercased() == "deino"
                    {
                        pokemonImage2.image = UIImage(named: "deino")!
                    }
        if value2.lowercased() == "zweilous"
                    {
                        pokemonImage2.image = UIImage(named: "zweilous")!
                    }
        if value2.lowercased() == "hydreigon"
                    {
                        pokemonImage2.image = UIImage(named: "hydreigon")!
                    }
        if value2.lowercased() == "larvesta"
                    {
                        pokemonImage2.image = UIImage(named: "larvesta")!
                    }
        if value2.lowercased() == "volcarona"
                    {
                        pokemonImage2.image = UIImage(named: "volcarona")!
                    }
        if value2.lowercased() == "cobalion"
                    {
                        pokemonImage2.image = UIImage(named: "cobalion")!
                    }
        if value2.lowercased() == "terrakion"
                    {
                        pokemonImage2.image = UIImage(named: "terrakion")!
                    }
        if value2.lowercased() == "virizion"
                    {
                        pokemonImage2.image = UIImage(named: "virizion")!
                    }
        if value2.lowercased() == "tornadus"
                    {
                        pokemonImage2.image = UIImage(named: "tornadus")!
                    }
        if value2.lowercased() == "thundurus"
                    {
                        pokemonImage2.image = UIImage(named: "thundurus")!
                    }
        if value2.lowercased() == "reshiram"
                    {
                        pokemonImage2.image = UIImage(named: "reshiram")!
                    }
        if value2.lowercased() == "zekrom"
                    {
                        pokemonImage2.image = UIImage(named: "zekrom")!
                    }
        if value2.lowercased() == "landorus"
                    {
                        pokemonImage2.image = UIImage(named: "landorus")!
                    }
        if value2.lowercased() == "kyurem"
                    {
                        pokemonImage2.image = UIImage(named: "kyurem")!
                    }
        if value2.lowercased() == "keldeo"
                    {
                        pokemonImage2.image = UIImage(named: "keldeo")!
                    }
        if value2.lowercased() == "meloetta"
                    {
                        pokemonImage2.image = UIImage(named: "meloetta")!
                    }
        if value2.lowercased() == "genesect"
                    {
                        pokemonImage2.image = UIImage(named: "genesect")!
                    }




        if value3.lowercased() == "snivy"
                    {
                        pokemonImage3.image = UIImage(named: "snivy")!
                    }
        if value3.lowercased() == "servine"
                    {
                        pokemonImage3.image = UIImage(named: "servine")!
                    }
        if value3.lowercased() == "serperior"
                    {
                        pokemonImage3.image = UIImage(named: "serperior")!
                    }
        if value3.lowercased() == "tepig"
                    {
                        pokemonImage3.image = UIImage(named: "tepig")!
                    }
        if value3.lowercased() == "pignite"
                    {
                        pokemonImage3.image = UIImage(named: "pignite")!
                    }
        if value3.lowercased() == "emboar"
                    {
                        pokemonImage3.image = UIImage(named: "emboar")!
                    }
        if value3.lowercased() == "oshawott"
                    {
                        pokemonImage3.image = UIImage(named: "oshawott")!
                    }
        if value3.lowercased() == "dewott"
                    {
                        pokemonImage3.image = UIImage(named: "dewott")!
                    }
        if value3.lowercased() == "samurott"
                    {
                        pokemonImage3.image = UIImage(named: "samurott")!
                    }
        if value3.lowercased() == "patrat"
                    {
                        pokemonImage3.image = UIImage(named: "patrat")!
                    }
        if value3.lowercased() == "watchog"
                    {
                        pokemonImage3.image = UIImage(named: "watchog")!
                    }
        if value3.lowercased() == "lillipup"
                    {
                        pokemonImage3.image = UIImage(named: "lillipup")!
                    }
        if value3.lowercased() == "herdier"
                    {
                        pokemonImage3.image = UIImage(named: "herdier")!
                    }
        if value3.lowercased() == "stoutland"
                    {
                        pokemonImage3.image = UIImage(named: "stoutland")!
                    }
        if value3.lowercased() == "purrloin"
                    {
                        pokemonImage3.image = UIImage(named: "purrloin")!
                    }
        if value3.lowercased() == "liepard"
                    {
                        pokemonImage3.image = UIImage(named: "liepard")!
                    }
        if value3.lowercased() == "pansage"
                    {
                        pokemonImage3.image = UIImage(named: "pansage")!
                    }
        if value3.lowercased() == "simisage"
                    {
                        pokemonImage3.image = UIImage(named: "simisage")!
                    }
        if value3.lowercased() == "pansear"
                    {
                        pokemonImage3.image = UIImage(named: "pansear")!
                    }
        if value3.lowercased() == "simisear"
                    {
                        pokemonImage3.image = UIImage(named: "simisear")!
                    }
        if value3.lowercased() == "panpour"
                    {
                        pokemonImage3.image = UIImage(named: "panpour")!
                    }
        if value3.lowercased() == "simipour"
                    {
                        pokemonImage3.image = UIImage(named: "simipour")!
                    }
        if value3.lowercased() == "munna"
                    {
                        pokemonImage3.image = UIImage(named: "munna")!
                    }
        if value3.lowercased() == "musharna"
                    {
                        pokemonImage3.image = UIImage(named: "musharna")!
                    }
        if value3.lowercased() == "pidove"
                    {
                        pokemonImage3.image = UIImage(named: "pidove")!
                    }
        if value3.lowercased() == "tranquill"
                    {
                        pokemonImage3.image = UIImage(named: "tranquill")!
                    }
        if value3.lowercased() == "unfezant"
                    {
                        pokemonImage3.image = UIImage(named: "unfezant")!
                    }
        if value3.lowercased() == "blitzle"
                    {
                        pokemonImage3.image = UIImage(named: "blitzle")!
                    }
        if value3.lowercased() == "zebstrika"
                    {
                        pokemonImage3.image = UIImage(named: "zebstrika")!
                    }
        if value3.lowercased() == "roggenrola"
                    {
                        pokemonImage3.image = UIImage(named: "roggenrola")!
                    }
        if value3.lowercased() == "boldore"
                    {
                        pokemonImage3.image = UIImage(named: "boldore")!
                    }
        if value3.lowercased() == "gigalith"
                    {
                        pokemonImage3.image = UIImage(named: "gigalith")!
                    }
        if value3.lowercased() == "woobat"
                    {
                        pokemonImage3.image = UIImage(named: "woobat")!
                    }
        if value3.lowercased() == "swoobat"
                    {
                        pokemonImage3.image = UIImage(named: "swoobat")!
                    }
        if value3.lowercased() == "drilbur"
                    {
                        pokemonImage3.image = UIImage(named: "drilbur")!
                    }
        if value3.lowercased() == "excadrill"
                    {
                        pokemonImage3.image = UIImage(named: "excadrill")!
                    }
        if value3.lowercased() == "audino"
                    {
                        pokemonImage3.image = UIImage(named: "audino")!
                    }
        if value3.lowercased() == "timburr"
                    {
                        pokemonImage3.image = UIImage(named: "timburr")!
                    }
        if value3.lowercased() == "gurdurr"
                    {
                        pokemonImage3.image = UIImage(named: "gurdurr")!
                    }
        if value3.lowercased() == "conkeldurr"
                    {
                        pokemonImage3.image = UIImage(named: "conkeldurr")!
                    }
        if value3.lowercased() == "tympole"
                    {
                        pokemonImage3.image = UIImage(named: "tympole")!
                    }
        if value3.lowercased() == "palpitoad"
                    {
                        pokemonImage3.image = UIImage(named: "palpitoad")!
                    }
        if value3.lowercased() == "seismitoad"
                    {
                        pokemonImage3.image = UIImage(named: "seismitoad")!
                    }
        if value3.lowercased() == "throh"
                    {
                        pokemonImage3.image = UIImage(named: "throh")!
                    }
        if value3.lowercased() == "sawk"
                    {
                        pokemonImage3.image = UIImage(named: "sawk")!
                    }
        if value3.lowercased() == "sewaddle"
                    {
                        pokemonImage3.image = UIImage(named: "sewaddle")!
                    }
        if value3.lowercased() == "swadloon"
                    {
                        pokemonImage3.image = UIImage(named: "swadloon")!
                    }
        if value3.lowercased() == "leavanny"
                    {
                        pokemonImage3.image = UIImage(named: "leavanny")!
                    }
        if value3.lowercased() == "venipede"
                    {
                        pokemonImage3.image = UIImage(named: "venipede")!
                    }
        if value3.lowercased() == "whirlipede"
                    {
                        pokemonImage3.image = UIImage(named: "whirlipede")!
                    }
        if value3.lowercased() == "scolipede"
                    {
                        pokemonImage3.image = UIImage(named: "scolipede")!
                    }
        if value3.lowercased() == "cottonee"
                    {
                        pokemonImage3.image = UIImage(named: "cottonee")!
                    }
        if value3.lowercased() == "whimsicott"
                    {
                        pokemonImage3.image = UIImage(named: "whimsicott")!
                    }
        if value3.lowercased() == "petilil"
                    {
                        pokemonImage3.image = UIImage(named: "petilil")!
                    }
        if value3.lowercased() == "lilligant"
                    {
                        pokemonImage3.image = UIImage(named: "lilligant")!
                    }
        if value3.lowercased() == "basculin"
                    {
                        pokemonImage3.image = UIImage(named: "basculin")!
                    }
        if value3.lowercased() == "sandile"
                    {
                        pokemonImage3.image = UIImage(named: "sandile")!
                    }
        if value3.lowercased() == "krokorok"
                    {
                        pokemonImage3.image = UIImage(named: "krokorok")!
                    }
        if value3.lowercased() == "krookodile"
                    {
                        pokemonImage3.image = UIImage(named: "krookodile")!
                    }
        if value3.lowercased() == "darumaka"
                    {
                        pokemonImage3.image = UIImage(named: "darumaka")!
                    }
        if value3.lowercased() == "darmanitan"
                    {
                        pokemonImage3.image = UIImage(named: "darmanitan")!
                    }
        if value3.lowercased() == "maractus"
                    {
                        pokemonImage3.image = UIImage(named: "maractus")!
                    }
        if value3.lowercased() == "dwebble"
                    {
                        pokemonImage3.image = UIImage(named: "dwebble")!
                    }
        if value3.lowercased() == "crustle"
                    {
                        pokemonImage3.image = UIImage(named: "crustle")!
                    }
        if value3.lowercased() == "scraggy"
                    {
                        pokemonImage3.image = UIImage(named: "scraggy")!
                    }
        if value3.lowercased() == "scrafty"
                    {
                        pokemonImage3.image = UIImage(named: "scrafty")!
                    }
        if value3.lowercased() == "sigilyth"
                    {
                        pokemonImage3.image = UIImage(named: "sigilyth")!
                    }
        if value3.lowercased() == "yamask"
                    {
                        pokemonImage3.image = UIImage(named: "yamask")!
                    }
        if value3.lowercased() == "cofagrigus"
                    {
                        pokemonImage3.image = UIImage(named: "cofagrigus")!
                    }
        if value3.lowercased() == "tirtouga"
                    {
                        pokemonImage3.image = UIImage(named: "tirtouga")!
                    }
        if value3.lowercased() == "carracosta"
                    {
                        pokemonImage3.image = UIImage(named: "carracosta")!
                    }
        if value3.lowercased() == "archen"
                    {
                        pokemonImage3.image = UIImage(named: "archen")!
                    }
        if value3.lowercased() == "archeops"
                    {
                        pokemonImage3.image = UIImage(named: "archeops")!
                    }
        if value3.lowercased() == "trubbish"
                    {
                        pokemonImage3.image = UIImage(named: "trubbish")!
                    }
        if value3.lowercased() == "garbodor"
                    {
                        pokemonImage3.image = UIImage(named: "garbodor")!
                    }
        if value3.lowercased() == "zorua"
                    {
                        pokemonImage3.image = UIImage(named: "zorua")!
                    }
        if value3.lowercased() == "zoroark"
                    {
                        pokemonImage3.image = UIImage(named: "zoroark")!
                    }
        if value3.lowercased() == "minccino"
                    {
                        pokemonImage3.image = UIImage(named: "minccino")!
                    }
        if value3.lowercased() == "cinccino"
                    {
                        pokemonImage3.image = UIImage(named: "cinccino")!
                    }
        if value3.lowercased() == "gothita"
                    {
                        pokemonImage3.image = UIImage(named: "gothita")!
                    }
        if value3.lowercased() == "gothorita"
                    {
                        pokemonImage3.image = UIImage(named: "gothorita")!
                    }
        if value3.lowercased() == "gothitelle"
                    {
                        pokemonImage3.image = UIImage(named: "gothitelle")!
                    }
        if value3.lowercased() == "solosis"
                    {
                        pokemonImage3.image = UIImage(named: "solosis")!
                    }
        if value3.lowercased() == "duosion"
                    {
                        pokemonImage3.image = UIImage(named: "duosion")!
                    }
        if value3.lowercased() == "reuniclus"
                    {
                        pokemonImage3.image = UIImage(named: "reuniclus")!
                    }
        if value3.lowercased() == "ducklett"
                    {
                        pokemonImage3.image = UIImage(named: "ducklett")!
                    }
        if value3.lowercased() == "swanna"
                    {
                        pokemonImage3.image = UIImage(named: "swanna")!
                    }
        if value3.lowercased() == "vanillite"
                    {
                        pokemonImage3.image = UIImage(named: "vanillite")!
                    }
        if value3.lowercased() == "vanillish"
                    {
                        pokemonImage3.image = UIImage(named: "vanillish")!
                    }
        if value3.lowercased() == "vanilluxe"
                    {
                        pokemonImage3.image = UIImage(named: "vanilluxe")!
                    }
        if value3.lowercased() == "deerling"
                    {
                        pokemonImage3.image = UIImage(named: "deerling")!
                    }
        if value3.lowercased() == "sawsbuck"
                    {
                        pokemonImage3.image = UIImage(named: "sawsbuck")!
                    }
        if value3.lowercased() == "emolga"
                    {
                        pokemonImage3.image = UIImage(named: "emolga")!
                    }
        if value3.lowercased() == "karrablast"
                    {
                        pokemonImage3.image = UIImage(named: "karrablast")!
                    }
        if value3.lowercased() == "escavalier"
                    {
                        pokemonImage3.image = UIImage(named: "escavalier")!
                    }
        if value3.lowercased() == "foongus"
                    {
                        pokemonImage3.image = UIImage(named: "foongus")!
                    }
        if value3.lowercased() == "amoonguss"
                    {
                        pokemonImage3.image = UIImage(named: "amoonguss")!
                    }
        if value3.lowercased() == "frillish"
                    {
                        pokemonImage3.image = UIImage(named: "frillish")!
                    }
        if value3.lowercased() == "jellicent"
                    {
                        pokemonImage3.image = UIImage(named: "jellicent")!
                    }
        if value3.lowercased() == "alomomola"
                    {
                        pokemonImage3.image = UIImage(named: "alomomola")!
                    }
        if value3.lowercased() == "joltik"
                    {
                        pokemonImage3.image = UIImage(named: "joltik")!
                    }
        if value3.lowercased() == "galvantula"
                    {
                        pokemonImage3.image = UIImage(named: "galvantula")!
                    }
        if value3.lowercased() == "ferroseed"
                    {
                        pokemonImage3.image = UIImage(named: "ferroseed")!
                    }
        if value3.lowercased() == "ferrothorn"
                    {
                        pokemonImage3.image = UIImage(named: "ferrothorn")!
                    }
        if value3.lowercased() == "klink"
                    {
                        pokemonImage3.image = UIImage(named: "klink")!
                    }
        if value3.lowercased() == "klang"
                    {
                        pokemonImage3.image = UIImage(named: "klang")!
                    }
        if value3.lowercased() == "klinklang"
                    {
                        pokemonImage3.image = UIImage(named: "klinklang")!
                    }
        if value3.lowercased() == "tynamo"
                    {
                        pokemonImage3.image = UIImage(named: "tynamo")!
                    }
        if value3.lowercased() == "eelektrik"
                    {
                        pokemonImage3.image = UIImage(named: "eelektrik")!
                    }
        if value3.lowercased() == "eelektross"
                    {
                        pokemonImage3.image = UIImage(named: "eelektross")!
                    }
        if value3.lowercased() == "elgyem"
                    {
                        pokemonImage3.image = UIImage(named: "elgyem")!
                    }
        if value3.lowercased() == "beheeyem"
                    {
                        pokemonImage3.image = UIImage(named: "beheeyem")!
                    }
        if value3.lowercased() == "litwick"
                    {
                        pokemonImage3.image = UIImage(named: "litwick")!
                    }
        if value3.lowercased() == "lampent"
                    {
                        pokemonImage3.image = UIImage(named: "lampent")!
                    }
        if value3.lowercased() == "chandelure"
                    {
                        pokemonImage3.image = UIImage(named: "chandelure")!
                    }
        if value3.lowercased() == "axew"
                    {
                        pokemonImage3.image = UIImage(named: "axew")!
                    }
        if value3.lowercased() == "fraxure"
                    {
                        pokemonImage3.image = UIImage(named: "fraxure")!
                    }
        if value3.lowercased() == "haxorus"
                    {
                        pokemonImage3.image = UIImage(named: "haxorus")!
                    }
        if value3.lowercased() == "cubchoo"
                    {
                        pokemonImage3.image = UIImage(named: "cubchoo")!
                    }
        if value3.lowercased() == "beartic"
                    {
                        pokemonImage3.image = UIImage(named: "beartic")!
                    }
        if value3.lowercased() == "cryogonal"
                    {
                        pokemonImage3.image = UIImage(named: "cryogonal")!
                    }
        if value3.lowercased() == "shelmet"
                    {
                        pokemonImage3.image = UIImage(named: "shelmet")!
                    }
        if value3.lowercased() == "accelgor"
                    {
                        pokemonImage3.image = UIImage(named: "accelgor")!
                    }
        if value3.lowercased() == "stunfisk"
                    {
                        pokemonImage3.image = UIImage(named: "stunfisk")!
                    }
        if value3.lowercased() == "mienfoo"
                    {
                        pokemonImage3.image = UIImage(named: "mienfoo")!
                    }
        if value3.lowercased() == "mienshao"
                    {
                        pokemonImage3.image = UIImage(named: "mienshao")!
                    }
        if value3.lowercased() == "druddigon"
                    {
                        pokemonImage3.image = UIImage(named: "druddigon")!
                    }
        if value3.lowercased() == "golett"
                    {
                        pokemonImage3.image = UIImage(named: "golett")!
                    }
        if value3.lowercased() == "golurk"
                    {
                        pokemonImage3.image = UIImage(named: "golurk")!
                    }
        if value3.lowercased() == "pawniard"
                    {
                        pokemonImage3.image = UIImage(named: "pawniard")!
                    }
        if value3.lowercased() == "bisharp"
                    {
                        pokemonImage3.image = UIImage(named: "bisharp")!
                    }
        if value3.lowercased() == "bouffalant"
                    {
                        pokemonImage3.image = UIImage(named: "bouffalant")!
                    }
        if value3.lowercased() == "rufflet"
                    {
                        pokemonImage3.image = UIImage(named: "rufflet")!
                    }
        if value3.lowercased() == "braviary"
                    {
                        pokemonImage3.image = UIImage(named: "braviary")!
                    }
        if value3.lowercased() == "vullaby"
                    {
                        pokemonImage3.image = UIImage(named: "vullaby")!
                    }
        if value3.lowercased() == "mandibuzz"
                    {
                        pokemonImage3.image = UIImage(named: "mandibuzz")!
                    }
        if value3.lowercased() == "heatmor"
                    {
                        pokemonImage3.image = UIImage(named: "heatmor")!
                    }
        if value3.lowercased() == "durant"
                    {
                        pokemonImage3.image = UIImage(named: "durant")!
                    }
        if value3.lowercased() == "deino"
                    {
                        pokemonImage3.image = UIImage(named: "deino")!
                    }
        if value3.lowercased() == "zweilous"
                    {
                        pokemonImage3.image = UIImage(named: "zweilous")!
                    }
        if value3.lowercased() == "hydreigon"
                    {
                        pokemonImage3.image = UIImage(named: "hydreigon")!
                    }
        if value3.lowercased() == "larvesta"
                    {
                        pokemonImage3.image = UIImage(named: "larvesta")!
                    }
        if value3.lowercased() == "volcarona"
                    {
                        pokemonImage3.image = UIImage(named: "volcarona")!
                    }
        if value3.lowercased() == "cobalion"
                    {
                        pokemonImage3.image = UIImage(named: "cobalion")!
                    }
        if value3.lowercased() == "terrakion"
                    {
                        pokemonImage3.image = UIImage(named: "terrakion")!
                    }
        if value3.lowercased() == "virizion"
                    {
                        pokemonImage3.image = UIImage(named: "virizion")!
                    }
        if value3.lowercased() == "tornadus"
                    {
                        pokemonImage3.image = UIImage(named: "tornadus")!
                    }
        if value3.lowercased() == "thundurus"
                    {
                        pokemonImage3.image = UIImage(named: "thundurus")!
                    }
        if value3.lowercased() == "reshiram"
                    {
                        pokemonImage3.image = UIImage(named: "reshiram")!
                    }
        if value3.lowercased() == "zekrom"
                    {
                        pokemonImage3.image = UIImage(named: "zekrom")!
                    }
        if value3.lowercased() == "landorus"
                    {
                        pokemonImage3.image = UIImage(named: "landorus")!
                    }
        if value3.lowercased() == "kyurem"
                    {
                        pokemonImage3.image = UIImage(named: "kyurem")!
                    }
        if value3.lowercased() == "keldeo"
                    {
                        pokemonImage3.image = UIImage(named: "keldeo")!
                    }
        if value3.lowercased() == "meloetta"
                    {
                        pokemonImage3.image = UIImage(named: "meloetta")!
                    }
        if value3.lowercased() == "genesect"
                    {
                        pokemonImage3.image = UIImage(named: "genesect")!
                    }




        if value4.lowercased() == "snivy"
                    {
                        pokemonImage4.image = UIImage(named: "snivy")!
                    }
        if value4.lowercased() == "servine"
                    {
                        pokemonImage4.image = UIImage(named: "servine")!
                    }
        if value4.lowercased() == "serperior"
                    {
                        pokemonImage4.image = UIImage(named: "serperior")!
                    }
        if value4.lowercased() == "tepig"
                    {
                        pokemonImage4.image = UIImage(named: "tepig")!
                    }
        if value4.lowercased() == "pignite"
                    {
                        pokemonImage4.image = UIImage(named: "pignite")!
                    }
        if value4.lowercased() == "emboar"
                    {
                        pokemonImage4.image = UIImage(named: "emboar")!
                    }
        if value4.lowercased() == "oshawott"
                    {
                        pokemonImage4.image = UIImage(named: "oshawott")!
                    }
        if value4.lowercased() == "dewott"
                    {
                        pokemonImage4.image = UIImage(named: "dewott")!
                    }
        if value4.lowercased() == "samurott"
                    {
                        pokemonImage4.image = UIImage(named: "samurott")!
                    }
        if value4.lowercased() == "patrat"
                    {
                        pokemonImage4.image = UIImage(named: "patrat")!
                    }
        if value4.lowercased() == "watchog"
                    {
                        pokemonImage4.image = UIImage(named: "watchog")!
                    }
        if value4.lowercased() == "lillipup"
                    {
                        pokemonImage4.image = UIImage(named: "lillipup")!
                    }
        if value4.lowercased() == "herdier"
                    {
                        pokemonImage4.image = UIImage(named: "herdier")!
                    }
        if value4.lowercased() == "stoutland"
                    {
                        pokemonImage4.image = UIImage(named: "stoutland")!
                    }
        if value4.lowercased() == "purrloin"
                    {
                        pokemonImage4.image = UIImage(named: "purrloin")!
                    }
        if value4.lowercased() == "liepard"
                    {
                        pokemonImage4.image = UIImage(named: "liepard")!
                    }
        if value4.lowercased() == "pansage"
                    {
                        pokemonImage4.image = UIImage(named: "pansage")!
                    }
        if value4.lowercased() == "simisage"
                    {
                        pokemonImage4.image = UIImage(named: "simisage")!
                    }
        if value4.lowercased() == "pansear"
                    {
                        pokemonImage4.image = UIImage(named: "pansear")!
                    }
        if value4.lowercased() == "simisear"
                    {
                        pokemonImage4.image = UIImage(named: "simisear")!
                    }
        if value4.lowercased() == "panpour"
                    {
                        pokemonImage4.image = UIImage(named: "panpour")!
                    }
        if value4.lowercased() == "simipour"
                    {
                        pokemonImage4.image = UIImage(named: "simipour")!
                    }
        if value4.lowercased() == "munna"
                    {
                        pokemonImage4.image = UIImage(named: "munna")!
                    }
        if value4.lowercased() == "musharna"
                    {
                        pokemonImage4.image = UIImage(named: "musharna")!
                    }
        if value4.lowercased() == "pidove"
                    {
                        pokemonImage4.image = UIImage(named: "pidove")!
                    }
        if value4.lowercased() == "tranquill"
                    {
                        pokemonImage4.image = UIImage(named: "tranquill")!
                    }
        if value4.lowercased() == "unfezant"
                    {
                        pokemonImage4.image = UIImage(named: "unfezant")!
                    }
        if value4.lowercased() == "blitzle"
                    {
                        pokemonImage4.image = UIImage(named: "blitzle")!
                    }
        if value4.lowercased() == "zebstrika"
                    {
                        pokemonImage4.image = UIImage(named: "zebstrika")!
                    }
        if value4.lowercased() == "roggenrola"
                    {
                        pokemonImage4.image = UIImage(named: "roggenrola")!
                    }
        if value4.lowercased() == "boldore"
                    {
                        pokemonImage4.image = UIImage(named: "boldore")!
                    }
        if value4.lowercased() == "gigalith"
                    {
                        pokemonImage4.image = UIImage(named: "gigalith")!
                    }
        if value4.lowercased() == "woobat"
                    {
                        pokemonImage4.image = UIImage(named: "woobat")!
                    }
        if value4.lowercased() == "swoobat"
                    {
                        pokemonImage4.image = UIImage(named: "swoobat")!
                    }
        if value4.lowercased() == "drilbur"
                    {
                        pokemonImage4.image = UIImage(named: "drilbur")!
                    }
        if value4.lowercased() == "excadrill"
                    {
                        pokemonImage4.image = UIImage(named: "excadrill")!
                    }
        if value4.lowercased() == "audino"
                    {
                        pokemonImage4.image = UIImage(named: "audino")!
                    }
        if value4.lowercased() == "timburr"
                    {
                        pokemonImage4.image = UIImage(named: "timburr")!
                    }
        if value4.lowercased() == "gurdurr"
                    {
                        pokemonImage4.image = UIImage(named: "gurdurr")!
                    }
        if value4.lowercased() == "conkeldurr"
                    {
                        pokemonImage4.image = UIImage(named: "conkeldurr")!
                    }
        if value4.lowercased() == "tympole"
                    {
                        pokemonImage4.image = UIImage(named: "tympole")!
                    }
        if value4.lowercased() == "palpitoad"
                    {
                        pokemonImage4.image = UIImage(named: "palpitoad")!
                    }
        if value4.lowercased() == "seismitoad"
                    {
                        pokemonImage4.image = UIImage(named: "seismitoad")!
                    }
        if value4.lowercased() == "throh"
                    {
                        pokemonImage4.image = UIImage(named: "throh")!
                    }
        if value4.lowercased() == "sawk"
                    {
                        pokemonImage4.image = UIImage(named: "sawk")!
                    }
        if value4.lowercased() == "sewaddle"
                    {
                        pokemonImage4.image = UIImage(named: "sewaddle")!
                    }
        if value4.lowercased() == "swadloon"
                    {
                        pokemonImage4.image = UIImage(named: "swadloon")!
                    }
        if value4.lowercased() == "leavanny"
                    {
                        pokemonImage4.image = UIImage(named: "leavanny")!
                    }
        if value4.lowercased() == "venipede"
                    {
                        pokemonImage4.image = UIImage(named: "venipede")!
                    }
        if value4.lowercased() == "whirlipede"
                    {
                        pokemonImage4.image = UIImage(named: "whirlipede")!
                    }
        if value4.lowercased() == "scolipede"
                    {
                        pokemonImage4.image = UIImage(named: "scolipede")!
                    }
        if value4.lowercased() == "cottonee"
                    {
                        pokemonImage4.image = UIImage(named: "cottonee")!
                    }
        if value4.lowercased() == "whimsicott"
                    {
                        pokemonImage4.image = UIImage(named: "whimsicott")!
                    }
        if value4.lowercased() == "petilil"
                    {
                        pokemonImage4.image = UIImage(named: "petilil")!
                    }
        if value4.lowercased() == "lilligant"
                    {
                        pokemonImage4.image = UIImage(named: "lilligant")!
                    }
        if value4.lowercased() == "basculin"
                    {
                        pokemonImage4.image = UIImage(named: "basculin")!
                    }
        if value4.lowercased() == "sandile"
                    {
                        pokemonImage4.image = UIImage(named: "sandile")!
                    }
        if value4.lowercased() == "krokorok"
                    {
                        pokemonImage4.image = UIImage(named: "krokorok")!
                    }
        if value4.lowercased() == "krookodile"
                    {
                        pokemonImage4.image = UIImage(named: "krookodile")!
                    }
        if value4.lowercased() == "darumaka"
                    {
                        pokemonImage4.image = UIImage(named: "darumaka")!
                    }
        if value4.lowercased() == "darmanitan"
                    {
                        pokemonImage4.image = UIImage(named: "darmanitan")!
                    }
        if value4.lowercased() == "maractus"
                    {
                        pokemonImage4.image = UIImage(named: "maractus")!
                    }
        if value4.lowercased() == "dwebble"
                    {
                        pokemonImage4.image = UIImage(named: "dwebble")!
                    }
        if value4.lowercased() == "crustle"
                    {
                        pokemonImage4.image = UIImage(named: "crustle")!
                    }
        if value4.lowercased() == "scraggy"
                    {
                        pokemonImage4.image = UIImage(named: "scraggy")!
                    }
        if value4.lowercased() == "scrafty"
                    {
                        pokemonImage4.image = UIImage(named: "scrafty")!
                    }
        if value4.lowercased() == "sigilyth"
                    {
                        pokemonImage4.image = UIImage(named: "sigilyth")!
                    }
        if value4.lowercased() == "yamask"
                    {
                        pokemonImage4.image = UIImage(named: "yamask")!
                    }
        if value4.lowercased() == "cofagrigus"
                    {
                        pokemonImage4.image = UIImage(named: "cofagrigus")!
                    }
        if value4.lowercased() == "tirtouga"
                    {
                        pokemonImage4.image = UIImage(named: "tirtouga")!
                    }
        if value4.lowercased() == "carracosta"
                    {
                        pokemonImage4.image = UIImage(named: "carracosta")!
                    }
        if value4.lowercased() == "archen"
                    {
                        pokemonImage4.image = UIImage(named: "archen")!
                    }
        if value4.lowercased() == "archeops"
                    {
                        pokemonImage4.image = UIImage(named: "archeops")!
                    }
        if value4.lowercased() == "trubbish"
                    {
                        pokemonImage4.image = UIImage(named: "trubbish")!
                    }
        if value4.lowercased() == "garbodor"
                    {
                        pokemonImage4.image = UIImage(named: "garbodor")!
                    }
        if value4.lowercased() == "zorua"
                    {
                        pokemonImage4.image = UIImage(named: "zorua")!
                    }
        if value4.lowercased() == "zoroark"
                    {
                        pokemonImage4.image = UIImage(named: "zoroark")!
                    }
        if value4.lowercased() == "minccino"
                    {
                        pokemonImage4.image = UIImage(named: "minccino")!
                    }
        if value4.lowercased() == "cinccino"
                    {
                        pokemonImage4.image = UIImage(named: "cinccino")!
                    }
        if value4.lowercased() == "gothita"
                    {
                        pokemonImage4.image = UIImage(named: "gothita")!
                    }
        if value4.lowercased() == "gothorita"
                    {
                        pokemonImage4.image = UIImage(named: "gothorita")!
                    }
        if value4.lowercased() == "gothitelle"
                    {
                        pokemonImage4.image = UIImage(named: "gothitelle")!
                    }
        if value4.lowercased() == "solosis"
                    {
                        pokemonImage4.image = UIImage(named: "solosis")!
                    }
        if value4.lowercased() == "duosion"
                    {
                        pokemonImage4.image = UIImage(named: "duosion")!
                    }
        if value4.lowercased() == "reuniclus"
                    {
                        pokemonImage4.image = UIImage(named: "reuniclus")!
                    }
        if value4.lowercased() == "ducklett"
                    {
                        pokemonImage4.image = UIImage(named: "ducklett")!
                    }
        if value4.lowercased() == "swanna"
                    {
                        pokemonImage4.image = UIImage(named: "swanna")!
                    }
        if value4.lowercased() == "vanillite"
                    {
                        pokemonImage4.image = UIImage(named: "vanillite")!
                    }
        if value4.lowercased() == "vanillish"
                    {
                        pokemonImage4.image = UIImage(named: "vanillish")!
                    }
        if value4.lowercased() == "vanilluxe"
                    {
                        pokemonImage4.image = UIImage(named: "vanilluxe")!
                    }
        if value4.lowercased() == "deerling"
                    {
                        pokemonImage4.image = UIImage(named: "deerling")!
                    }
        if value4.lowercased() == "sawsbuck"
                    {
                        pokemonImage4.image = UIImage(named: "sawsbuck")!
                    }
        if value4.lowercased() == "emolga"
                    {
                        pokemonImage4.image = UIImage(named: "emolga")!
                    }
        if value4.lowercased() == "karrablast"
                    {
                        pokemonImage4.image = UIImage(named: "karrablast")!
                    }
        if value4.lowercased() == "escavalier"
                    {
                        pokemonImage4.image = UIImage(named: "escavalier")!
                    }
        if value4.lowercased() == "foongus"
                    {
                        pokemonImage4.image = UIImage(named: "foongus")!
                    }
        if value4.lowercased() == "amoonguss"
                    {
                        pokemonImage4.image = UIImage(named: "amoonguss")!
                    }
        if value4.lowercased() == "frillish"
                    {
                        pokemonImage4.image = UIImage(named: "frillish")!
                    }
        if value4.lowercased() == "jellicent"
                    {
                        pokemonImage4.image = UIImage(named: "jellicent")!
                    }
        if value4.lowercased() == "alomomola"
                    {
                        pokemonImage4.image = UIImage(named: "alomomola")!
                    }
        if value4.lowercased() == "joltik"
                    {
                        pokemonImage4.image = UIImage(named: "joltik")!
                    }
        if value4.lowercased() == "galvantula"
                    {
                        pokemonImage4.image = UIImage(named: "galvantula")!
                    }
        if value4.lowercased() == "ferroseed"
                    {
                        pokemonImage4.image = UIImage(named: "ferroseed")!
                    }
        if value4.lowercased() == "ferrothorn"
                    {
                        pokemonImage4.image = UIImage(named: "ferrothorn")!
                    }
        if value4.lowercased() == "klink"
                    {
                        pokemonImage4.image = UIImage(named: "klink")!
                    }
        if value4.lowercased() == "klang"
                    {
                        pokemonImage4.image = UIImage(named: "klang")!
                    }
        if value4.lowercased() == "klinklang"
                    {
                        pokemonImage4.image = UIImage(named: "klinklang")!
                    }
        if value4.lowercased() == "tynamo"
                    {
                        pokemonImage4.image = UIImage(named: "tynamo")!
                    }
        if value4.lowercased() == "eelektrik"
                    {
                        pokemonImage4.image = UIImage(named: "eelektrik")!
                    }
        if value4.lowercased() == "eelektross"
                    {
                        pokemonImage4.image = UIImage(named: "eelektross")!
                    }
        if value4.lowercased() == "elgyem"
                    {
                        pokemonImage4.image = UIImage(named: "elgyem")!
                    }
        if value4.lowercased() == "beheeyem"
                    {
                        pokemonImage4.image = UIImage(named: "beheeyem")!
                    }
        if value4.lowercased() == "litwick"
                    {
                        pokemonImage4.image = UIImage(named: "litwick")!
                    }
        if value4.lowercased() == "lampent"
                    {
                        pokemonImage4.image = UIImage(named: "lampent")!
                    }
        if value4.lowercased() == "chandelure"
                    {
                        pokemonImage4.image = UIImage(named: "chandelure")!
                    }
        if value4.lowercased() == "axew"
                    {
                        pokemonImage4.image = UIImage(named: "axew")!
                    }
        if value4.lowercased() == "fraxure"
                    {
                        pokemonImage4.image = UIImage(named: "fraxure")!
                    }
        if value4.lowercased() == "haxorus"
                    {
                        pokemonImage4.image = UIImage(named: "haxorus")!
                    }
        if value4.lowercased() == "cubchoo"
                    {
                        pokemonImage4.image = UIImage(named: "cubchoo")!
                    }
        if value4.lowercased() == "beartic"
                    {
                        pokemonImage4.image = UIImage(named: "beartic")!
                    }
        if value4.lowercased() == "cryogonal"
                    {
                        pokemonImage4.image = UIImage(named: "cryogonal")!
                    }
        if value4.lowercased() == "shelmet"
                    {
                        pokemonImage4.image = UIImage(named: "shelmet")!
                    }
        if value4.lowercased() == "accelgor"
                    {
                        pokemonImage4.image = UIImage(named: "accelgor")!
                    }
        if value4.lowercased() == "stunfisk"
                    {
                        pokemonImage4.image = UIImage(named: "stunfisk")!
                    }
        if value4.lowercased() == "mienfoo"
                    {
                        pokemonImage4.image = UIImage(named: "mienfoo")!
                    }
        if value4.lowercased() == "mienshao"
                    {
                        pokemonImage4.image = UIImage(named: "mienshao")!
                    }
        if value4.lowercased() == "druddigon"
                    {
                        pokemonImage4.image = UIImage(named: "druddigon")!
                    }
        if value4.lowercased() == "golett"
                    {
                        pokemonImage4.image = UIImage(named: "golett")!
                    }
        if value4.lowercased() == "golurk"
                    {
                        pokemonImage4.image = UIImage(named: "golurk")!
                    }
        if value4.lowercased() == "pawniard"
                    {
                        pokemonImage4.image = UIImage(named: "pawniard")!
                    }
        if value4.lowercased() == "bisharp"
                    {
                        pokemonImage4.image = UIImage(named: "bisharp")!
                    }
        if value4.lowercased() == "bouffalant"
                    {
                        pokemonImage4.image = UIImage(named: "bouffalant")!
                    }
        if value4.lowercased() == "rufflet"
                    {
                        pokemonImage4.image = UIImage(named: "rufflet")!
                    }
        if value4.lowercased() == "braviary"
                    {
                        pokemonImage4.image = UIImage(named: "braviary")!
                    }
        if value4.lowercased() == "vullaby"
                    {
                        pokemonImage4.image = UIImage(named: "vullaby")!
                    }
        if value4.lowercased() == "mandibuzz"
                    {
                        pokemonImage4.image = UIImage(named: "mandibuzz")!
                    }
        if value4.lowercased() == "heatmor"
                    {
                        pokemonImage4.image = UIImage(named: "heatmor")!
                    }
        if value4.lowercased() == "durant"
                    {
                        pokemonImage4.image = UIImage(named: "durant")!
                    }
        if value4.lowercased() == "deino"
                    {
                        pokemonImage4.image = UIImage(named: "deino")!
                    }
        if value4.lowercased() == "zweilous"
                    {
                        pokemonImage4.image = UIImage(named: "zweilous")!
                    }
        if value4.lowercased() == "hydreigon"
                    {
                        pokemonImage4.image = UIImage(named: "hydreigon")!
                    }
        if value4.lowercased() == "larvesta"
                    {
                        pokemonImage4.image = UIImage(named: "larvesta")!
                    }
        if value4.lowercased() == "volcarona"
                    {
                        pokemonImage4.image = UIImage(named: "volcarona")!
                    }
        if value4.lowercased() == "cobalion"
                    {
                        pokemonImage4.image = UIImage(named: "cobalion")!
                    }
        if value4.lowercased() == "terrakion"
                    {
                        pokemonImage4.image = UIImage(named: "terrakion")!
                    }
        if value4.lowercased() == "virizion"
                    {
                        pokemonImage4.image = UIImage(named: "virizion")!
                    }
        if value4.lowercased() == "tornadus"
                    {
                        pokemonImage4.image = UIImage(named: "tornadus")!
                    }
        if value4.lowercased() == "thundurus"
                    {
                        pokemonImage4.image = UIImage(named: "thundurus")!
                    }
        if value4.lowercased() == "reshiram"
                    {
                        pokemonImage4.image = UIImage(named: "reshiram")!
                    }
        if value4.lowercased() == "zekrom"
                    {
                        pokemonImage4.image = UIImage(named: "zekrom")!
                    }
        if value4.lowercased() == "landorus"
                    {
                        pokemonImage4.image = UIImage(named: "landorus")!
                    }
        if value4.lowercased() == "kyurem"
                    {
                        pokemonImage4.image = UIImage(named: "kyurem")!
                    }
        if value4.lowercased() == "keldeo"
                    {
                        pokemonImage4.image = UIImage(named: "keldeo")!
                    }
        if value4.lowercased() == "meloetta"
                    {
                        pokemonImage4.image = UIImage(named: "meloetta")!
                    }
        if value4.lowercased() == "genesect"
                    {
                        pokemonImage4.image = UIImage(named: "genesect")!
                    }




        if value5.lowercased() == "snivy"
                    {
                        pokemonImage5.image = UIImage(named: "snivy")!
                    }
        if value5.lowercased() == "servine"
                    {
                        pokemonImage5.image = UIImage(named: "servine")!
                    }
        if value5.lowercased() == "serperior"
                    {
                        pokemonImage5.image = UIImage(named: "serperior")!
                    }
        if value5.lowercased() == "tepig"
                    {
                        pokemonImage5.image = UIImage(named: "tepig")!
                    }
        if value5.lowercased() == "pignite"
                    {
                        pokemonImage5.image = UIImage(named: "pignite")!
                    }
        if value5.lowercased() == "emboar"
                    {
                        pokemonImage5.image = UIImage(named: "emboar")!
                    }
        if value5.lowercased() == "oshawott"
                    {
                        pokemonImage5.image = UIImage(named: "oshawott")!
                    }
        if value5.lowercased() == "dewott"
                    {
                        pokemonImage5.image = UIImage(named: "dewott")!
                    }
        if value5.lowercased() == "samurott"
                    {
                        pokemonImage5.image = UIImage(named: "samurott")!
                    }
        if value5.lowercased() == "patrat"
                    {
                        pokemonImage5.image = UIImage(named: "patrat")!
                    }
        if value5.lowercased() == "watchog"
                    {
                        pokemonImage5.image = UIImage(named: "watchog")!
                    }
        if value5.lowercased() == "lillipup"
                    {
                        pokemonImage5.image = UIImage(named: "lillipup")!
                    }
        if value5.lowercased() == "herdier"
                    {
                        pokemonImage5.image = UIImage(named: "herdier")!
                    }
        if value5.lowercased() == "stoutland"
                    {
                        pokemonImage5.image = UIImage(named: "stoutland")!
                    }
        if value5.lowercased() == "purrloin"
                    {
                        pokemonImage5.image = UIImage(named: "purrloin")!
                    }
        if value5.lowercased() == "liepard"
                    {
                        pokemonImage5.image = UIImage(named: "liepard")!
                    }
        if value5.lowercased() == "pansage"
                    {
                        pokemonImage5.image = UIImage(named: "pansage")!
                    }
        if value5.lowercased() == "simisage"
                    {
                        pokemonImage5.image = UIImage(named: "simisage")!
                    }
        if value5.lowercased() == "pansear"
                    {
                        pokemonImage5.image = UIImage(named: "pansear")!
                    }
        if value5.lowercased() == "simisear"
                    {
                        pokemonImage5.image = UIImage(named: "simisear")!
                    }
        if value5.lowercased() == "panpour"
                    {
                        pokemonImage5.image = UIImage(named: "panpour")!
                    }
        if value5.lowercased() == "simipour"
                    {
                        pokemonImage5.image = UIImage(named: "simipour")!
                    }
        if value5.lowercased() == "munna"
                    {
                        pokemonImage5.image = UIImage(named: "munna")!
                    }
        if value5.lowercased() == "musharna"
                    {
                        pokemonImage5.image = UIImage(named: "musharna")!
                    }
        if value5.lowercased() == "pidove"
                    {
                        pokemonImage5.image = UIImage(named: "pidove")!
                    }
        if value5.lowercased() == "tranquill"
                    {
                        pokemonImage5.image = UIImage(named: "tranquill")!
                    }
        if value5.lowercased() == "unfezant"
                    {
                        pokemonImage5.image = UIImage(named: "unfezant")!
                    }
        if value5.lowercased() == "blitzle"
                    {
                        pokemonImage5.image = UIImage(named: "blitzle")!
                    }
        if value5.lowercased() == "zebstrika"
                    {
                        pokemonImage5.image = UIImage(named: "zebstrika")!
                    }
        if value5.lowercased() == "roggenrola"
                    {
                        pokemonImage5.image = UIImage(named: "roggenrola")!
                    }
        if value5.lowercased() == "boldore"
                    {
                        pokemonImage5.image = UIImage(named: "boldore")!
                    }
        if value5.lowercased() == "gigalith"
                    {
                        pokemonImage5.image = UIImage(named: "gigalith")!
                    }
        if value5.lowercased() == "woobat"
                    {
                        pokemonImage5.image = UIImage(named: "woobat")!
                    }
        if value5.lowercased() == "swoobat"
                    {
                        pokemonImage5.image = UIImage(named: "swoobat")!
                    }
        if value5.lowercased() == "drilbur"
                    {
                        pokemonImage5.image = UIImage(named: "drilbur")!
                    }
        if value5.lowercased() == "excadrill"
                    {
                        pokemonImage5.image = UIImage(named: "excadrill")!
                    }
        if value5.lowercased() == "audino"
                    {
                        pokemonImage5.image = UIImage(named: "audino")!
                    }
        if value5.lowercased() == "timburr"
                    {
                        pokemonImage5.image = UIImage(named: "timburr")!
                    }
        if value5.lowercased() == "gurdurr"
                    {
                        pokemonImage5.image = UIImage(named: "gurdurr")!
                    }
        if value5.lowercased() == "conkeldurr"
                    {
                        pokemonImage5.image = UIImage(named: "conkeldurr")!
                    }
        if value5.lowercased() == "tympole"
                    {
                        pokemonImage5.image = UIImage(named: "tympole")!
                    }
        if value5.lowercased() == "palpitoad"
                    {
                        pokemonImage5.image = UIImage(named: "palpitoad")!
                    }
        if value5.lowercased() == "seismitoad"
                    {
                        pokemonImage5.image = UIImage(named: "seismitoad")!
                    }
        if value5.lowercased() == "throh"
                    {
                        pokemonImage5.image = UIImage(named: "throh")!
                    }
        if value5.lowercased() == "sawk"
                    {
                        pokemonImage5.image = UIImage(named: "sawk")!
                    }
        if value5.lowercased() == "sewaddle"
                    {
                        pokemonImage5.image = UIImage(named: "sewaddle")!
                    }
        if value5.lowercased() == "swadloon"
                    {
                        pokemonImage5.image = UIImage(named: "swadloon")!
                    }
        if value5.lowercased() == "leavanny"
                    {
                        pokemonImage5.image = UIImage(named: "leavanny")!
                    }
        if value5.lowercased() == "venipede"
                    {
                        pokemonImage5.image = UIImage(named: "venipede")!
                    }
        if value5.lowercased() == "whirlipede"
                    {
                        pokemonImage5.image = UIImage(named: "whirlipede")!
                    }
        if value5.lowercased() == "scolipede"
                    {
                        pokemonImage5.image = UIImage(named: "scolipede")!
                    }
        if value5.lowercased() == "cottonee"
                    {
                        pokemonImage5.image = UIImage(named: "cottonee")!
                    }
        if value5.lowercased() == "whimsicott"
                    {
                        pokemonImage5.image = UIImage(named: "whimsicott")!
                    }
        if value5.lowercased() == "petilil"
                    {
                        pokemonImage5.image = UIImage(named: "petilil")!
                    }
        if value5.lowercased() == "lilligant"
                    {
                        pokemonImage5.image = UIImage(named: "lilligant")!
                    }
        if value5.lowercased() == "basculin"
                    {
                        pokemonImage5.image = UIImage(named: "basculin")!
                    }
        if value5.lowercased() == "sandile"
                    {
                        pokemonImage5.image = UIImage(named: "sandile")!
                    }
        if value5.lowercased() == "krokorok"
                    {
                        pokemonImage5.image = UIImage(named: "krokorok")!
                    }
        if value5.lowercased() == "krookodile"
                    {
                        pokemonImage5.image = UIImage(named: "krookodile")!
                    }
        if value5.lowercased() == "darumaka"
                    {
                        pokemonImage5.image = UIImage(named: "darumaka")!
                    }
        if value5.lowercased() == "darmanitan"
                    {
                        pokemonImage5.image = UIImage(named: "darmanitan")!
                    }
        if value5.lowercased() == "maractus"
                    {
                        pokemonImage5.image = UIImage(named: "maractus")!
                    }
        if value5.lowercased() == "dwebble"
                    {
                        pokemonImage5.image = UIImage(named: "dwebble")!
                    }
        if value5.lowercased() == "crustle"
                    {
                        pokemonImage5.image = UIImage(named: "crustle")!
                    }
        if value5.lowercased() == "scraggy"
                    {
                        pokemonImage5.image = UIImage(named: "scraggy")!
                    }
        if value5.lowercased() == "scrafty"
                    {
                        pokemonImage5.image = UIImage(named: "scrafty")!
                    }
        if value5.lowercased() == "sigilyth"
                    {
                        pokemonImage5.image = UIImage(named: "sigilyth")!
                    }
        if value5.lowercased() == "yamask"
                    {
                        pokemonImage5.image = UIImage(named: "yamask")!
                    }
        if value5.lowercased() == "cofagrigus"
                    {
                        pokemonImage5.image = UIImage(named: "cofagrigus")!
                    }
        if value5.lowercased() == "tirtouga"
                    {
                        pokemonImage5.image = UIImage(named: "tirtouga")!
                    }
        if value5.lowercased() == "carracosta"
                    {
                        pokemonImage5.image = UIImage(named: "carracosta")!
                    }
        if value5.lowercased() == "archen"
                    {
                        pokemonImage5.image = UIImage(named: "archen")!
                    }
        if value5.lowercased() == "archeops"
                    {
                        pokemonImage5.image = UIImage(named: "archeops")!
                    }
        if value5.lowercased() == "trubbish"
                    {
                        pokemonImage5.image = UIImage(named: "trubbish")!
                    }
        if value5.lowercased() == "garbodor"
                    {
                        pokemonImage5.image = UIImage(named: "garbodor")!
                    }
        if value5.lowercased() == "zorua"
                    {
                        pokemonImage5.image = UIImage(named: "zorua")!
                    }
        if value5.lowercased() == "zoroark"
                    {
                        pokemonImage5.image = UIImage(named: "zoroark")!
                    }
        if value5.lowercased() == "minccino"
                    {
                        pokemonImage5.image = UIImage(named: "minccino")!
                    }
        if value5.lowercased() == "cinccino"
                    {
                        pokemonImage5.image = UIImage(named: "cinccino")!
                    }
        if value5.lowercased() == "gothita"
                    {
                        pokemonImage5.image = UIImage(named: "gothita")!
                    }
        if value5.lowercased() == "gothorita"
                    {
                        pokemonImage5.image = UIImage(named: "gothorita")!
                    }
        if value5.lowercased() == "gothitelle"
                    {
                        pokemonImage5.image = UIImage(named: "gothitelle")!
                    }
        if value5.lowercased() == "solosis"
                    {
                        pokemonImage5.image = UIImage(named: "solosis")!
                    }
        if value5.lowercased() == "duosion"
                    {
                        pokemonImage5.image = UIImage(named: "duosion")!
                    }
        if value5.lowercased() == "reuniclus"
                    {
                        pokemonImage5.image = UIImage(named: "reuniclus")!
                    }
        if value5.lowercased() == "ducklett"
                    {
                        pokemonImage5.image = UIImage(named: "ducklett")!
                    }
        if value5.lowercased() == "swanna"
                    {
                        pokemonImage5.image = UIImage(named: "swanna")!
                    }
        if value5.lowercased() == "vanillite"
                    {
                        pokemonImage5.image = UIImage(named: "vanillite")!
                    }
        if value5.lowercased() == "vanillish"
                    {
                        pokemonImage5.image = UIImage(named: "vanillish")!
                    }
        if value5.lowercased() == "vanilluxe"
                    {
                        pokemonImage5.image = UIImage(named: "vanilluxe")!
                    }
        if value5.lowercased() == "deerling"
                    {
                        pokemonImage5.image = UIImage(named: "deerling")!
                    }
        if value5.lowercased() == "sawsbuck"
                    {
                        pokemonImage5.image = UIImage(named: "sawsbuck")!
                    }
        if value5.lowercased() == "emolga"
                    {
                        pokemonImage5.image = UIImage(named: "emolga")!
                    }
        if value5.lowercased() == "karrablast"
                    {
                        pokemonImage5.image = UIImage(named: "karrablast")!
                    }
        if value5.lowercased() == "escavalier"
                    {
                        pokemonImage5.image = UIImage(named: "escavalier")!
                    }
        if value5.lowercased() == "foongus"
                    {
                        pokemonImage5.image = UIImage(named: "foongus")!
                    }
        if value5.lowercased() == "amoonguss"
                    {
                        pokemonImage5.image = UIImage(named: "amoonguss")!
                    }
        if value5.lowercased() == "frillish"
                    {
                        pokemonImage5.image = UIImage(named: "frillish")!
                    }
        if value5.lowercased() == "jellicent"
                    {
                        pokemonImage5.image = UIImage(named: "jellicent")!
                    }
        if value5.lowercased() == "alomomola"
                    {
                        pokemonImage5.image = UIImage(named: "alomomola")!
                    }
        if value5.lowercased() == "joltik"
                    {
                        pokemonImage5.image = UIImage(named: "joltik")!
                    }
        if value5.lowercased() == "galvantula"
                    {
                        pokemonImage5.image = UIImage(named: "galvantula")!
                    }
        if value5.lowercased() == "ferroseed"
                    {
                        pokemonImage5.image = UIImage(named: "ferroseed")!
                    }
        if value5.lowercased() == "ferrothorn"
                    {
                        pokemonImage5.image = UIImage(named: "ferrothorn")!
                    }
        if value5.lowercased() == "klink"
                    {
                        pokemonImage5.image = UIImage(named: "klink")!
                    }
        if value5.lowercased() == "klang"
                    {
                        pokemonImage5.image = UIImage(named: "klang")!
                    }
        if value5.lowercased() == "klinklang"
                    {
                        pokemonImage5.image = UIImage(named: "klinklang")!
                    }
        if value5.lowercased() == "tynamo"
                    {
                        pokemonImage5.image = UIImage(named: "tynamo")!
                    }
        if value5.lowercased() == "eelektrik"
                    {
                        pokemonImage5.image = UIImage(named: "eelektrik")!
                    }
        if value5.lowercased() == "eelektross"
                    {
                        pokemonImage5.image = UIImage(named: "eelektross")!
                    }
        if value5.lowercased() == "elgyem"
                    {
                        pokemonImage5.image = UIImage(named: "elgyem")!
                    }
        if value5.lowercased() == "beheeyem"
                    {
                        pokemonImage5.image = UIImage(named: "beheeyem")!
                    }
        if value5.lowercased() == "litwick"
                    {
                        pokemonImage5.image = UIImage(named: "litwick")!
                    }
        if value5.lowercased() == "lampent"
                    {
                        pokemonImage5.image = UIImage(named: "lampent")!
                    }
        if value5.lowercased() == "chandelure"
                    {
                        pokemonImage5.image = UIImage(named: "chandelure")!
                    }
        if value5.lowercased() == "axew"
                    {
                        pokemonImage5.image = UIImage(named: "axew")!
                    }
        if value5.lowercased() == "fraxure"
                    {
                        pokemonImage5.image = UIImage(named: "fraxure")!
                    }
        if value5.lowercased() == "haxorus"
                    {
                        pokemonImage5.image = UIImage(named: "haxorus")!
                    }
        if value5.lowercased() == "cubchoo"
                    {
                        pokemonImage5.image = UIImage(named: "cubchoo")!
                    }
        if value5.lowercased() == "beartic"
                    {
                        pokemonImage5.image = UIImage(named: "beartic")!
                    }
        if value5.lowercased() == "cryogonal"
                    {
                        pokemonImage5.image = UIImage(named: "cryogonal")!
                    }
        if value5.lowercased() == "shelmet"
                    {
                        pokemonImage5.image = UIImage(named: "shelmet")!
                    }
        if value5.lowercased() == "accelgor"
                    {
                        pokemonImage5.image = UIImage(named: "accelgor")!
                    }
        if value5.lowercased() == "stunfisk"
                    {
                        pokemonImage5.image = UIImage(named: "stunfisk")!
                    }
        if value5.lowercased() == "mienfoo"
                    {
                        pokemonImage5.image = UIImage(named: "mienfoo")!
                    }
        if value5.lowercased() == "mienshao"
                    {
                        pokemonImage5.image = UIImage(named: "mienshao")!
                    }
        if value5.lowercased() == "druddigon"
                    {
                        pokemonImage5.image = UIImage(named: "druddigon")!
                    }
        if value5.lowercased() == "golett"
                    {
                        pokemonImage5.image = UIImage(named: "golett")!
                    }
        if value5.lowercased() == "golurk"
                    {
                        pokemonImage5.image = UIImage(named: "golurk")!
                    }
        if value5.lowercased() == "pawniard"
                    {
                        pokemonImage5.image = UIImage(named: "pawniard")!
                    }
        if value5.lowercased() == "bisharp"
                    {
                        pokemonImage5.image = UIImage(named: "bisharp")!
                    }
        if value5.lowercased() == "bouffalant"
                    {
                        pokemonImage5.image = UIImage(named: "bouffalant")!
                    }
        if value5.lowercased() == "rufflet"
                    {
                        pokemonImage5.image = UIImage(named: "rufflet")!
                    }
        if value5.lowercased() == "braviary"
                    {
                        pokemonImage5.image = UIImage(named: "braviary")!
                    }
        if value5.lowercased() == "vullaby"
                    {
                        pokemonImage5.image = UIImage(named: "vullaby")!
                    }
        if value5.lowercased() == "mandibuzz"
                    {
                        pokemonImage5.image = UIImage(named: "mandibuzz")!
                    }
        if value5.lowercased() == "heatmor"
                    {
                        pokemonImage5.image = UIImage(named: "heatmor")!
                    }
        if value5.lowercased() == "durant"
                    {
                        pokemonImage5.image = UIImage(named: "durant")!
                    }
        if value5.lowercased() == "deino"
                    {
                        pokemonImage5.image = UIImage(named: "deino")!
                    }
        if value5.lowercased() == "zweilous"
                    {
                        pokemonImage5.image = UIImage(named: "zweilous")!
                    }
        if value5.lowercased() == "hydreigon"
                    {
                        pokemonImage5.image = UIImage(named: "hydreigon")!
                    }
        if value5.lowercased() == "larvesta"
                    {
                        pokemonImage5.image = UIImage(named: "larvesta")!
                    }
        if value5.lowercased() == "volcarona"
                    {
                        pokemonImage5.image = UIImage(named: "volcarona")!
                    }
        if value5.lowercased() == "cobalion"
                    {
                        pokemonImage5.image = UIImage(named: "cobalion")!
                    }
        if value5.lowercased() == "terrakion"
                    {
                        pokemonImage5.image = UIImage(named: "terrakion")!
                    }
        if value5.lowercased() == "virizion"
                    {
                        pokemonImage5.image = UIImage(named: "virizion")!
                    }
        if value5.lowercased() == "tornadus"
                    {
                        pokemonImage5.image = UIImage(named: "tornadus")!
                    }
        if value5.lowercased() == "thundurus"
                    {
                        pokemonImage5.image = UIImage(named: "thundurus")!
                    }
        if value5.lowercased() == "reshiram"
                    {
                        pokemonImage5.image = UIImage(named: "reshiram")!
                    }
        if value5.lowercased() == "zekrom"
                    {
                        pokemonImage5.image = UIImage(named: "zekrom")!
                    }
        if value5.lowercased() == "landorus"
                    {
                        pokemonImage5.image = UIImage(named: "landorus")!
                    }
        if value5.lowercased() == "kyurem"
                    {
                        pokemonImage5.image = UIImage(named: "kyurem")!
                    }
        if value5.lowercased() == "keldeo"
                    {
                        pokemonImage5.image = UIImage(named: "keldeo")!
                    }
        if value5.lowercased() == "meloetta"
                    {
                        pokemonImage5.image = UIImage(named: "meloetta")!
                    }
        if value5.lowercased() == "genesect"
                    {
                        pokemonImage5.image = UIImage(named: "genesect")!
                    }




        if value6.lowercased() == "snivy"
                    {
                        pokemonImage6.image = UIImage(named: "snivy")!
                    }
        if value6.lowercased() == "servine"
                    {
                        pokemonImage6.image = UIImage(named: "servine")!
                    }
        if value6.lowercased() == "serperior"
                    {
                        pokemonImage6.image = UIImage(named: "serperior")!
                    }
        if value6.lowercased() == "tepig"
                    {
                        pokemonImage6.image = UIImage(named: "tepig")!
                    }
        if value6.lowercased() == "pignite"
                    {
                        pokemonImage6.image = UIImage(named: "pignite")!
                    }
        if value6.lowercased() == "emboar"
                    {
                        pokemonImage6.image = UIImage(named: "emboar")!
                    }
        if value6.lowercased() == "oshawott"
                    {
                        pokemonImage6.image = UIImage(named: "oshawott")!
                    }
        if value6.lowercased() == "dewott"
                    {
                        pokemonImage6.image = UIImage(named: "dewott")!
                    }
        if value6.lowercased() == "samurott"
                    {
                        pokemonImage6.image = UIImage(named: "samurott")!
                    }
        if value6.lowercased() == "patrat"
                    {
                        pokemonImage6.image = UIImage(named: "patrat")!
                    }
        if value6.lowercased() == "watchog"
                    {
                        pokemonImage6.image = UIImage(named: "watchog")!
                    }
        if value6.lowercased() == "lillipup"
                    {
                        pokemonImage6.image = UIImage(named: "lillipup")!
                    }
        if value6.lowercased() == "herdier"
                    {
                        pokemonImage6.image = UIImage(named: "herdier")!
                    }
        if value6.lowercased() == "stoutland"
                    {
                        pokemonImage6.image = UIImage(named: "stoutland")!
                    }
        if value6.lowercased() == "purrloin"
                    {
                        pokemonImage6.image = UIImage(named: "purrloin")!
                    }
        if value6.lowercased() == "liepard"
                    {
                        pokemonImage6.image = UIImage(named: "liepard")!
                    }
        if value6.lowercased() == "pansage"
                    {
                        pokemonImage6.image = UIImage(named: "pansage")!
                    }
        if value6.lowercased() == "simisage"
                    {
                        pokemonImage6.image = UIImage(named: "simisage")!
                    }
        if value6.lowercased() == "pansear"
                    {
                        pokemonImage6.image = UIImage(named: "pansear")!
                    }
        if value6.lowercased() == "simisear"
                    {
                        pokemonImage6.image = UIImage(named: "simisear")!
                    }
        if value6.lowercased() == "panpour"
                    {
                        pokemonImage6.image = UIImage(named: "panpour")!
                    }
        if value6.lowercased() == "simipour"
                    {
                        pokemonImage6.image = UIImage(named: "simipour")!
                    }
        if value6.lowercased() == "munna"
                    {
                        pokemonImage6.image = UIImage(named: "munna")!
                    }
        if value6.lowercased() == "musharna"
                    {
                        pokemonImage6.image = UIImage(named: "musharna")!
                    }
        if value6.lowercased() == "pidove"
                    {
                        pokemonImage6.image = UIImage(named: "pidove")!
                    }
        if value6.lowercased() == "tranquill"
                    {
                        pokemonImage6.image = UIImage(named: "tranquill")!
                    }
        if value6.lowercased() == "unfezant"
                    {
                        pokemonImage6.image = UIImage(named: "unfezant")!
                    }
        if value6.lowercased() == "blitzle"
                    {
                        pokemonImage6.image = UIImage(named: "blitzle")!
                    }
        if value6.lowercased() == "zebstrika"
                    {
                        pokemonImage6.image = UIImage(named: "zebstrika")!
                    }
        if value6.lowercased() == "roggenrola"
                    {
                        pokemonImage6.image = UIImage(named: "roggenrola")!
                    }
        if value6.lowercased() == "boldore"
                    {
                        pokemonImage6.image = UIImage(named: "boldore")!
                    }
        if value6.lowercased() == "gigalith"
                    {
                        pokemonImage6.image = UIImage(named: "gigalith")!
                    }
        if value6.lowercased() == "woobat"
                    {
                        pokemonImage6.image = UIImage(named: "woobat")!
                    }
        if value6.lowercased() == "swoobat"
                    {
                        pokemonImage6.image = UIImage(named: "swoobat")!
                    }
        if value6.lowercased() == "drilbur"
                    {
                        pokemonImage6.image = UIImage(named: "drilbur")!
                    }
        if value6.lowercased() == "excadrill"
                    {
                        pokemonImage6.image = UIImage(named: "excadrill")!
                    }
        if value6.lowercased() == "audino"
                    {
                        pokemonImage6.image = UIImage(named: "audino")!
                    }
        if value6.lowercased() == "timburr"
                    {
                        pokemonImage6.image = UIImage(named: "timburr")!
                    }
        if value6.lowercased() == "gurdurr"
                    {
                        pokemonImage6.image = UIImage(named: "gurdurr")!
                    }
        if value6.lowercased() == "conkeldurr"
                    {
                        pokemonImage6.image = UIImage(named: "conkeldurr")!
                    }
        if value6.lowercased() == "tympole"
                    {
                        pokemonImage6.image = UIImage(named: "tympole")!
                    }
        if value6.lowercased() == "palpitoad"
                    {
                        pokemonImage6.image = UIImage(named: "palpitoad")!
                    }
        if value6.lowercased() == "seismitoad"
                    {
                        pokemonImage6.image = UIImage(named: "seismitoad")!
                    }
        if value6.lowercased() == "throh"
                    {
                        pokemonImage6.image = UIImage(named: "throh")!
                    }
        if value6.lowercased() == "sawk"
                    {
                        pokemonImage6.image = UIImage(named: "sawk")!
                    }
        if value6.lowercased() == "sewaddle"
                    {
                        pokemonImage6.image = UIImage(named: "sewaddle")!
                    }
        if value6.lowercased() == "swadloon"
                    {
                        pokemonImage6.image = UIImage(named: "swadloon")!
                    }
        if value6.lowercased() == "leavanny"
                    {
                        pokemonImage6.image = UIImage(named: "leavanny")!
                    }
        if value6.lowercased() == "venipede"
                    {
                        pokemonImage6.image = UIImage(named: "venipede")!
                    }
        if value6.lowercased() == "whirlipede"
                    {
                        pokemonImage6.image = UIImage(named: "whirlipede")!
                    }
        if value6.lowercased() == "scolipede"
                    {
                        pokemonImage6.image = UIImage(named: "scolipede")!
                    }
        if value6.lowercased() == "cottonee"
                    {
                        pokemonImage6.image = UIImage(named: "cottonee")!
                    }
        if value6.lowercased() == "whimsicott"
                    {
                        pokemonImage6.image = UIImage(named: "whimsicott")!
                    }
        if value6.lowercased() == "petilil"
                    {
                        pokemonImage6.image = UIImage(named: "petilil")!
                    }
        if value6.lowercased() == "lilligant"
                    {
                        pokemonImage6.image = UIImage(named: "lilligant")!
                    }
        if value6.lowercased() == "basculin"
                    {
                        pokemonImage6.image = UIImage(named: "basculin")!
                    }
        if value6.lowercased() == "sandile"
                    {
                        pokemonImage6.image = UIImage(named: "sandile")!
                    }
        if value6.lowercased() == "krokorok"
                    {
                        pokemonImage6.image = UIImage(named: "krokorok")!
                    }
        if value6.lowercased() == "krookodile"
                    {
                        pokemonImage6.image = UIImage(named: "krookodile")!
                    }
        if value6.lowercased() == "darumaka"
                    {
                        pokemonImage6.image = UIImage(named: "darumaka")!
                    }
        if value6.lowercased() == "darmanitan"
                    {
                        pokemonImage6.image = UIImage(named: "darmanitan")!
                    }
        if value6.lowercased() == "maractus"
                    {
                        pokemonImage6.image = UIImage(named: "maractus")!
                    }
        if value6.lowercased() == "dwebble"
                    {
                        pokemonImage6.image = UIImage(named: "dwebble")!
                    }
        if value6.lowercased() == "crustle"
                    {
                        pokemonImage6.image = UIImage(named: "crustle")!
                    }
        if value6.lowercased() == "scraggy"
                    {
                        pokemonImage6.image = UIImage(named: "scraggy")!
                    }
        if value6.lowercased() == "scrafty"
                    {
                        pokemonImage6.image = UIImage(named: "scrafty")!
                    }
        if value6.lowercased() == "sigilyth"
                    {
                        pokemonImage6.image = UIImage(named: "sigilyth")!
                    }
        if value6.lowercased() == "yamask"
                    {
                        pokemonImage6.image = UIImage(named: "yamask")!
                    }
        if value6.lowercased() == "cofagrigus"
                    {
                        pokemonImage6.image = UIImage(named: "cofagrigus")!
                    }
        if value6.lowercased() == "tirtouga"
                    {
                        pokemonImage6.image = UIImage(named: "tirtouga")!
                    }
        if value6.lowercased() == "carracosta"
                    {
                        pokemonImage6.image = UIImage(named: "carracosta")!
                    }
        if value6.lowercased() == "archen"
                    {
                        pokemonImage6.image = UIImage(named: "archen")!
                    }
        if value6.lowercased() == "archeops"
                    {
                        pokemonImage6.image = UIImage(named: "archeops")!
                    }
        if value6.lowercased() == "trubbish"
                    {
                        pokemonImage6.image = UIImage(named: "trubbish")!
                    }
        if value6.lowercased() == "garbodor"
                    {
                        pokemonImage6.image = UIImage(named: "garbodor")!
                    }
        if value6.lowercased() == "zorua"
                    {
                        pokemonImage6.image = UIImage(named: "zorua")!
                    }
        if value6.lowercased() == "zoroark"
                    {
                        pokemonImage6.image = UIImage(named: "zoroark")!
                    }
        if value6.lowercased() == "minccino"
                    {
                        pokemonImage6.image = UIImage(named: "minccino")!
                    }
        if value6.lowercased() == "cinccino"
                    {
                        pokemonImage6.image = UIImage(named: "cinccino")!
                    }
        if value6.lowercased() == "gothita"
                    {
                        pokemonImage6.image = UIImage(named: "gothita")!
                    }
        if value6.lowercased() == "gothorita"
                    {
                        pokemonImage6.image = UIImage(named: "gothorita")!
                    }
        if value6.lowercased() == "gothitelle"
                    {
                        pokemonImage6.image = UIImage(named: "gothitelle")!
                    }
        if value6.lowercased() == "solosis"
                    {
                        pokemonImage6.image = UIImage(named: "solosis")!
                    }
        if value6.lowercased() == "duosion"
                    {
                        pokemonImage6.image = UIImage(named: "duosion")!
                    }
        if value6.lowercased() == "reuniclus"
                    {
                        pokemonImage6.image = UIImage(named: "reuniclus")!
                    }
        if value6.lowercased() == "ducklett"
                    {
                        pokemonImage6.image = UIImage(named: "ducklett")!
                    }
        if value6.lowercased() == "swanna"
                    {
                        pokemonImage6.image = UIImage(named: "swanna")!
                    }
        if value6.lowercased() == "vanillite"
                    {
                        pokemonImage6.image = UIImage(named: "vanillite")!
                    }
        if value6.lowercased() == "vanillish"
                    {
                        pokemonImage6.image = UIImage(named: "vanillish")!
                    }
        if value6.lowercased() == "vanilluxe"
                    {
                        pokemonImage6.image = UIImage(named: "vanilluxe")!
                    }
        if value6.lowercased() == "deerling"
                    {
                        pokemonImage6.image = UIImage(named: "deerling")!
                    }
        if value6.lowercased() == "sawsbuck"
                    {
                        pokemonImage6.image = UIImage(named: "sawsbuck")!
                    }
        if value6.lowercased() == "emolga"
                    {
                        pokemonImage6.image = UIImage(named: "emolga")!
                    }
        if value6.lowercased() == "karrablast"
                    {
                        pokemonImage6.image = UIImage(named: "karrablast")!
                    }
        if value6.lowercased() == "escavalier"
                    {
                        pokemonImage6.image = UIImage(named: "escavalier")!
                    }
        if value6.lowercased() == "foongus"
                    {
                        pokemonImage6.image = UIImage(named: "foongus")!
                    }
        if value6.lowercased() == "amoonguss"
                    {
                        pokemonImage6.image = UIImage(named: "amoonguss")!
                    }
        if value6.lowercased() == "frillish"
                    {
                        pokemonImage6.image = UIImage(named: "frillish")!
                    }
        if value6.lowercased() == "jellicent"
                    {
                        pokemonImage6.image = UIImage(named: "jellicent")!
                    }
        if value6.lowercased() == "alomomola"
                    {
                        pokemonImage6.image = UIImage(named: "alomomola")!
                    }
        if value6.lowercased() == "joltik"
                    {
                        pokemonImage6.image = UIImage(named: "joltik")!
                    }
        if value6.lowercased() == "galvantula"
                    {
                        pokemonImage6.image = UIImage(named: "galvantula")!
                    }
        if value6.lowercased() == "ferroseed"
                    {
                        pokemonImage6.image = UIImage(named: "ferroseed")!
                    }
        if value6.lowercased() == "ferrothorn"
                    {
                        pokemonImage6.image = UIImage(named: "ferrothorn")!
                    }
        if value6.lowercased() == "klink"
                    {
                        pokemonImage6.image = UIImage(named: "klink")!
                    }
        if value6.lowercased() == "klang"
                    {
                        pokemonImage6.image = UIImage(named: "klang")!
                    }
        if value6.lowercased() == "klinklang"
                    {
                        pokemonImage6.image = UIImage(named: "klinklang")!
                    }
        if value6.lowercased() == "tynamo"
                    {
                        pokemonImage6.image = UIImage(named: "tynamo")!
                    }
        if value6.lowercased() == "eelektrik"
                    {
                        pokemonImage6.image = UIImage(named: "eelektrik")!
                    }
        if value6.lowercased() == "eelektross"
                    {
                        pokemonImage6.image = UIImage(named: "eelektross")!
                    }
        if value6.lowercased() == "elgyem"
                    {
                        pokemonImage6.image = UIImage(named: "elgyem")!
                    }
        if value6.lowercased() == "beheeyem"
                    {
                        pokemonImage6.image = UIImage(named: "beheeyem")!
                    }
        if value6.lowercased() == "litwick"
                    {
                        pokemonImage6.image = UIImage(named: "litwick")!
                    }
        if value6.lowercased() == "lampent"
                    {
                        pokemonImage6.image = UIImage(named: "lampent")!
                    }
        if value6.lowercased() == "chandelure"
                    {
                        pokemonImage6.image = UIImage(named: "chandelure")!
                    }
        if value6.lowercased() == "axew"
                    {
                        pokemonImage6.image = UIImage(named: "axew")!
                    }
        if value6.lowercased() == "fraxure"
                    {
                        pokemonImage6.image = UIImage(named: "fraxure")!
                    }
        if value6.lowercased() == "haxorus"
                    {
                        pokemonImage6.image = UIImage(named: "haxorus")!
                    }
        if value6.lowercased() == "cubchoo"
                    {
                        pokemonImage6.image = UIImage(named: "cubchoo")!
                    }
        if value6.lowercased() == "beartic"
                    {
                        pokemonImage6.image = UIImage(named: "beartic")!
                    }
        if value6.lowercased() == "cryogonal"
                    {
                        pokemonImage6.image = UIImage(named: "cryogonal")!
                    }
        if value6.lowercased() == "shelmet"
                    {
                        pokemonImage6.image = UIImage(named: "shelmet")!
                    }
        if value6.lowercased() == "accelgor"
                    {
                        pokemonImage6.image = UIImage(named: "accelgor")!
                    }
        if value6.lowercased() == "stunfisk"
                    {
                        pokemonImage6.image = UIImage(named: "stunfisk")!
                    }
        if value6.lowercased() == "mienfoo"
                    {
                        pokemonImage6.image = UIImage(named: "mienfoo")!
                    }
        if value6.lowercased() == "mienshao"
                    {
                        pokemonImage6.image = UIImage(named: "mienshao")!
                    }
        if value6.lowercased() == "druddigon"
                    {
                        pokemonImage6.image = UIImage(named: "druddigon")!
                    }
        if value6.lowercased() == "golett"
                    {
                        pokemonImage6.image = UIImage(named: "golett")!
                    }
        if value6.lowercased() == "golurk"
                    {
                        pokemonImage6.image = UIImage(named: "golurk")!
                    }
        if value6.lowercased() == "pawniard"
                    {
                        pokemonImage6.image = UIImage(named: "pawniard")!
                    }
        if value6.lowercased() == "bisharp"
                    {
                        pokemonImage6.image = UIImage(named: "bisharp")!
                    }
        if value6.lowercased() == "bouffalant"
                    {
                        pokemonImage6.image = UIImage(named: "bouffalant")!
                    }
        if value6.lowercased() == "rufflet"
                    {
                        pokemonImage6.image = UIImage(named: "rufflet")!
                    }
        if value6.lowercased() == "braviary"
                    {
                        pokemonImage6.image = UIImage(named: "braviary")!
                    }
        if value6.lowercased() == "vullaby"
                    {
                        pokemonImage6.image = UIImage(named: "vullaby")!
                    }
        if value6.lowercased() == "mandibuzz"
                    {
                        pokemonImage6.image = UIImage(named: "mandibuzz")!
                    }
        if value6.lowercased() == "heatmor"
                    {
                        pokemonImage6.image = UIImage(named: "heatmor")!
                    }
        if value6.lowercased() == "durant"
                    {
                        pokemonImage6.image = UIImage(named: "durant")!
                    }
        if value6.lowercased() == "deino"
                    {
                        pokemonImage6.image = UIImage(named: "deino")!
                    }
        if value6.lowercased() == "zweilous"
                    {
                        pokemonImage6.image = UIImage(named: "zweilous")!
                    }
        if value6.lowercased() == "hydreigon"
                    {
                        pokemonImage6.image = UIImage(named: "hydreigon")!
                    }
        if value6.lowercased() == "larvesta"
                    {
                        pokemonImage6.image = UIImage(named: "larvesta")!
                    }
        if value6.lowercased() == "volcarona"
                    {
                        pokemonImage6.image = UIImage(named: "volcarona")!
                    }
        if value6.lowercased() == "cobalion"
                    {
                        pokemonImage6.image = UIImage(named: "cobalion")!
                    }
        if value6.lowercased() == "terrakion"
                    {
                        pokemonImage6.image = UIImage(named: "terrakion")!
                    }
        if value6.lowercased() == "virizion"
                    {
                        pokemonImage6.image = UIImage(named: "virizion")!
                    }
        if value6.lowercased() == "tornadus"
                    {
                        pokemonImage6.image = UIImage(named: "tornadus")!
                    }
        if value6.lowercased() == "thundurus"
                    {
                        pokemonImage6.image = UIImage(named: "thundurus")!
                    }
        if value6.lowercased() == "reshiram"
                    {
                        pokemonImage6.image = UIImage(named: "reshiram")!
                    }
        if value6.lowercased() == "zekrom"
                    {
                        pokemonImage6.image = UIImage(named: "zekrom")!
                    }
        if value6.lowercased() == "landorus"
                    {
                        pokemonImage6.image = UIImage(named: "landorus")!
                    }
        if value6.lowercased() == "kyurem"
                    {
                        pokemonImage6.image = UIImage(named: "kyurem")!
                    }
        if value6.lowercased() == "keldeo"
                    {
                        pokemonImage6.image = UIImage(named: "keldeo")!
                    }
        if value6.lowercased() == "meloetta"
                    {
                        pokemonImage6.image = UIImage(named: "meloetta")!
                    }
        if value6.lowercased() == "genesect"
                    {
                        pokemonImage6.image = UIImage(named: "genesect")!
                    }




          
               
       
    }
    
       
}

