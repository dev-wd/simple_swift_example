import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = SplashView.instantiate(storyboardName: "Splash")
        view.coordinator = self
        navigationController.pushViewController(view, animated: false)
    }
    
    func presentSigninView() {
        let view = SigninView.instantiate(storyboardName: "Login")
        view.coordinator = self
        navigationController.pushViewController(view, animated: false)
    }
}
