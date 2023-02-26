//
//  ViewController.swift
//  Binary Counter
//
//  Created by 라완 💕 on 22/04/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var number = [1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000, 100000000000, 1000000000000, 10000000000000, 100000000000000]
    

    @IBOutlet weak var totalLabel: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let count = number[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Counter", for: indexPath) as! CounterTableViewCell
        cell.numberLabel.text = "\(count)"
        cell.delegate = self
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
var total = 0

}

extension ViewController: CounterTableViewCellDelegate {

    func theTotalPlus(counter: Int){
        total += counter
        totalLabel.text = "Total:\(total)"
    }
    func theTotalMinus(counter: Int) {
        total -= counter
        totalLabel.text = "Total:\(total)"
    }
}

