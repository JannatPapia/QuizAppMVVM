//
//  QuizModelfire.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//
//
import Foundation
import SwiftUI
//
//
//struct QuizModelfire : Codable {
//
////    let answer : String?
////    let optionsA : String?
////    let optionsB : String?
////    let optionsC : String?
////    let optionsD : String?
////    let qustion : String?
//
//    let question : String?
//     let optionA : String?
//     let optionB : String?
//     let optionC : String?
//     let optionD : String?
//     let answer : String?
////    let category : String?
////    let image: String?
////    let sl : Int?
////
////
////    enum CodingKeys: String, CodingKey {
////        case answer = "answer"
////        case optionA = "optionA"
////        case optionB = "optionB"
////        case optionC = "optionC"
////        case optionD = "optionD"
////        case question = "qustion"
////      //  case category = "category"
////     //   case image = "image"
////        case sl = "sl"
////    }
//    
//   
//
//
////    import Foundation
//
//    // MARK: - QuestionModelElement
//    struct QuestionModelElement:  Codable {
//      //  var id: String { UUID().uuidString }
//        let sl: Int
//        let optionA, optionB, optionC, optionD: String
//        let answer: String
//        let question: String?
//        
////        enum CodingKeys: String, CodingKey {
////               case question = "question"
////               case optionA = "optionA"
////               case optionB = "optionB"
////               case optionC = "optionC"
////               case optionD  = "optionD"
////               case answer = "answer"
////           }
//       
//
//    enum Category: String, Codable {
//        case alabamaDmv = "Alabama dmv"
//    }
//        
////        var isSubmitted = false
////        var completed = false
//}


struct Qustion:Identifiable, Codable {
    var id: String { UUID().uuidString }
    var question : String = ""
    var optionA : String  = ""
    var optionB : String  = ""
    var optionC : String  = ""
    var optionD : String  = ""
    var answer: String  = ""
    
    enum CodingKeys: String, CodingKey {
         case question = "question"
         case optionA = "optionA"
         case optionB = "optionB"
         case optionC = "optionC"
         case optionD  = "optionD"
         case answer = "answer"
     }
    
  //  var image  : String = ""
    //for checking
    var isSubmitted = false
    var completed = false
}



//struct nazmul: Codable {
//  //  @DocumentID var id: String?
// //   var id: String { UUID().uuidString }
//    let question : String?
//    let optionA : String
//    let optionB : String
//    let optionC : String
//    let optionD : String
//    let answer: String
//
//    //for checking
//    var isSubmitted = false
//    var completed = false
//
////    enum Category: String, Codable {
////        case alabamaDmv = "Alabama dmv"
////    }
//
//    enum CodingKeys: String, CodingKey {
//        case question = "question"
//        case optionA = "optionA"
//        case optionB = "optionB"
//        case optionC = "optionC"
//        case optionD  = "optionD"
//        case answer = "answer"
//    }
//
//}
