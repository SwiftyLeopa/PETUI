//
//  ContentView.swift
//  PETUI
//
//  Created by 高木郁哉 on 2020/07/17.
//  Copyright © 2020 ACNNEC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var notes = [
        ["title1", "20:12", "サンプルです"],
        ["title2", "10:00", "こんにちは"],
        ["title3", "10:12", "さよなら" ]
    ]
            
    var body: some View {
        NavigationView{
            List{
                ForEach(notes, id: \.self){
                    note in
                    //詳細画面へ
                    NavigationLink(destination: NoteDetail(note: note)){
                        NoteRow(note: note)
                    }
                   //ここでNoteRowを使うには、stateの配列を渡す必要がある
//                    NoteRow(note: note)
                }.onDelete(perform: delete)
                //消去
                .onMove(perform: move)
                //並び替え
                
            }.navigationBarItems(trailing: EditButton()).navigationBarTitle(Text("Notes"))
            }
        }
    //消去用
    func delete(offsets: IndexSet){
        notes.remove(atOffsets: offsets)
    }
    //並び替え用
    func move(offsets: IndexSet, index: Int){
        notes.move(fromOffsets: offsets, toOffset: index)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
