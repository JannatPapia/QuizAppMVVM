//
//  fireQuestionViewModel.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//

import SwiftUI
//import CoreAudio

struct BIoMenViewModel {
var set = Int()
var rewardDOnem = Bool()
var title = String()
var subtitle = String()
var isQuiz = Bool()
var optionChosed = 0
var storeManager = Bool()
var showingActionSheet = Bool()
var show = Bool()
var showOnbrodingScreen = Bool()
}

class fireQuestionViewModel:  ObservableObject {
    
    @Published var selectedIndexOfItem = String() 
    
    @Published var set = BIoMenViewModel() // instance for BIoMenViewModel
    
    //MARK: Create instance for Question Model
    @Published var questions : [Qustion] = []
  //  @Published var items: Int

    func loadData(fileName:String,completion:@escaping ([Qustion]) -> ()) { // filename = set(QuizApp)
             do {
                if let file = Bundle.main.url(forResource:fileName, withExtension: "json") {
                           let data = try Data(contentsOf: file)
                    
              //      UserDefaults(suiteName: "group.com.shohagh.widgetvocabulary")!.set(word, forKey: "latter")

                    let items = try JSONDecoder().decode([Qustion].self, from: data)
//
//                   let selected =  TStorage.partOfSpeachFocus.lowercased()
//                    UserDefaults(suiteName: "group.com.shohagh.widgetvocabulary")!.set(selected, forKey: "partOfSpeach")
//
//
                    completion(items)
                                   }
                 
              }
    
//    func loadData(set :  String) {
//             do {
//                 if let file = Bundle.main.path(forResource:"data", ofType: "json") { // //TStorage.wordFocus
//                 //    questions = items.sorted(by: { $0.sl! < $1.sl! })
//                           let data = try Data(contentsOf: URL(fileURLWithPath: file), options: .mappedIfSafe)
//                    let items = try JSONDecoder().decode([Qustion].self, from: data)
//
////                     for item in items {
////                         print(item.optionC)
////                                     }
//
//                    self.questions = items
//
//         //           completion(items)
//                }
//
//              }
        catch let DecodingError.dataCorrupted(context) {
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
    
    
    func addItem(){
        fireQuestionViewModel().loadData(fileName: "data") { [self] (items) in  //TStorage.wordFocus
            questions = items.sorted(by: { $0.sl! < $1.sl! }) // question

        //    if  AppAPI.margelearingView{ // true

                var quizToOpinion = [Qustion]() //

                for item in questions{

                    questions.append(Qustion(question: item.question, optionA: item.optionA, optionB: item.optionB, optionC: item.optionC, optionD: item.optionD, answer: item.answer, sl: item.sl, isSubmitted: true, completed: true))
                }

                self.questions = items
     //       }
        }

    }
    
    
    func getQuestions(set : [Qustion], gameLavel : String){
    
        for item in set {
            //swape= ...
            var postions = [item.optionA ?? "",item.optionB ?? "",item.optionC ?? "", item.optionD]
    
            print("postion \(postions)")
            
            postions.shuffle()
            
            questions.append(Qustion(question: item.question ?? "" ,
                                     optionA: postions[0],
                                     optionB:  postions[1],
                                     optionC:  postions[2],
                                     optionD:  postions[3],
                                     answer:  item.answer ?? ""))
                        //             image: item.image ?? ""))
        }
        
        
        questions.reverse()
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



