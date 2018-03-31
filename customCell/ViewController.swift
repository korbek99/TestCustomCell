//
//  ViewController.swift
//  customCell
//
//  Created by Jose Bustos H on 23.03.2015.
//  Copyright © 2015 Jose Bustos H. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let animes = ["bulma01", "bulma02", "bulma03", "bulma04", "bulma05", "bulma06", "bulma07", "bulma8", "bulma9", "bulma10", "bulma11","bulma12", "bulma13", "bulma14","shampoo1","shampoo2","shampoo3","shampoo4","shampoo5"]
    
    var nameArray = [String]()
    var dobArray = [String]()
    var imgURLArray = [String]()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (animes.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (animes[indexPath.row] + ".jpg"))
        cell.myLabel.text = animes[indexPath.row]
        
       //if let name = string:animes[indexPath.row]) {
            self.nameArray.append(animes[indexPath.row])
           print(nameArray)
       // }
        
     //   if let name = UIImage(named: (animes[indexPath.row] + ".jpg")) {
      //      self.imgURLArray.append(NSURL(string: name as! String)
      //  }
        
        return (cell)
    }

    
    ///for showing next detailed screen with the downloaded info
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        //vc.imageString = imgURLArray[indexPath.row]
        vc.nameString = nameArray[indexPath.row]
        //vc.dobString = dobArray[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

