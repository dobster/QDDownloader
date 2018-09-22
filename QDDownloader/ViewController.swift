//
//  ViewController.swift
//  QDDownloader
//
//  Created by Stu Dobbie on 23/9/18.
//  Copyright © 2018 Quoll Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func goButtonTapped(_ sender: Any) {
        goForIt()
    }
    
    func goForIt() {
        performSegue(withIdentifier: "DownloadPopoverSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: self)
    }
    
    @IBAction func unwindToMasterViewController(sender: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
}

