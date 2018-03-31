//
//  ViewController.swift
//  Party-Rock
//
//  Created by Ravi Pinamacha on 8/2/17.
//  Copyright © 2017 Ravi Pinamacha. All rights reserved.
//

import UIKit

class MainVc: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    var paperArts  = [PaperArt]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let p1 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
        let p2 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
         let p3 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
         let p4 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
         let p5 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
           let p6 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
           let p7 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
           let p8 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
           let p9 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
           let p10 = PaperArt(imageURL: "http://www.brwnpaperbag.com/wp-content/uploads/2016/10/a-thorn-side-1.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/870JPSsUmc0\" frameborder=\"0\" allowfullscreen></iframe>" , videoTitle: "DIY Paper Art One")
        
        
        paperArts.append(p1)
        paperArts.append(p2)
        paperArts.append(p3)
        paperArts.append(p4)
        paperArts.append(p5)
        paperArts.append(p6)
        paperArts.append(p7)
        paperArts.append(p8)
        paperArts.append(p9)
        paperArts.append(p10)
        
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paperArts.count
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Pcell", for: indexPath) as? PartyCell {
            let paperArt = paperArts[indexPath.row]
            cell.UpdateUI(paperArt: paperArt)
            
            return cell
        }
            
             return UITableViewCell()
     
       
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let paperArt = paperArts[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: paperArt)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVc {
            if let paper = sender as? PaperArt {
                destination.paperArt = paper
            }
        }
    }
}

