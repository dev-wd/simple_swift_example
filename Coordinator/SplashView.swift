import UIKit

class SplashView: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToSignin(_ sender: Any) {
        coordinator?.presentSigninView()
    }
    
}
