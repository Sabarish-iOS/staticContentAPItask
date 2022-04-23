//
//  servicesViewController.swift
//  staticContentAPItask
//
//  Created by Byot on 26/03/22.
//

import UIKit
import Reachability

class servicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var serviceTableView: UITableView!
    
    var getListingContentData: listing_Base? = nil
    
    let reachability = try? Reachability()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SampleTest")
        self.serviceTableView.delegate = self
        self.serviceTableView.dataSource = self
        self.callServiceAPI()
        

        reachability!.whenReachable = { reachability in
            if reachability.connection == .wifi {
                print("Reachable via WiFi")
            } else {
                print("Reachable via Cellular")
            }
        }
        reachability!.whenUnreachable = { _ in
            print("Not reachable")
        }

        do {
            
            try reachability!.startNotifier()
        } catch let err as NSError {
            print("Unable to start notifier")
            print(err.localizedDescription)
        }
        
    }
    func callServiceAPI(){
        servicesViewModel().callserviceAPI(url: "https://ogadmin.ourgenieapp.com/api/v1/aapi/listing/service-providers/service-list") { result in
            switch result{
            case .success(let data):
                self.getListingContentData = data
                DispatchQueue.main.async {
                    self.serviceTableView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "serviceTableViewCell", for: indexPath) as! serviceTableViewCell
        cell.getListingContentData = self.getListingContentData
        cell.dataCollectionView.reloadData()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
