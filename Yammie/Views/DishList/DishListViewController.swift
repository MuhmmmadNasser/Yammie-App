//
//  DishListViewController.swift
//  Yammie
//
//  Created by Mohamed on 16/11/2021.
//

import UIKit
import ProgressHUD

class DishListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var category: Dishcategory!
    var dishs: [Dish] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
        
        ProgressHUD.show()
        NetworkService.shared.fetchCategoryDishes(categoryId: category.id ?? "") { (result) in
            switch result {
            case .success(let dishes):
                ProgressHUD.dismiss()
                self.dishs = dishes
                self.tableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            
            }
        }
        
        
        
    }
    private func registerCells(){
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}
extension DishListViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setup(dish: dishs[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishs[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
