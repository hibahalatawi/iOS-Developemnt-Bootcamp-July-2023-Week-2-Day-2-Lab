//
//  Scroll.swift
//  Week2Lap2
//
//  Created by Hibah Abdullah Alatawi on 14/01/1445 AH.
//

import SwiftUI

struct MyCatogryView: View {
    var id = UUID()
    var title: String
    let category : Array<MyCatogryView> = [ MyCatogryView(title: "Type1"),MyCatogryView(title: "Type1"),MyCatogryView(title: "Type1"),]
    var body: some View{
        
        
        
        ScrollView(.horizontal){
            
            HStack{
                ForEach(category) {
                    MyCatogryView in
                    ZStack{
                        AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22"))
                            .cornerRadius(20)
                            .overlay {
                                
                                VStack{
                                    Spacer()
                                    
                                    Text(MyCatogryView.title)
                                        .font(.title).bold().frame(maxWidth: .infinity , alignment: .leading)
                                    
                                }
                            }
                        
                        
                    }
                }
            }
        }}}
    struct Scroll_Previews: PreviewProvider {
        static var previews: some View {
            MyCatogryView()
        }
    }
    //AsyncImage(url: URL(string: "https://source.unsplash.com/392x200/?[stars]%22"))
    //    .cornerRadius(20)
