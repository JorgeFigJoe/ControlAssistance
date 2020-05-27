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
    newDocumentUser.document(name+"_"+Password).setData([
      "name":name,
      "company":Company,
      "password":Password,
      "latitud":1.1,
      "longitud":1.1])
  }
  
  func updateDocument(nameCollection : String, updateLatitud : Double, updateLongitud : Double){
    let collection = db.collection(self.nameCollection).document(nameCollection)
    
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
