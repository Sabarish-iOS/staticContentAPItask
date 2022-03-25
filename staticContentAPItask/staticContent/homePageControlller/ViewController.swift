//
//  ViewController.swift
//  staticContentAPItask
//
//  Created by Byot on 25/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var getStaticContentData : staticContentBase? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.callStaticContentAPI()
    }
    func callStaticContentAPI(){
        staticViewModel().callStaticContentAPI(url: "https://ogadmin.ourgenieapp.com/api/v1/aapi/static_content") { result in
            switch result{
            case .success(let data):
                self.getStaticContentData = data
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
    //MARK:-TableViewDataSourceAndDelegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categoryCell = tableView.dequeueReusableCell(withIdentifier: "categoryTableViewCell", for: indexPath) as! categoryTableViewCell
        categoryCell.nameLabel.backgroundColor = .red
        print(getStaticContentData?.parentCategories as Any)
        categoryCell.nameLabel.text = getStaticContentData?.parentCategories![indexPath.row].name
        return categoryCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
