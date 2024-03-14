//
//  BaseballGame.swift
//  Lv1 ref
//
//  Created by 최진문 on 2024/03/12.
//

import Foundation


class BaseballGame {
    func start() -> Int {
        let answer = makeAnswer() // 정답을 만드는 함수
        return answer
    }
    
    func makeAnswer() -> Int {
        var makeRandomNum: Int = 0
        while true {                                  // 어떤 조건 해야할지 모르겠어서 무한루프 설정
            makeRandomNum = Int.random(in: 100...999) // 세 자리 정수 랜덤으로 생성
            let ranNum100 = makeRandomNum / 100       // 100의 자리 추출
            let ranNum10 = (makeRandomNum / 10) % 10  // 10의 자리 추출
            let ranNum1 = makeRandomNum % 10          // 1의 자리 추출
            if ranNum100 != ranNum10 && ranNum100 != ranNum1 && ranNum10 != ranNum1 && (ranNum1 != 0), (ranNum10 != 0), (ranNum100 != 0){
                return makeRandomNum// 각 자리 수가 서로 다르고 0도 아니면 랜덤 정수 리턴
            } else {
                continue            // 조건 충족 못하는 경우 세 자리 랜덤 정수 다시 생성
            }
            
        } // while
       
    } // func
} // class


// 예를 들어 354라는 수가 랜덤으로 생성된 경우
// ranNum100 에는 3이라는 수가
// ranNum10 에는 5라는 수가
// ranNum1 에는 4라는 수가 저장되어야 함.
// 각각의 프로퍼티에 저장된 값 3 / 5 / 4 가 0이 아닌지와 서로 다른 값인지 확인이 필요함.
// 모든 확인이 완료됬으면 그 값을 정답으로 리턴해야 함.
// 그럼 3 / 5 / 4 를 각각 0과 비교 & 서로 같은지 비교하고 모두 거짓이면 354를 리턴하는 방법을 찾자.
