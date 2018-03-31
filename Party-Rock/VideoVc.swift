//
//  VideoVc.swift
//  Party-Rock
//
//  Created by Ravi Pinamacha on 8/2/17.
//  Copyright © 2017 Ravi Pinamacha. All rights reserved.
//

import UIKit

class VideoVc: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    private var _paperArt : PaperArt!
    @IBOutlet weak var titleLbl: UILabel!
    var paperArt: PaperArt {
        get {
            return _paperArt
        }
        set {
            _paperArt = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = paperArt.videoTitle
        webView.loadHTMLString(paperArt.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
