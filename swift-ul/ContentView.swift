//
//  ContentView.swift
//  swift-ul
//
//  Created by 桑野友輔 on 2023/03/13.
//

import SwiftUI
//struct = 構造体　次に変数名が来る
struct ContentView: View {
    //@State を宣言するとstructの変数を更新できる
    @State var answernumber: Int = 0
    var body: some View {
        VStack {
            //スペースの追加
            Spacer()
                //スペースを指定したい場合はheightで
                //.flame(height: 10)
            if answernumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answernumber == 1 {
                //画像を指定
                Image("gu")
                //リサイズ
                    .resizable()
                //アスペクト比維持
                    .scaledToFit()
                Text("グー")
                    .padding(.bottom)
                Spacer()
            } else if answernumber == 2 {
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Text("チョキ")
                    .padding(.bottom)
                Spacer()
            } else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Text("パー")
                    .padding(.bottom)
                Spacer()
            }
            
            Button {
                var newAnswerNumber: Int = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    //answernumber = newAnswerNumberで有る間繰り返す
                } while answernumber == newAnswerNumber
                answernumber = newAnswerNumber
            } label: {
                Text("じゃんけんをする！")
                    //横幅を幅いっぱいに
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    //フォントの大きさ、h1のような
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
            
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

