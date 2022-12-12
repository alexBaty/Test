//
//  PostTableViewCell.swift
//  Test
//
//  Created by Alexander Batyshev on 11.12.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    let authorCell: UILabel = {
        var authorCell = UILabel(frame: .zero)
        authorCell.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        authorCell.numberOfLines = 2
        authorCell.translatesAutoresizingMaskIntoConstraints = false
        return authorCell
    }()

    let descriptionCell: UILabel = {
        var descriptionCell = UILabel(frame: .zero)
        descriptionCell.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        descriptionCell.textColor = .systemGray
        descriptionCell.numberOfLines = 0
        descriptionCell.translatesAutoresizingMaskIntoConstraints = false
        return descriptionCell
    }()

    let imageCell: UIView = {
        var imageCell = UIView(frame: .zero)
        imageCell.contentMode = .scaleAspectFit
        imageCell.backgroundColor = .black
        imageCell.translatesAutoresizingMaskIntoConstraints = false
        return imageCell
    }()

    let likesCell:UILabel = {
        var likesCell = UILabel(frame: .zero)
        likesCell.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        likesCell.textColor = .black
        likesCell.translatesAutoresizingMaskIntoConstraints = false
        return likesCell
    }()

    let viewsCell:UILabel = {
        var viewsCell = UILabel(frame: .zero)
        viewsCell.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        viewsCell.textColor = .black
        viewsCell.translatesAutoresizingMaskIntoConstraints = false
        return viewsCell
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        getCells()
        createPostTableViewCellConstraints()
    }

    private func getCells() {
        contentView.addSubview(authorCell)
//        contentView.addSubview(descriptionCell)
//        contentView.addSubview(imageCell)
//        contentView.addSubview(likesCell)
//        contentView.addSubview(viewsCell)
    }

    func createPostTableViewCellConstraints() {

        NSLayoutConstraint.activate([
//            contentView.heightAnchor.constraint(equalToConstant: 500),
//            contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            authorCell.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            authorCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
//            authorCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
//            authorCell.heightAnchor.constraint(equalToConstant: 20),
//            imageCell.topAnchor.constraint(equalTo: authorCell.bottomAnchor, constant: 12),
//            imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            imageCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            imageCell.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
//            descriptionCell.topAnchor.constraint(equalTo: imageCell.bottomAnchor, constant: 16),
//            descriptionCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            descriptionCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//            descriptionCell.heightAnchor.constraint(equalToConstant: 14),
//            likesCell.topAnchor.constraint(equalTo: descriptionCell.bottomAnchor, constant: 16),
//            likesCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            likesCell.heightAnchor.constraint(equalToConstant: 16),
//            viewsCell.topAnchor.constraint(equalTo: descriptionCell.bottomAnchor, constant: 16),
//            viewsCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
//            viewsCell.heightAnchor.constraint(equalToConstant: 16)
        ])
    }











    
}
