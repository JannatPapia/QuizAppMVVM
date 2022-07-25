//
//  fireQuestionViewModel.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

import SwiftUI
import CoreAudio

class fireQuestionViewModel:  ObservableObject {
    
 //   @Published var questions = [QuestionModelElement]()
//    @Published var questions  = [nazmul]()
    @Published var questions : [Qustion] = []

    func loadData(set: String) {
//        guard let file = Bundle.main.url(forResource: "data", withExtension: "json")
//            else {
//                return
//            }
//        do {
//
//            let data = try Data(contentsOf: file)
//            let recievedData = try JSONDecoder().decode([Qustion].self, from: data)
//
//            self.questions1 = recievedData
//
//            DispatchQueue.main.async {
//                self.questions = data.compactMap({ (doc) -> nazmul? in
//                    return try? doc.data(as: nazmul.self)
//                })
//            }
//            print(self.questions)
//        }
//        catch {
//            print("Error while decoding json")
//        }
//
             do {
                 if let file = Bundle.main.path(forResource:"data", ofType: "json") {
                           let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
             //        let _posts = try? JSONDecoder().decode([QuestionModelElement].self, from: data)
                     //try Data(contentsOf: file)

              //      UserDefaults(suiteName: "group.com.shohagh.widgetvocabulary")!.set(word, forKey: "latter")
             //        var quizToOpinion = [QuestionModelElement]()
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
