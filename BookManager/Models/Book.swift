//
//  Book.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//

import Foundation

struct Book: Identifiable, Comparable {
  static func < (lhs: Book, rhs: Book) -> Bool {
    return lhs.title < rhs.title
  }
  static func ==(lhs: Book, rhs: Book) -> Bool {
    return lhs.title == rhs.title && lhs.author == rhs.author
  }
  
  var title: String
  var author: String
  var gender: String
  var displayed: Bool
  var id = UUID()
  
  init(title: String, author: String, gender: String, displayed: Bool) {
    self.title = title
    self.author = author
    self.gender = gender
    self.displayed = displayed
  }
  
  
}
