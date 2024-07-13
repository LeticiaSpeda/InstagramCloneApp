import Foundation
import Combine

final class UserSessionService: ObservableObject {
    @Published var session: UserSession?
}
