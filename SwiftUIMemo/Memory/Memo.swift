//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 이은지 on 2022/08/09.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    /*
     Identifiable : 데이터를 리스트에 쉽게 바인딩 하기 위해 필요
     ObservableObject: 메모를 편집할 때, 뷰를 자동으로 업데이트 하기 위해 필요
     */
    
    let id: UUID
    @Published var content: String // @Published는 새로운 값을 저장할 때 마다 바인딩되어있는 UI 자동 업데이트
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
