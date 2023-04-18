//
//  ChallengeOne.swift
//  Block
//
//  Created by user237376 on 4/9/23.
//

import SwiftUI



struct ChallengeOne: View {
    @State var count: Int = 0
    
    @State var shouldShowGenesisBlock: Bool = false
    
    @State private var draggedItem: DraggableItem?
    
    @State private var showButton: Bool = false
    
    @State private var items: [DraggableItem] = [
        DraggableItem(origin: ShapeItem(color: .blue, sides: 4, dregree:90), destination: ShapeItem(color: Color.blue.opacity(0.3), sides: 4, dregree:90)),
        DraggableItem(origin: ShapeItem(color: .purple, sides: 4, dregree:90), destination: ShapeItem(color: Color.purple.opacity(0.3), sides: 4, dregree:90)),
        DraggableItem(origin: ShapeItem(color: .red, sides: 4, dregree:90), destination: ShapeItem(color: Color.red.opacity(0.3), sides: 4, dregree:90)),
        DraggableItem(origin: ShapeItem(color: .green, sides: 4, dregree:90), destination: ShapeItem(color: Color.green.opacity(0.3), sides: 4, dregree:90))
    ]
    
    var indexes: [Int] = Array(0..<4).shuffled()
    
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(UIColor(red: 1.00, green: 0.82, blue: 0.82, alpha: 1.00))
                    .ignoresSafeArea()
                    .navigationBarHidden(true)
                
                VStack {
                    Spacer()
                    HStack(spacing: 0){
                        ForEach(items, id:\.self){ item in
                            item.origin
                                .onDrag{
                                    self.draggedItem = item
                                    return NSItemProvider()
                                }
                                
                        }
                    }
                    HStack(spacing: 0){
                        ForEach(0..<items.count, id:\.self){ i in
                            items[indexes[i]].destination
                                .onDrop(of: [.text], delegate: DropViewDelegate(draggedItem: $draggedItem, destinationItem: $items[indexes[i]]))
                           
                        }
                        
                        
                    }

            
                    Spacer()
                    HStack{
                        Image("BlockHandUp")
                            .resizable()
                            .frame(width: 330,height: 270)
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .padding(.leading,60)
                            
                        
                        Spacer()
                        VStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 400, height: 200)
                                .padding()
                                .foregroundColor(.white)
                                .overlay(content: {
                                    Text("Move the squares to correct order")
                                        .font(.system(size: 40))
                                        .multilineTextAlignment(.center)
                                })
                            NavigationLink(destination: GenesisBlock(), isActive: $shouldShowGenesisBlock) {
                                                       EmptyView()
                                                   }
                            Button(action: {
                                self.shouldShowGenesisBlock = true
                            }, label: {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.white)
                                    .frame(width: 300,height: 110)
                                //  .shadow(color: .gray, radius: 15)
                                
                                    .padding(.top,30)
                                    .overlay(content: {
                                        HStack{
                                            Text("Continue")
                                                .font(.system(size: 34))
                                                .padding(10)
                                                .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.00)))
                                            
                                            Image(systemName: "arrowshape.turn.up.forward.circle")
                                                .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                                .font(.system(size: 50))
                                            
                                        }.padding(.top,25)
                                    })
                            })
                               
                            
                            
                        }
                    }
                        
                    
                    Spacer()
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)

            
    }
        
}

struct DropViewDelegate: DropDelegate{
    
    @Binding var draggedItem: DraggableItem?
    @Binding var destinationItem: DraggableItem
    
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return DropProposal(operation: .move)
    }
    
    func performDrop(info: DropInfo) -> Bool {
        
        if destinationItem.destination == draggedItem?.destination{
            destinationItem.destination.color = draggedItem?.origin.color ?? .black
            

        }
        draggedItem = nil
        
        
        
        return true
    }
}

struct ChallengeOne_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeOne()
        
    }
}
