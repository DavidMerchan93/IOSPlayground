//
//  StoryTableViewViewController.swift
//  NuevaAppTest
//
//  Created by David Merchan on 19/12/24.
//

import UIKit

class StoryTableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabla.delegate = self
        tabla.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath)
        
        celda.textLabel?.text = "Celda \(indexPath.row)"
        celda.detailTextLabel?.text = "Subtitulo \(indexPath.row)"
        
        return celda
        
    }

}
