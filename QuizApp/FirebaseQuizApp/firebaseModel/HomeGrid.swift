//
//  FirebaseQuestion.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 16/7/22.
//


import Foundation

//MARK: Home Grid Round setup
struct HomeGrid {
    
    //each round number quiz qustion appear
    static let eachRoundQuiz = 5
    
  // it's based eachRoundQuiz quiz. so if you set eachRoundQuiz 10 and round 10  then your json file minimum 100 items present. it it's less then 100 then app will crush out of index. my suggestion at fast count your json file located item then set it. good luck .okay koliza
    static let round = 4
    
    static func getImageRound(index : Int, isQuiz : Bool) -> String {
//        isQuiz = "lv\(index + 1)"
        if isQuiz  {
            return "lv\(index + 1)"
        }else{
            return "lv\(index + 4)"
        }
   }
}


