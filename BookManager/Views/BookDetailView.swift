//
//  BookDetailView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//

import SwiftUI

struct BookDetailsView: View {
  var book: Book
  var body: some View {
    VStack {
      Text(book.title)
      Text(book.author)
      Text(book.gender)
    }
   }
}
