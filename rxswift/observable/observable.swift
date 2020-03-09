//
//  ViewController.swift
//  rx-example
//
//  Created by Mainea on 3/9/20.
//  Copyright © 2020 Mainea. All rights reserved.
//

import UIKit
import RxSwift


class ViewController: UIViewController {
    
    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkIsEvenNumberObservable(items: [2,4,6,7,10]).subscribe{ event in
                switch event {
                case .next(let value):
                  print(value)
                case .error(let error):
                  print(error)
                case .completed:
                  print("completed")
                }
        }.disposed(by: bag)
    }
    
    func checkIsEvenNumberObservable(items: [Int]) -> Observable<Int> {
        return Observable<Int>.create { observer -> Disposable in
            for i in items {
                if i % 2 == 0 {
                    observer.onNext(i)
                } else {
                    observer.onError(NSError(domain: "ERROR: value is not even.", code: 0, userInfo: nil))
                }
                sleep(1)
            }
            observer.onCompleted()
            return Disposables.create()
        }
    }
}

