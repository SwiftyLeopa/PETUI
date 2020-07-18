//
//  NoteDetail.swift
//  PETUI
//
//  Created by 藤崎嶺 on 2020/07/18.
//  Copyright © 2020 ACNNEC. All rights reserved.
//

import SwiftUI

struct NoteDetail: View {
    @State var note: [String]
    var body: some View{
        //leadingは左揃え
        //VerticalStack
        VStack(alignment: .trailing){
            //HorizontalStack
            HStack{
                Text(note[0]).font(.largeTitle).fontWeight(.thin)
                Spacer()
                Text(note[1])
            }
            .padding(.bottom, 20.0)
            Text(note[2])
            Spacer()//上寄せ
        }
        .padding(.all, 20.0)
        .navigationBarTitle(Text("Details"),displayMode: .inline)
    }
}

struct NoteDetail_Preview: PreviewProvider {
    static var previews: some View{
        NoteDetail(note: ["sanple","10:00","test"])
    }
}
