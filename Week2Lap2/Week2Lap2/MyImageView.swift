//
//  MyImageView.swift
//  Week2Lap2
//
//  Created by Hibah Abdullah Alatawi on 13/01/1445 AH.
//

import SwiftUI

struct MyImageView: View {
    var body: some View {
           Image("2")
            .resizable()
            .clipShape(Circle())
            .overlay {
                Circle()
            .stroke(.cyan.opacity(0.2), lineWidth: 4)
               }
            .shadow(radius: 19)
            .frame(maxWidth: 200 , maxHeight: 200)
    }
   }

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
