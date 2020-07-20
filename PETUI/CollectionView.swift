//
//  CollectionView.swift
//  PETUI
//
//  Created by 藤崎嶺 on 2020/07/20.
//  Copyright © 2020 ACNNEC. All rights reserved.
//

import SwiftUI

struct Collection: View {
    var body: some View {
        HStack{
            ForEach(1..<4){_ in
            VStack{
                ForEach(1..<6){_ in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                    }.frame(width: 100.0, height: 100.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }.padding(.bottom, 8.0)
                Spacer()
                }
            }
        }.padding(.top, 60.0)
    }
}

struct Collection_Previews: PreviewProvider {
    static var previews: some View{
        Collection()
            .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}
