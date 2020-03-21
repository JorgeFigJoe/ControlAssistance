//
//  AssistanceDBModel.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 13/03/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import SQLite

class AssistanceDBModel {
    static let shared : AssistanceDBModel = AssistanceDBModel()
    var database : Connection!
    let assistanceTable = Table("ASSISTANCEDB")
    //let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let company = Expression<String>("company")
    let password = Expression<String>("password")
    let model = Expression<AssistanceModel>("model")
    
   
    func createDB(){
        do{
            let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileURL = documentDirectory.appendingPathComponent("ASSISTANCEDB").appendingPathExtension("sqlite3")
            let db = try Connection(fileURL.path)
            self.database = db
            self.createTableDB()
        }catch{
            print("Error to create database")
        }
}
    
    private func createTableDB(){
        let createTable = self.assistanceTable.create{(tabledb) in
            //tabledb.column(self.id, primaryKey: true)
            tabledb.column(self.name, primaryKey: true)
            tabledb.column(self.company)
          tabledb.column(self.password)

        }
        
        do{
            try self.database.run(createTable)
            print("created Table success")
        }catch{
            print("Error createTable")
        }
        
    }
    
  func insertDatesToDBModel(getName : String, getCompany : String, getPass : String){
    let insertPokemon = self.assistanceTable.insert(self.name <- getName, self.company <- getCompany, self.password <- getPass)
        do{
            try self.database.run(insertPokemon)
            print("inserted dates successful")
        }catch{
            print("error to insert dates")
        }
    }
    
    func listPokemon() -> Array<String>{
        var array = [String]()
        do{
            let pokemon = try self.database.prepare(self.assistanceTable)
            for item in pokemon{
              print("pokemon: \(item[self.password]), name:  \(item[self.name]), company: \(item[self.company])")
                //array.append(contentsOf: [item[self.id],item[self.name],item[self.url]])
                array.append(contentsOf: [item[self.name]])
            }
        }catch{
            print("error to get a list into db")
        }
       return array
    }
}

