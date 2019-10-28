//
//  main.swift
//  loadImages
//
//  Created by liyufeng on 2019/10/16.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import SQLite3

print("Hello, World!")

let csvFile = "/Volumes/64/images.csv"
let outPath = "/Volumes/64/images/"

let loadQueue = OperationQueue()
loadQueue.maxConcurrentOperationCount = 0

let source:String = try NSString(contentsOfFile: csvFile, encoding: String.Encoding.utf8.rawValue) as String
let lines = source.split(separator: "\n")
var index = 0

func startNext() {
    while index < lines.count {
        let line = lines[index]
        let lineString = String(line)
        if let url = URL(string: lineString) {
            let outFile = outPath + url.lastPathComponent
            if !FileManager.default.fileExists(atPath: outFile) {
                loadUrl(urlString: lineString, outFile: outFile)
            }
        }
        index = index + 1
        print(index)
    }
    loadQueue.maxConcurrentOperationCount = 10
    loadQueue.waitUntilAllOperationsAreFinished()
    print(loadQueue.operations.count)
}

func loadUrl(urlString:String,outFile:String) {
    loadQueue.addOperation {
        if let url = URL(string: urlString) {
            do {
                let data = try Data(contentsOf: url)
                try data.write(to: URL(fileURLWithPath: outFile))
                print("\(urlString)-->\(outFile)")
            } catch {
                print("\(urlString):error:\(error)")
            }
        }
    }
}



startNext()
print("finish")



