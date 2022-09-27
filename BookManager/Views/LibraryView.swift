//
//  LibraryView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//

import SwiftUI

struct LibraryView: View {
  @EnvironmentObject var library: Library
  
  var body: some View {
     NavigationView {
       List {
         ForEach(library.books) { book in
           BookRowView(book: book)
         }.onDelete(perform: removeRows)
       }.navigationBarTitle("Library")
     }
   }
  
  func removeRows(at offsets: IndexSet) {
    library.books.remove(atOffsets: offsets)
  }
}



struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
