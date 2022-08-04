//
//  fireQuestionViewModel.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

import SwiftUI
import CoreAudio

class fireQuestionViewModel:  ObservableObject {
    
    @Published var selectedIndexOfItem = String()
    
    @Published var set = BIoMenViewModel()
    
    @Published var questions : [Qustion] = []

    func loadData(set: String) {
             do {
                 if let file = Bundle.main.path(forResource:"data", ofType: "json") {
                           let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
                    let items = try JSONDecoder().decode([Qustion].self, from: data)

//                     for item in items {
//                         print(item.optionC)
//                                     }

                    self.questions = items

         //           completion(items)
                }

              } catch let DecodingError.dataCorrupted(context) {
                 print(context)
             } catch let DecodingError.keyNotFound(key, context) {
                 print("Key '\(key)' not found:", context.debugDescription)
                 print("codingPath:", context.codingPath)
             } catch let DecodingError.valueNotFound(value, context) {
                 print("Value '\(value)' not found:", context.debugDescription)
                 print("codingPath:", context.codingPath)
             } catch let DecodingError.typeMismatch(type, context)  {
                 print("Type '\(type)' mismatch:", context.debugDescription)
                 print("codingPath:", context.codingPath)
             } catch {
                 print("error: ", error)
             }

    }
}


    
    
    
//    func getQuestion(set: String) {
//     //   let bd = JSONDecoder()
//
//
////        let link : String = ""
//
//        //let link = "https://food.bitlance.xyz/api/categories"
//        //print(link)
//
//
//        func localCalling(link: String) {
//
//            if let path = Bundle.main.path(forResource: "data", ofType: "json") {
//                do {
//                      let dat = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//                    let _posts = try? JSONDecoder().decode([FirebaseQuestion].self, from: dat)
//
////                    for item in _posts! {
////                   //     print(item.question)
////                    }
//
//                  } catch {
//                       // handle error
//                  }
//            }
//        }
//
//    //    localCalling(link: link)
//
//
//    }
//}


//Class 'JSONDecoder' requires that 'Qustion' conform to 'Decodable'
//Class 'JSONDecoder' requires that 'Qustion' conform to 'Decodable
