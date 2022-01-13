//
//  ViewController.swift
//  Test1
//
//  Created by Jay Muthialu on 1/3/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad()  {
        super.viewDidLoad()
        
        Task {
            await doAsyncTask()
            print("Async task completed")
        }
    }
    
    func doAsyncTask() async {
        do {
            try await Task.sleep(nanoseconds: 200000000)
        } catch {
            print("Error: \(error)")
        }
    }

}
