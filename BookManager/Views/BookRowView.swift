//
//  BookRowView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//
import SwiftUI

struct BookRowView: View {
  var book: Book
  var body: some View {
    NavigationLink(
       destination: BookDetailsView(book: book),
       label: {
         Text(book.title)
           .fontWeight(.bold)
           .font(.body)
      })
   }
}
