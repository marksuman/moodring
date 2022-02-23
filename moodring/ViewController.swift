//
//  ViewController.swift
//  moodring
//
//  Created by Mark Suman on 2/21/22.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var lineChart: LineChart!
    @IBOutlet weak var curvedlineChart: LineChart!
    @IBOutlet weak var happyView: UIView!
    @IBOutlet weak var boredView: UIView!
    @IBOutlet weak var sadView: UIView!
    @IBOutlet weak var profileImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.happyView.layer.cornerRadius = 40
        self.boredView.layer.cornerRadius = 40
        self.sadView.layer.cornerRadius = 40
        self.profileImage.layer.cornerRadius = 65
        
//        let dataEntries = generateRandomEntries()
        let dataEntries = [
            PointEntry(value: 80, label: "Monday"),
            PointEntry(value: 65, label: "Tuesday"),
            PointEntry(value: 50, label: "Wednesday"),
            PointEntry(value: 42, label: "Thursday"),
            PointEntry(value: 77, label: "Friday"),
            PointEntry(value: 86, label: "Saturday"),
            PointEntry(value: 89, label: "Sunday"),
            PointEntry(value: 75, label: "Monday"),
            PointEntry(value: 80, label: "Tuesday"),
            PointEntry(value: 60, label: "Wednesday"),
            PointEntry(value: 66, label: "Thursday"),
            PointEntry(value: 53, label: "Friday"),
            PointEntry(value: 78, label: "Saturday"),
            PointEntry(value: 82, label: "Sunday"),
            PointEntry(value: 75, label: "Monday"),
            PointEntry(value: 80, label: "Tuesday"),
            PointEntry(value: 60, label: "Wednesday"),
            PointEntry(value: 66, label: "Thursday"),
            PointEntry(value: 53, label: "Friday"),
            PointEntry(value: 78, label: "Saturday"),
            PointEntry(value: 82, label: "Sunday")
        ]
        
//        lineChart.dataEntries = dataEntries
//        lineChart.isCurved = false
        
        curvedlineChart.dataEntries = dataEntries
        curvedlineChart.isCurved = true
    }
    
    private func generateRandomEntries() -> [PointEntry] {
        var result: [PointEntry] = []
        for i in 0..<100 {
            let value = Int(arc4random() % 500)
            
            let formatter = DateFormatter()
            formatter.dateFormat = "d MMM"
            var date = Date()
            date.addTimeInterval(TimeInterval(24*60*60*i))
            
            result.append(PointEntry(value: value, label: formatter.string(from: date)))
        }
        return result
    }


}

