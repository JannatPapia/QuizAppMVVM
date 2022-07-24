//
//  QuestionVM.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 22/7/22.
//
//
//import Foundation
//
////
////  HelperDelegate.swift
////  WordForLearn
////
////  Created by MacBook Air M1 on 23/7/21.
////
//
//import SwiftUI
//import AVFoundation
//import MobileCoreServices
//
//
//class DelegetStorage : ObservableObject {
//
//    var resut = 0
//
//
//    @Published var wish : Bool = false
//
//    var sound: AVAudioPlayer!
//
//
//    @Published var questions : [FirebaseQuestion] = []
//
//    func getQuestions(set : [QuizModelfire], gameLavel : String){
//
//        for item in set {
//            //swape= ...
//            var postions = [item.optionA ?? "",item.optionB ?? "",item.optionC ?? ""]
//
//            print("postion \(postions)")
//
//            postions.shuffle()
//
//            questions.append(FirebaseQuestion(question: item.question ?? "" , optionA: postions[0], optionB:  postions[1], optionC:  postions[2], optionD:  item.optionD ?? "", answer:  item.answer ?? ""))
//        }
//
//
//        questions.reverse()
//    }
//
//
//    func progress(answered : Int) -> CGFloat {
//        let fraction = CGFloat(answered) /  CGFloat(questions.count)
//        let width = UIScreen.main.bounds.width - 30
//        return fraction * width
//    }
    
//  func  getImage()->String{
//
//      if correct <= 2 {
//          return "cry"
//      }else if correct <= 4 {
//          return "worried"
//      }else if correct <= 6 {
//          return "angry"
//      }else if correct <= 8  {
//          return "cool"
//      }else{
//
//          return "amazed"
//      }
//
//
//    }


//    func playSound(filename :String ) {
//
//            if let path = Bundle.main.path(forResource: filename, ofType: "wav") {
//                do {
//                    sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//                    print("Playing sound")
//
//                    sound.play()
//                } catch {
//                    print( "Could not find file")
//                }
//            }
//        }
    
    
//    func saveItem(tite: String,subtitle : String ,content : String , wordFocus : String ){
//
////        let scene = UIApplication.shared.connectedScenes.first
////        if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
////           var viewContext = sd.persistenceController.container.viewContext
////
////            let newItem = Favourite(context: viewContext)
////        newItem.title = tite
////        newItem.chipTitle = wordFocus //modelProcess.footnote
////        newItem.id = UUID()
////        newItem.subTitle = subtitle
////        newItem.referenceId = ""
////        newItem.datetime = Date()
////        newItem.content = content
////          //  TStorageAlex.wordFocus = wordFocus
////           do {
////                try viewContext.save()
////                print("Order saved.")
////           // isPresented = false
////            } catch {
////                print(error.localizedDescription)
////            }
////        }
//
//
//    }
//
//    func delyLife(isCorrect : Bool = false , level : String,mood:String) {
//      //  counter = 30
//        if isCorrect {
////            correct += 1
//
//        }else{
////            wrong += 1
////            self.isCorrect = false
//            playSound(filename:"correct" )
//        }

        
      //  if correct + wrong == 10 {
            
           
//            if correct > 6 {
//                var star = "⭐"
//
//                for _ in 7...correct {
//                    star.append("⭐")
//                }
//
//              //  setMathLavel  (value: 1)
//                saveItem(tite: "▲ Level Progress \(star)", subtitle: "✔️\(correct) ❌\(wrong)", content: "Round \(level)", wordFocus: mood)
//
//                playSound(filename:"correct2" )
//
//            }else{
//                //setMathLavel(value: 0)
//                saveItem(tite: "Keep focus", subtitle: "✔️ \(correct) correct  ❌ \(wrong) wrong", content: "Round \(level)", wordFocus: mood)
//                self.correct = 0
//                self.wrong = 0
//            }
               // lavel =  getMathLavel()
         
