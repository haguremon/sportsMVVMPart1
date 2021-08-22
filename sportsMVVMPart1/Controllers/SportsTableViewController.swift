//
//  SportsTableViewController.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//

import UIKit

class SportsTableViewController: UITableViewController {
    
    private var  articlesViewModel: ArticlesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationController?.navigationBar.scrollEdgeAppearance?.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=jp&category=sports&apiKey=d350da23f44e42ffac319622948514d8")!
        WebService().getarticles(url: url) { [weak self] article in
            
            guard let article = article else { return }
            //ここで初期化
            self?.articlesViewModel = ArticlesViewModel(articles: article)
            
            DispatchQueue.main.async {
                
                self?.tableView.reloadData()
                
            }
        }
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return  articlesViewModel == nil ? 0 : self.articlesViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.articlesViewModel.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArticleTableViewCell
        
        let article = self.articlesViewModel.articleForRowAt(indexPath.row)
        
        cell.author.text = article.author
        cell.title.text = article.title
        cell.descriptions.text = article.description
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
