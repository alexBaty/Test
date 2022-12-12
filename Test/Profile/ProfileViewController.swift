//
//  ProfileViewController.swift
//  Test
//
//  Created by Alexander Batyshev on 30.11.2022.
//

import UIKit

struct ModelPost {
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
}

let postOne = ModelPost(author: "Petr", description: "postOne", image: "postOne", likes: 460, views: 560)

let postTwo = ModelPost(author: "Vasy", description: "postTwo", image: "postTwo", likes: 56, views: 451)

let postThree = ModelPost(author: "Vlad", description: "postThree", image: "postThree", likes: 245, views: 457)

let postFour = ModelPost(author: "Alex", description: "postFour", image: "postFour", likes: 23, views: 43)


class ProfileViewController: UIViewController {

    private var cellID = "PostTableViewCell"

    private var dataSource: [ModelPost] = [postOne, postTwo, postThree, postFour]

    let tableView: UITableView = {
        var tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self

        self.tableView.register(PostTableViewCell.self, forCellReuseIdentifier: cellID)

        view.addSubview(tableView)
        createTableViewconstraints()


    }

    func createTableViewconstraints() {



        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//            tableView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
//            tableView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width)
        ])
    }


}

//extension ProfileViewController {
//
//    func createProfileViewConstraints() {
//
//        let safeLayout = self.view.safeAreaLayoutGuide
//        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            profileHeaderView.topAnchor.constraint(equalTo: safeLayout.topAnchor, constant: 0),
//            profileHeaderView.leadingAnchor.constraint(equalTo: safeLayout.leadingAnchor, constant: 0),
//            profileHeaderView.trailingAnchor.constraint(equalTo: safeLayout.trailingAnchor, constant: 0),
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
//        ])
//    }
//
//        func createButton() -> UIButton {
//            let button = UIButton(frame: .zero)
//            button.setTitle("Button", for: .normal)
//            button.backgroundColor = .systemPink
//            button.translatesAutoresizingMaskIntoConstraints = false
//            self.view.addSubview(button)
//
//            NSLayoutConstraint.activate([
//            button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
//            button.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0),
//            button.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0)
//            ])
//
//            return button
//        }
//
//    func hideKeyboardWhenTappedAround() {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(ProfileViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! PostTableViewCell
        cell.authorCell.text = dataSource[indexPath.item].author
//        cell.imageCell = dataSource[indexPath.item].image
//        cell.descriptionCell.text = dataSource[indexPath.item].description
        return cell
    }


}



