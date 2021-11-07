//
//  UserStat.swift
//  Instragram-clone
//
//  Created by Tham Thearawiboon on 6/11/2564 BE.
//

import SwiftUI

struct UserStat: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.system(size: 15, weight: .semibold))
            
            Text(title)
                .font(.system(size: 15))
        }
        .frame(width: 80, alignment: .center)
    }
}
 
