//
//  AppView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//

import SwiftUI
var library = Library()

struct AppView: View {
    var body: some View {
      TabView {
        LibraryView()
        .tabItem {
          Image(systemName: "books.vertical")
          Text("Library")
        }
        NewBookView()
        .tabItem {
          Image(systemName: "rectangle.stack.badge.plus")
          Text("New Book")
        }
        ChartsView()
        .tabItem {
          Image(systemName: "chart.bar.xaxis")
          Text("Charts")
        }
      }
      .environmentObject(library)
    }
  }

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
      AppView()
    }
}
