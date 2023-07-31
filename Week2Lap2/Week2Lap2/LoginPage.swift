//
//  BoxView.swift
//  Week2Lap2
//
//  Created by Hibah Abdullah Alatawi on 14/01/1445 AH.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        ZStack{
            Image("bckg")
            
            VStack{
                
                Button(action: {}) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                }
                
                VStack{
                    
                    TextField("Enter Your Email ", text: .constant(""))
                        .frame(maxWidth: 300 ,maxHeight: 40)
                    
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(.gray.opacity(0.7), lineWidth: 2)
                                .frame(maxWidth: 300 ,maxHeight: 80)
                        }
                    
                    TextField("Enter Your Password", text: .constant(""))
                        .frame(maxWidth: 300 ,maxHeight: 40)
                    
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(.gray.opacity(0.7), lineWidth: 2)
                                .frame(maxWidth: 300 ,maxHeight: 80)
                        }
                }
                
                
            }
        }}
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
