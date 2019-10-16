//
//  ViewController.swift
//  loadfiles
//
//  Created by liyufeng on 2019/10/16.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    let csvFile = "/Users/liyufeng/Desktop/jpegs/images.csv"
    let outPath = "/Users/liyufeng/Desktop/jpegs/images/"
    
    let getFileoperationQueue = OperationQueue()
    let loadQueue = OperationQueue()
    
    var lines : [Substring] = []
    var index = 0
    

    func startNext() {
        getFileoperationQueue.addOperation {
            while self.index < self.lines.count {
                let line = self.lines[self.index]
                let lineString = String(line)
                if let url = URL(string: lineString) {
                    let outFile = self.outPath + url.lastPathComponent
                    if !FileManager.default.fileExists(atPath: outFile) {
                        self.loadUrl(urlString: lineString, outFile: outFile)
                    }
                }
                self.index = self.index + 1
            }
        }
        getFileoperationQueue.waitUntilAllOperationsAreFinished()
    }

    func loadUrl(urlString:String,outFile:String) {
        getFileoperationQueue.addOperation {
            if let url = URL(string: urlString) {
                let task = URLSession.shared.dataTask(with: url) { (data, res, err) in
                    if let err = err {
                        print(err)
                    }else{
                        if let data = data {
                            do {
                                try data.write(to: URL(fileURLWithPath: outFile))
                                print(url)
                            } catch {
                                print(error)
                            }
                        }
                    }
                    self.startNext()
                }
                task.resume()
            }
        }
        loadQueue.waitUntilAllOperationsAreFinished()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getFileoperationQueue.maxConcurrentOperationCount = 1

        
        loadQueue.maxConcurrentOperationCount = 10
        
        do {
            let source:String = try NSString(contentsOfFile: csvFile, encoding: String.Encoding.utf8.rawValue) as String
            lines = source.split(separator: "\n")
            index = 0
            
            startNext()
        } catch {
            print(error)
        }
        
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    

}

