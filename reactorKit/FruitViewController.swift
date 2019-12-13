import UIKit
import RxSwift
import RxCocoa
import ReactorKit

class FruitViewController: UIViewController {

    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var grapesButton: UIButton!
    @IBOutlet weak var bananaButton: UIButton!
    @IBOutlet weak var cherriesButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    @IBOutlet weak var fruitImage: UIImageView!
    
    var disposeBag = DisposeBag()
    
    let fruitReactor = FruitViewReactor()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind(reactor: fruitReactor)
    }
    
    func bind(reactor: FruitViewReactor) {
        
        appleButton.rx.tap
            .map{ FruitViewReactor.Action.apple }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        grapesButton.rx.tap
            .map{ FruitViewReactor.Action.grapes }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        bananaButton.rx.tap
            .map{ FruitViewReactor.Action.banana }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        cherriesButton.rx.tap
            .map{ FruitViewReactor.Action.cherries }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        orangeButton.rx.tap
            .map{ FruitViewReactor.Action.orange }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        
        reactor.state.map { $0.fruitName }
          .distinctUntilChanged()
          .map { "\($0)" }
            .subscribe(onNext: { val in
                self.fruitImage.image = UIImage(named: val)
            })
          .disposed(by: disposeBag)
        
        reactor.state.map { $0.isLoading }
        .distinctUntilChanged()
          .subscribe(onNext: { val in
            if val == true{
                self.fruitImage.image = UIImage(named: "loading")
            }
          })
        .disposed(by: disposeBag)

    }
}
