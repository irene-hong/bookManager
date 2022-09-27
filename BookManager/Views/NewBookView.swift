//
//  NewBookView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//

import SwiftUI

struct NewBookView: View {
  var genders = ["Male", "Female", "Other"]
  @EnvironmentObject var library: Library
  @State private var title = ""
  @State private var author = ""
  @State private var gender = "Male"
  @State private var displayed = false
  
    var body: some View {
      VStack {
        Text("New Book")
          .font(.title)
          .fontWeight(.bold)
        Form {
          TextField("Title", text: $title)
          TextField("Author", text: $author)
          // FIXME: Picker disabled!
          Picker(selection: $gender,
                 label: Text("Author Gender")) {
            ForEach(Gender.allGenders, id: \.self) {
              Text($0)
            }
          }
          Toggle(isOn: $displayed,
                 label: {
                   Text("Display book in library")
          })
          Button("Add Book") {
            library.addBookToLibrary(title: title, author: author, gender: gender, displayed: displayed)
          }
        }
      }
    }
}

struct NewBookView_Previews: PreviewProvider {
    static var previews: some View {
        NewBookView()
    }
}
