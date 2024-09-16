import Foundation
import HealthKit

class HealthManager: ObservableObject {
    
    let helathStore = HKHealthStore()
    
    init() {
        let steps = HKQuantityType(.stepCount)
        
        let healthTypes: Set = [steps]
        
        Task {
            do {
                try await helathStore.requestAuthorization(toShare: [], read: healthTypes)
            } catch {
                print("error fetching health data")
            }
        }
    }
}
