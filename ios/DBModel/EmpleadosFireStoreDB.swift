//
//  EmpleadosFireStoreDB.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 26/05/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import Firebase

class EmpleadosFireStoreDB {
  //singletone
  static let sharedInstance : EmpleadosFireStoreDB = EmpleadosFireStoreDB()
  
  let nameCollection = "Empleados"
  let db = Firestore.firestore()
  
  func createUserDataBaseFireBase(name : String, Company : String, Password : String){
    let newDocumentUser = db.collection(nameCollection)
    newDocumentUser.document(name+"_"+Company).setData([
      "name":name,
      "company":Company,
      "password":Password,
      "latitud":0,
      "longitud":0])
  }
  
  func updateDocument(nameCollection : String, updateLatitud : Int, updateLongitud : Int){
    let collection = db.collection(nameCollection).document(nameCollection)
    
    collection.updateData([
        "latitud": updateLatitud,
        "longitud":updateLongitud
    ]) { err in
        if let err = err {
            print("Error updating document: \(err)")
        } else {
            print("Document successfully updated")
        }
    }
  }
}
