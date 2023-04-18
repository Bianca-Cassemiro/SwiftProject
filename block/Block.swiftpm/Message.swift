//
//  Message.swift
//  Block
//
//  Created by user237376 on 4/18/23.
//

import SwiftUI

struct Message: View {
    @State var shouldShowFinalMessage: Bool = false
    @State var showComand: Bool = false
    @State var count: Int = 1
    @State var text: String = "Block has encrypted a message for \nyou, it's in Morsi code, but in\n Blockchain we use the SHA-256\n function to encrypt the message \nwe want"
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 1.00, green: 0.91, blue: 0.70, alpha: 1.0))
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(uiColor: UIColor(red: 1.00, green: 0.91, blue: 0.70, alpha: 1.0)))
                        .frame(width: 700, height: 300)
                        .overlay(content: {
                            Text(text)
                                .font(.system(size: 35))
                                .multilineTextAlignment(.center)
                                .padding()
                            NavigationLink(destination:FinalMessage(), isActive: $shouldShowFinalMessage) {
                                                       EmptyView()
                                                   }

                            Button(action: {
                                if count == 1 {
                                    text = "The only problem... is that with SHA-256, we would never be able to find out what was written because once the encryption is done, it is not possible to decode it"
                                    showComand = true
                                }
                                
                          }, label: {
                              Image(systemName: "arrowshape.turn.up.forward.circle")
                                  .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                  .font(.system(size: 55))
                                  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                  .padding()
                          })
                           
                        })
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 800, height: 500)
                        .foregroundColor(.white)
                        .overlay(content: {
                            HStack{
                                Button(action: {
                                    self.shouldShowFinalMessage = true
                                }, label: {
                                    Image("Pen")
                                        .resizable()
                                        .frame(width: 80, height: 160)
                                        .padding(.trailing,40)
                                })
                               
                                Text("- .... .- -. -.- / -.-- --- ..- / ...- . .-. -.-- / -- ..- -.-. .... / ..-. --- .-. / .- -.-. -.-. --- -- .--. .- -. -.-- .. -. --. / -- . / --- -. / - .... .. ... / .- -.. ...- . -. - ..- .-. . .-.-.- / -.. ..- .-. .. -. --. / - .... .. ... / .--- --- ..- .-. -. . -.-- --..-- / .-- . / ..- -. -.-. --- ...- . .-. . -.. / - .... . / .-. . .- .-.. -- / --- ..-. / . - .... . .-. . ..- -- .-.-.- .-.-.- .-.-.- / .... --- .-- . ...- . .-. --..-- / - .... . .-. . / .- .-. . / ... . ...- . .-. .- .-.. / --- - .... . .-. / .-. . .- .-.. -- ... / - --- / . -..- .--. .-.. --- .-. . --..-- / ... ..- -.-. .... / .- ... / - .... . / .-. . .- .-.. -- / --- ..-. / .--. --- .-.. -.-- --. --- -. / .- -. -.. / - .... . / .-. . .- .-.. -- / --- ..-. / -.-. . .-.. --- --..-- / ..-. --- .-. / . -..- .- -- .--. .-.. . .-.-.- / .-- .. .-.. .-.. / .. / ... . . / -.-- --- ..- / - .... . .-. . ..--..")
                                    .font(.system(size: 30))
                                    .frame(width: 600)
                            }
                        })
                    if showComand{
                        Text("Tap 3 times on the magic pen \nto unlock the secret message")
                            .padding()
                            .font(.system(size: 35))
                        .foregroundColor(.blue)
                        
                    }
                        Spacer()
                    
                        Image("Block")
                        .resizable()
                        .frame(width: 300,height: 250)
                    
                        Spacer()
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}
