//
//  ViewController1.swift
//  Kaspi.kz
//
//  Created by Ramazan Kalabay on 13.06.2024.
//

import UIKit
import SnapKit

class ViewController1: UIViewController {
    
    let scrollView = UIScrollView()
        let contentView = UIView()
        let searchField = UISearchBar()
        let imageScrollView = UIScrollView()
        let imageStackView = UIStackView()
        let additionalButton = UIButton()
        let secondImageScrollView = UIScrollView()
        let secondImageStackView = UIStackView()
        let lastImageView = UIImageView()

        override func viewDidLoad() {
            super.viewDidLoad()

            view.addSubview(scrollView)
            scrollView.addSubview(contentView)
            contentView.addSubview(searchField)
            contentView.addSubview(imageScrollView)
            imageScrollView.addSubview(imageStackView)
            contentView.addSubview(additionalButton)
            contentView.addSubview(secondImageScrollView)
            secondImageScrollView.addSubview(secondImageStackView)
            contentView.addSubview(lastImageView)

            setupScrollView()
            setupSearchField()
            setupImageScrollView()
            setupAdditionalButton()
            setupSecondImageScrollView()
            setupLastImageView()
        }

        func setupScrollView() {
            scrollView.snp.makeConstraints { make in
                make.edges.equalTo(view.safeAreaLayoutGuide)
            }

            contentView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
                make.width.equalToSuperview()
                make.bottom.equalTo(lastImageView.snp.bottom).offset(10) // Устанавливаем нижний отступ контента
            }
        }

        func setupSearchField() {
            searchField.placeholder = "Поиск по Kaspi.kz"
            searchField.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(0)
                make.left.right.equalToSuperview().inset(0)
                make.height.equalTo(50)
            }
        }

        func setupImageScrollView() {
            imageScrollView.snp.makeConstraints { make in
                make.top.equalTo(searchField.snp.bottom).offset(2)
                make.left.right.equalToSuperview()
                make.height.equalTo(160)
            }

            imageStackView.axis = .horizontal
            imageStackView.distribution = .fillEqually
            imageStackView.spacing = 10

            imageStackView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
                make.height.equalToSuperview()
            }

            // Добавляем пример изображений
            for i in 1...2 {
                let imageView = UIImageView()
                imageView.contentMode = .scaleAspectFill
                imageView.image = UIImage(named: "1111\(i)")
                imageStackView.addArrangedSubview(imageView)

                imageView.snp.makeConstraints { make in
                    make.width.equalTo(385) // Ширина для длинных картин
                }
            }
        }

        func setupAdditionalButton() {
            additionalButton.setImage(UIImage(named: "111"), for: .normal)
            additionalButton.imageView?.contentMode = .scaleAspectFill
            additionalButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

            additionalButton.snp.makeConstraints { make in
                make.top.equalTo(imageScrollView.snp.bottom).offset(2)
                make.left.right.equalToSuperview().inset(0)
                make.height.equalTo(260)
            }
        }

        func setupSecondImageScrollView() {
            secondImageScrollView.snp.makeConstraints { make in
                make.top.equalTo(additionalButton.snp.bottom).offset(2)
                make.left.right.equalToSuperview()
                make.height.equalTo(130) // Высота для картин 804x483
            }

            secondImageStackView.axis = .horizontal
            secondImageStackView.distribution = .fillEqually
            secondImageStackView.spacing = 0

            secondImageStackView.snp.makeConstraints { make in
                make.edges.equalToSuperview()
                make.height.equalToSuperview()
            }

            // Добавляем пример изображений
            for i in 1...2 {
                let imageView = UIImageView()
                imageView.contentMode = .scaleAspectFill
                imageView.image = UIImage(named: "12\(i)")
                secondImageStackView.addArrangedSubview(imageView)

                imageView.snp.makeConstraints { make in
                    make.width.equalTo(250) // Ширина для картин 804x483
                    make.height.equalTo(140)
                }
            }
        }

        func setupLastImageView() {
            lastImageView.image = UIImage(named: "test3")
            lastImageView.contentMode = .scaleAspectFill

            lastImageView.snp.makeConstraints { make in
                make.top.equalTo(secondImageScrollView.snp.bottom).offset(2)
                make.left.right.equalToSuperview().inset(0)
                make.height.equalTo(200)
                make.bottom.equalToSuperview().offset(-10)
            }
        }

    @objc func buttonTapped() {
         // Переход к CustomViewController
         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         if let newViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
             navigationController?.pushViewController(newViewController, animated: true)
         }
     }
    }