//    }
    
   


    
   
//
//    @Published var counter = 30
//    @Published var timer = Timer()
//
//    @Published var isCorrect : Bool = true
////    @Published var selectedImages : [Img] = []
//
//    @Published var mathFunction :Int  = 0
//
//    @Published var value1 : Int = 0
//
//    @Published var value2 :Int  = 0
//
//    @Published var correct : Int = 0
//
//    @Published var wrong :Int  = 0
//
//   // @Published var lavel :Int  = getMathLavel()
//
//    @Published var result :String  = "?"
//    @Published var countDonwResult :String  = "00"
    
//    func functionSimble()->String{
//
//        return "?"
//    }
    
 

    
//    func RelaodMath(){
//
//    }
    
//    // called every time interval from the timer
//      @objc  func timerAction() {
//            counter -= 1
//            if counter == 0 {
//                counter = 30
//               /// self.delyLife()
//            }
//
//          countDonwResult = "\(String(format: "%02d", counter))"
//        }




//struct Img : Identifiable {
//    var id : Int
//    var image : String
//}




import Foundation

//
//  HelperDelegate.swift
//  WordForLearn
//
//  Created by MacBook Air M1 on 23/7/21.
//

import SwiftUI
//import AVFoundation
//import MobileCoreServices


class DelegetStorage : ObservableObject {
    
   
    
    
 //   var resut = 0
    
    
//    @Published var wish : Bool = false
    
 //   var sound: AVAudioPlayer!
    
    
    @Published var questions : [Qustion] = []

    func getQuestions(set : [nazmul], gameLavel : String){
    
        for item in set {
            //swape= ...
            var postions = [item.optionA ?? "",item.optionB ?? "",item.optionC ?? "",item.optionD ?? ""]
    
            print("postion \(postions)")
            
            postions.shuffle()
            
            questions.append(Qustion(question: item.question ?? "", optionA: postions[0], optionB: postions[1], optionC: postions[2], optionD: postions[3], answer: item.answer ?? ""))
            
//            questions.append(Qustion(question: item.qustion ?? "" , optoinA: postions[0], optoinB:  postions[1], optoinC:  postions[2], optoinD:  item.options4 ?? "", answer:  item.answer ?? ""))
        }
        
        
        questions.reverse()
    }
}









//class ViewModelDateProcess: ObservableObject {
//
//
//
//    @Published var selectedIndexOfItem = String()
//
////    @Published var set = BIoMenViewModel()
//
////    @Published var itemOpinions = [OpinionModel]()
//    @Published var itemQuizs = [nazmul]()
//
//
////    func addAnxietyDepration(){
////
////        if  !AppAPI.margelearingView {
////             ApiTrival().loadData(fileName: "citizenshiptestUSLearn") { [self] (items) in  //TStorage.wordFocus
////                itemOpinions = items
////             }
////        }
////    }
//
//    func addItem(){
//        fireQuestionViewModel().loadData(set: "data") { [self.index] (items) in  //TStorage.wordFocus
//            itemQuizs = items.sorted(by: { $0.sl! < $1.sl! })
//            self = []
//         //   self.itemQuizs
//        //    if  AppAPI.margelearingView{
//
//  //              var quizToOpinion = [OpinionModel]()
//
////                for item in itemQuizs{
////
////                    quizToOpinion.append(OpinionModel(kidsDid: item.qustion, opinion1Posivite100Parcent: item.answer, opinion2Posivite50Parcent: nil, opinion3Nagative50Parcent: nil, opinion4Nagative100Parcent: nil, opinion5Nagative150Parcent: nil, opinion5Nagative200Parcent: nil, sl: item.sl, image: item.image))
////                }
//
//   //             self.itemOpinions = quizToOpinion
//
//            }
//
//        }
//
//    //}
//}
//
//
////Unable to infer type of a closure parameter 'items' in the current context
