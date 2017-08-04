//
//  DayTableViewController.swift
//  MargaretNYCWeather
//
//  Created by C4Q on 8/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class DayTableViewController: UITableViewController {
        var weatherArray = [Weather]()
        var myEndpoint = "http://api.aerisapi.com/forecasts/11101?client_id=FGbf4FmP4HwrvhZefoo0C&client_secret=dCNnKu1W2hN9Zfq4B2PYUsNvOSXF7qqoJD8vCHu3"
        override func viewDidLoad() {
            super.viewDidLoad()
            APIRequestManager.manager.getData(endPoint: myEndpoint) { (data: Data?) in
                if let validData = data,
                    let weatherThing = Weather.getWeather(data: validData) {
                    self.weatherArray = weatherThing
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
            
            
        }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)

        let aWeatherThing = weatherArray[indexPath.row]
        //cell.backgroundColor = UIColor.darkGray
        cell.textLabel?.text = aWeatherThing.dateTimeISO
        //cell.detailTextLabel?.text = ("\(anElementThing.symbol)(\(anElementThing.number)) \(anElementThing.weight)")
        //APIRequestManager.manager.getData(endPoint: aWeatherThing.thumbnailImage) { (data: Data?) in
//            if let validData = data,
//                let image = UIImage(data: validData) {
//                
                DispatchQueue.main.async {
                    if cell == tableView.cellForRow(at: indexPath) {
                        cell.setNeedsLayout()
                        print ("Correct \(indexPath.row)")
                    }
                    else {
                        print ("Whoops, too late for \(indexPath.row)")
                    }
                }
        return cell
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
