//
//  ContentView.swift
//  swift-ul
//
//  Created by 桑野友輔 on 2023/03/13.
//

import SwiftUI
//struct = 構造体　次に変数名が来る
struct ContentView: View {
    var body: some View {
        //この範囲がクロージャ
        //画像を指定
        Image("gu")
            //リサイズ
            .resizable()
            //アスペクト比維持
            .scaledToFit()
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

