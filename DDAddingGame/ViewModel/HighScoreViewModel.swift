//
//  HighScoreViewModel.swift
//  DDAddingGame
//
//  Created by joe on 2/22/25.
//

import Foundation
import CoreData

class HighScoreViewModel: ObservableObject {
    let container: NSPersistentContainer
    
    @Published var highScores: [HighScoreEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "HighScoresDataModel")
        
        // load the data
        container.loadPersistentStores { description, error in
            if let error {
                print("Loading error: \(error.localizedDescription)")
            } else {
                print("Loading successful")
            }
        }
        
        // fetch data into highScores
        fetchHighScores()
    }
    
    // TODO: fetch data in ascending/descending order
    func fetchHighScores() {
        let request = NSFetchRequest<HighScoreEntity>(entityName: "HighScoreEntity")
        
        do {
            highScores = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching high scores: \(error.localizedDescription)")
        }
    }
}
