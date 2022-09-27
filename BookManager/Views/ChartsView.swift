//
//  ChartsView.swift
//  BookManager
//
//  Created by irenehong on 2022/9/26.
//
import Charts
import SwiftUI

struct ChartsView: View {
  @EnvironmentObject var library: Library
    var body: some View {
      VStack {
        Chart {
             BarMark(
               x: .value("Mount", "Male"),
               y: .value("Value", library.getMaleAuthoredBooks().count)
             )
             BarMark(
               x: .value("Mount", "Female"),
               y: .value("Value", library.getFemaleAuthoredBooks().count)
             )
           }
           .frame(height: 250)
           .padding(20)
           
           Spacer()  // To push the chart to the top instead of centering
      Chart {
           BarMark(
             x: .value("Mount", "William Shakespeare"),
             y: .value("Value", library.getBooksFor("William Shakespeare").count)
           )
          BarMark(
            x: .value("Mount", "Jane Austen"),
            y: .value("Value", library.getBooksFor("Jane Austen").count)
          )
          BarMark(
            x: .value("Mount", "J.R.R. Tolkein"),
            y: .value("Value", library.getBooksFor("J.R.R. Tolkein").count)
          )
          BarMark(
            x: .value("Mount", "Charles Dickens"),
            y: .value("Value", library.getBooksFor("Charles Dickens").count)
          )
          BarMark(
            x: .value("Mount", "Charlotte Bronte"),
            y: .value("Value", library.getBooksFor("Charlotte Bronte").count)
          )
         }
         .frame(height: 250)
         .padding(20)
         .foregroundColor(Color.green)
         
         Spacer()  // To push the chart to the top instead of centering
      }
    }
}

struct ChartsView_Previews: PreviewProvider {
  
    static var previews: some View {
        ChartsView()
    }
}
