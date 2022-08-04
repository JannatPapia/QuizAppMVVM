//
//  FirebaseQuestion.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 16/7/22.
//
//
//import SwiftUI
////import FirebaseCore
////import FirebaseFirestore
////import FirebaseAuth
//// ...
//      
////import FirebaseFirestoreSwift
//
//struct FirebaseQuestion: Codable {
//    
//    // It will fetch doc ID...
////    @DocumentID var id: String?
// //   var id: String { UUID().uuidString }
//        var question : String = ""
//        var optionA : String = ""
//        var optionB : String = ""
//        var optionC : String = ""
//        var optionD : String = ""
//        var answer : String = ""
////    var question : String?
////    var optionA : String?
////    var optionB : String?
////    var optionC : String?
////    var optionD : String?
////    var answer : String?
//    
//    // For checking......
//    var isSubmitted = false
//    var complete = false
//    
//    enum CodingKeys: String, CodingKey {
//        case answer = "answer"
//        case optionA = "optionA"
//        case optionB = "optionB"
//        case optionC = "optionC"
//        case optionD = "optionD"
//        case question = "qustion"
//      //  case category = "category"
//     //   case image = "image"
//    //    case sl = "sl"
//    }
//    
//    //rules_version = '2';
////    service cloud.firestore {
////      match /databases/{database}/documents {
////        match /{document=**} {
////          allow read, write: if false;
////        }
////      }
////    }
////     CodingKey
////    enum CodingKeys : String {
////       case question
////        case optionA = "a"
////        case optionB = "b"
////        case optionC = "c"
////        case answer
////
////
////
//    }
//    
//
import Foundation


//MARK: Home Grid Round setup
struct HomeGrid {
    
    //each round number quiz qustion appear
    static let eachRoundQuiz = 5
    
  // it's based eachRoundQuiz quiz. so if you set eachRoundQuiz 10 and round 10  then your json file minimum 100 items present. it it's less then 100 then app will crush out of index. my suggestion at fast count your json file located item then set it. good luck .okay koliza
    static let round = 4
    
    static func getImageRound(index : Int, isQuiz : Bool) -> String {
        if isQuiz {
            return "lv\(index + 1)"
        }else{
            return "lv\(index + 4)"
        }
    }
}


