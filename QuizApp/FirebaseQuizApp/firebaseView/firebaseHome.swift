//
//  firebaseHome.swift
//  QuizApp
//
//  Created by Jannatun Nahar Papia on 14/7/22.
//

import SwiftUI
//import OnLoad

struct firebaseHome: View {
    
    @State var show = false
    @StateObject var viewModel = fireQuestionViewModel()
    // Storing level for fetching questions....
    @State var set = "Round_1"
  //   var quizItem : [Qustion]
//    //For analytic
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    
    
//    func getDestination(itemText: String) -> AnyView {
//
//
//        let currentRound =   HomeGrid.eachRoundQuiz * Int(viewModel.selectedIndexOfItem)!
//
//        if viewModel.set.isQuiz{
//            return AnyView(QA(correct: $correct, wrong: $wrong, answered: $answered, set: viewModel.selectedIndexOfItem, quizItem: Array(viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
////            return AnyView(QA(set: viewModel.selectedIndexOfItem,correct: $correct, quizItem: Array( viewModel.questions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound])))
//        }else{
//            return AnyView(getDestination(itemText: "nazmul"))
//
//       //     return AnyView(LearingView(isAnxiety: $viewModel.set.show, trival: Array( viewModel.itemOpinions[(currentRound - HomeGrid.eachRoundQuiz)..<currentRound]), set: viewModel.selectedIndexOfItem, bg: [QUIZConfig.mainBackgroundImage]))
//        }
//    }
    
//    var set = Int()
    
    var body: some View {
        VStack{
            
            Text("Revel Station")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(.purple)
                .padding(.top)
            
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            // Level view
            
         //   LazyVGrid(columns: [GridItem(.fixed(20))], content: {
              LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 35, content: {
                  
                  // four levels..
                //  ForEach(1...4, id: \.self) { index in
                      ForEach(0..<HomeGrid.round,id:\.self){ index in
                      
                      VStack(spacing: 15) {
                          
                          
                          FreshCellView(image: HomeGrid.getImageRound(index: index, isQuiz: true))
                      //        .frame(height: 150)
                          
//                          Image("lv\(index)")
//                              .resizable()
//                              .aspectRatio(contentMode: .fit)
//                              .frame(height: 150)
                          
                          Text("SwiftUI Quiz")
                              .font(.title2)
                              .fontWeight(.heavy)
                              .foregroundColor(Color.black)
                          
                          Text("Level \(index)")
                              .foregroundColor(Color.black)
                      }

                          
                          
//                      .padding()
//                      .frame(maxWidth: .infinity)
//                      .background(Color.white)
//                      .cornerRadius(15)
                          
                      //MARK: opening QA view as sheet... QA view mane prottek ta level er view akta akta kore open kore
                          
                      .onTapGesture {
                        //  set = "Round_\(index)"
                          set = "\(index + 1)"
                          if viewModel.questions.count == 0 {
                              viewModel.loadData(set : "")

                          }
                          show.toggle()
                      }
                          
                  }
                  

                      .padding()
                      .frame(maxWidth: .infinity)
                      .background(Color.white)
                      .cornerRadius(15)
                  
//                Text("Placeholder")
//                Text("Placeholder")
            }/*@END_MENU_TOKEN*/)
            
              .padding()
            
            Spacer(minLength: 0)
        }
        // MARK: Loading json data from data folder
        .onAppear(perform: {
            viewModel.loadData(set :  "")


        })
//        .onAppear{
//            viewModel.set.isQuiz = true
//           //study when it's called
//        }
//        .onDisappear(perform: {
//            //study when it's called
//            print("ContentView disappeared!")
//        })
        // study when onload called and how to use onload on swiftui project where apple not provide any function. how to implement it custom onload for swiftui view https://stackoverflow.com/questions/56496359/swiftui-view-viewdidload
        
        
        
//        .onLoad(perform: {  // swift life cycle
//            viewModel.set.isQuiz = true //
//            viewModel.loadData(set : quizItem, gameLavel : "")
////            viewModel.addAnxietyDepration()
////            viewModel.requestIDFA()
//        })
//
//        .fullScreenCover(isPresented: $viewModel.set.show, content:{
//            getDestination(itemText: viewModel.selectedIndexOfItem)
//        })
        
        
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {

            QA(correct: $correct, wrong: $wrong, answered: $answered, set: set, quizItem: [])
        })
        
        
//        .onLoad(perform: {  // swift life cycle
//            viewModel.set.isQuiz = true //
//            viewModel.loadData(set : "")
////            viewModel.addAnxietyDepration()
////            viewModel.requestIDFA()
//        })
//        
//        .fullScreenCover(isPresented: $viewModel.set.show, content:{
//            getDestination(itemText: viewModel.selectedIndexOfItem)
//        })
//                .onLoad(perform: {  // swift life cycle
//                    viewModel.set.isQuiz = true //
//                 //   viewModel.addItem()
//        //            viewModel.addAnxietyDepration()
//        //            viewModel.requestIDFA()
//                })
    }
}

//struct firebaseHome_Previews: PreviewProvider {
//    static var previews: some View {
//        firebaseHome()
//    }
//}


struct FreshCellView : View {
    
    var image : String
//     var name : String
//    var isRead : Bool
   // @EnvironmentObject var taskViewModel : TaskViewModel
    @State var show = false
    
    var body : some View{
        
        ZStack{
                VStack(alignment:.leading,spacing: 0){
                    
                    ZStack{
                        
                          Image(image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            
                         
                            .cornerRadius(15)
                        VStack(alignment: .trailing){
                            HStack{
                            Spacer()
                                Text("x10")
                              //  .padding(.vertical,5)
                              
                                .padding(.horizontal,10)
                                .background(Color.black.opacity(0.7))
                                .foregroundColor(Color.white)
                                .cornerRadius(15)
                            }
                          
                            Spacer()
                        }
                        .padding([.top,.trailing],5)
                        
                    }
                   
//                    .background(Color.blue)
//                    .cornerRadius(20)
                    
//                    VStack{
//
////                        Text(Util.daystr(expireDate: data.taskDate ?? Date())).foregroundColor( data.taskDate?.days(sinceDate: Date()) ?? 0 < 0 ? .red : .green).font(.caption)
////                            .padding(.top,5)
//
//
//                    Text(name).fontWeight(.semibold)
//                        .lineLimit(2)
//                        .frame(maxWidth:.infinity,alignment: .center)
//
//                }
                   
                   
                }
               
                .frame(width: 150)
                .padding(.vertical,5)
            
            
        }
    }

}





//struct BIoMenViewModel {
//
//     var set = Int()
//     var rewardDOnem = Bool()
//     var title = String()
//     var subtitle = String()
//     var isQuiz = Bool()
//     var optionChosed = 0
//     var storeManager = Bool()
//     var showingActionSheet = Bool()
//     var show = Bool()
//     var showOnbrodingScreen = Bool()
//   }
