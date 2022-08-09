//
//  DetailView.swift
//  SwiftUIMemo
//
//  Created by 이은지 on 2022/08/09.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    // @ObservedObjec 속성으로 선언할 경우, @Published로 선언한 속성이 바뀔 때 마다 뷰가 자동으로 업데이트
    
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(memo.content)
                            .padding()
                        
                        Spacer(minLength: 0)
                    }
                    
                    Text(memo.insertDate, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("Memo")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(memo: Memo(content: "Hello"))
            .environmentObject(MemoStore())
    }
}