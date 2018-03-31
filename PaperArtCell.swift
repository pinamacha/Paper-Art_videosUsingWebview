//
//  PartyCellTableViewCell.swift
//  Party-Rock
//
//  Created by Ravi Pinamacha on 8/2/17.
//  Copyright © 2017 Ravi Pinamacha. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var VideoPreviewImage: UIImageView!
    @IBOutlet weak var VideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func UpdateUI(paperArt : PaperArt) {
        VideoTitle.text = paperArt.videoTitle
        
        let url = URL(string: paperArt.imageURL)
        DispatchQueue.global().async {
            
            let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
            DispatchQueue.main.async {
               self.VideoPreviewImage.image = UIImage(data: data!)
            }
        }
        //VideoPreviewImage.image = UIImage(named: partyRock.imageURL)
       
        //TODO : Set image from url
        
    }

}
