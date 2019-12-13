import ReactorKit
import RxSwift

final class FruitViewReactor: Reactor {
    // Action
    enum Action {
        case orange
        case apple
        case cherries
        case banana
        case grapes
    }
    
   
    enum Mutation {
        case orangeImage
        case appleImage
        case cherriesImage
        case bananaImage
        case grapesImage
        case setLoading(Bool)
    }
    
   // State
    struct State {
        var fruitName: String
        var isLoading: Bool
    }
    
    let initialState: State
    
    init() {
        self.initialState = State(
            fruitName: "",
            isLoading: false
        )
    }
    
    // Action -> Mutation
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .orange:
            return Observable.concat([
                Observable.just(Mutation.setLoading(true)),
                Observable.just(Mutation.orangeImage).delay(.milliseconds(500), scheduler: MainScheduler.instance),
                Observable.just(Mutation.setLoading(false)),
                
            ])
        case .apple:
            return Observable.concat([
                Observable.just(Mutation.setLoading(true)),
                Observable.just(Mutation.appleImage).delay(.milliseconds(500), scheduler: MainScheduler.instance),
                Observable.just(Mutation.setLoading(false)),
            ])
        case .cherries:
            return Observable.concat([
                Observable.just(Mutation.setLoading(true)),
            Observable.just(Mutation.cherriesImage).delay(.milliseconds(500), scheduler: MainScheduler.instance),
                Observable.just(Mutation.setLoading(false)),
            ])
        case .banana:
            return Observable.concat([
                Observable.just(Mutation.setLoading(true)),
                Observable.just(Mutation.bananaImage).delay(.milliseconds(500), scheduler: MainScheduler.instance),
                Observable.just(Mutation.setLoading(false)),
            ])
        case .grapes:
            return Observable.concat([
                Observable.just(Mutation.setLoading(true)),
                Observable.just(Mutation.grapesImage).delay(.milliseconds(500), scheduler: MainScheduler.instance),
                Observable.just(Mutation.setLoading(false)),
            ])
        }
    }
    
    // Mutation -> State
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
            
        case .orangeImage:
            state.fruitName = "orange"
        case .appleImage:
            state.fruitName = "apple"
        case .cherriesImage:
            state.fruitName = "cherries"
        case .bananaImage:
            state.fruitName = "banana"
        case .grapesImage:
            state.fruitName = "grapes"
        case .setLoading(let val):
            state.isLoading = val
        }
        return state
    }
}
