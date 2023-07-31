//
//  MyScroolView.swift
//  Week2Lap2
//
//  Created by Hibah Abdullah Alatawi on 14/01/1445 AH.
//

import SwiftUI


struct MyScroolView: View {
    struct MyFoodType : Identifiable {
        var id = UUID()
        var title: String
       
    }
    let myFood: Array<MyFoodType> = [
        MyFoodType( title: "Type1"),
        MyFoodType( title: "Type2"),
        MyFoodType( title: "Type3"),
        MyFoodType( title: "Type4"),
        MyFoodType( title: "Type5"),
        MyFoodType( title: "Type6"),
        MyFoodType( title: "Type7"),
    ]
    
    
 var body: some View {
        ScrollView(.horizontal){
            
            HStack{
                ForEach(myFood) {
                    cards in
                    VStack{
                        
                        Text(cards.title)
                            .font(.title3)
                            .foregroundColor(Color.cyan.opacity(0.8))
                            .bold()
                            .frame(maxWidth: .infinity )
                            
                        AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[vegetables]%22"))
                            .frame(maxWidth: 100 , maxHeight: 100)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(.cyan.opacity(0.2), lineWidth: 4)
                            }
                            //.shadow(radius: 19)
                            .frame(maxWidth: 100 , maxHeight: 100)
                        
                        
                    }
                 
                    
                }
                
                
            }
            }
        }
    }

struct MyScroolView_Previews: PreviewProvider {
    static var previews: some View {
        MyScroolView()
    }
}
