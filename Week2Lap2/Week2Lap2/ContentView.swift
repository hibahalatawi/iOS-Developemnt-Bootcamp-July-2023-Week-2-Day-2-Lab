//
//  ContentView.swift
//  Week2Lap2
//
//  Created by Hibah Abdullah Alatawi on 13/01/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                
                Image("bckg")
                MyImageView()
                    .padding(.bottom, 450)
                
                MyScroolView()
                VStack{
                    //Spacer()
                    Text("Eat better ").font(.largeTitle)
                        .bold()
                    Text("Every day !").font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.cyan.opacity(0.8))
                    
                }.padding(.top, 220)
                    .padding(.trailing, 220)
                
                
                Text("Get fresh ingredients & easy-to-follow recipe cards\n delivered to the door.")
                    .frame(maxWidth: 400 ,maxHeight: 300  ).padding(.top, 400)
                
                
                
                NavigationLink(destination:{
                    LoginPage()
                }, label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.cyan.opacity(0.8))
                        .cornerRadius(15.0)
                }).padding(.top, 600)
                
            }
            .padding()
        }
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.none)
    }
}
