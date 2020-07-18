//
//  NoteRow.swift
//  PETUI
//
//  Created by 藤崎嶺 on 2020/07/18.
//  Copyright © 2020 ACNNEC. All rights reserved.
//

import SwiftUI

struct NoteRow: View {
//    contentViewの二次元配列を表示させるためのstateらしい
    @State var note: [String]
    var body: some View {
        HStack {
            Text(note[0])
            Spacer()
            Text(note[1])
        }
        .padding(.horizontal, 20.0)
        
    }
}

struct NoteRow_Previews: PreviewProvider {
    static var previews: some View{
//     NoteRowファイルの方で挙動を確認するためだけのもの?
        NoteRow(note: ["sample", "00:00", "test"])
    }
}
