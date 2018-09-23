//
//  DownloaderViewController.swift
//  QDDownloader
//
//  Created by Stu Dobbie on 23/9/18.
//  Copyright © 2018 Quoll Designs. All rights reserved.
//

import UIKit

class DownloaderViewController: UIViewController {

    private var timer: Timer?
    private let totalSecs: TimeInterval = 5
    
    @IBOutlet var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        progressView.progress = 0
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let start = Date()
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [weak self] timer in
            guard let self = self else { return }
            let secs = Date().timeIntervalSince(start)
            DispatchQueue.main.async {
                self.progressView.progress = Float(secs / self.totalSecs)
            }
            if secs > self.totalSecs {
                timer.invalidate()
                self.progresToFinishWindow()
            }
        })
        
    }
    
    func progresToFinishWindow() {
        DispatchQueue.main.async {
            self.progressView.progress = 1.0
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + DispatchTimeInterval.seconds(1)) {
            self.performSegue(withIdentifier: "DownloadFinishedSegue", sender: self)
        }
    }
}
