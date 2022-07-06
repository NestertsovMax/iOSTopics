//
//  listOfTopicsViewController.swift
//  iOSTopics
//
//  Created by M1 on 06.07.2022.
//

import UIKit

class listOfTopicsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private var topics: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Список изученых тем"
        tableView.delegate = self
        tableView.dataSource = self
        
        topics = ["Раздел 1: Основы Swift", "Раздел 2: Объектно-ориентированное програмирование", "Раздел 3: UIKit", "Раздел 4: Еще о возможностях Swift", "Раздел 5: UIKit: Создаем многоэкранные приложения", "Раздел 6: Autolayout", "Раздел 7: UITableView", "Раздел 8: Основы архитектуры приложений. Создаем финальный проект","Раздел 9: Подведение итогов"]
        
    }
}

// Mark: - UITableViewDelegate & UITableViewDataSource

extension listOfTopicsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicTableViewCell", for: indexPath) as! TopicTableViewCell
        let topicName = topics[indexPath.row]
        cell.update(topic: topicName)
        return cell
    }
}
