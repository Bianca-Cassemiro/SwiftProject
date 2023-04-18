//
//  History.swift
//  Block
//
//  Created by user237376 on 4/9/23.
//

import SwiftUI


struct History: View {
    @State var textInitial: String = "Once upon a time, in a world of technology, there was a little blue square named Block"
    @State private var tapCount = 0
    @State private var shouldShowChallengeOne = false
    
    var body: some View {
       
      
      
            ZStack{
                        Color.init(uiColor: UIColor(red: 0.97, green: 1.00, blue: 0.89, alpha: 1.00))
                        .ignoresSafeArea()
                        .navigationBarBackButtonHidden(true)
                        VStack{
                            Spacer()
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .frame(width: 600, height: 220)
                                .shadow(color:.gray,radius: 8 , x: 7, y: 5)
                                .overlay(content: {
                                    Text(textInitial)
                                        .font(.system(size: 30))
                                        .frame(width: 500)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.00)))
                                    NavigationLink(destination: ChallengeOne(), isActive: $shouldShowChallengeOne) {
                                                EmptyView()
                                                
                                            }
                                   
                                    Button(action: {
                                            if tapCount == 0 {
                                                self.textInitial = "Block was very curious and always wondered how the technology behind cryptocurrencies ans smart contracts worked."
                                                tapCount += 1
                                            }else if tapCount == 1 {
                                                self.textInitial = "So one day he decided to embark on a journey to find out everything about Blockchain"
                                                tapCount += 1
                                            } else if tapCount == 2 {
                                                self.shouldShowChallengeOne = true
                                            }
                                            
                                        }, label: {
                                            Image(systemName: "arrowshape.turn.up.forward.circle")
                                                .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                                .font(.system(size: 40))
                                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                                .padding()
                                        })
                                   
                                   
                                })
                            Spacer()
                            Image("Block")
                                .resizable()
                            .frame(width: 330,height: 270)
                            Spacer()
                            
                        }
            }
        }
        
        }
         
    


struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
