//
//  SQLiteManager.swift
//  loadImages
//
//  Created by liyufeng on 2019/10/17.
//  Copyright © 2019 liyufeng. All rights reserved.
//

import Foundation
import SQLite3

class SQLiteManager {
    var db : OpaquePointer? = nil
    static let share = SQLiteManager()
    
    func openDb(dbFile : String) -> Bool {
        let state = sqlite3_open(dbFile.cString(using: .utf8), &db)
        if state != SQLITE_OK {
            return false
        }
        return true
    }
    
    func creatTable() -> Bool {
        let sql = "CREATE TABLE IF NOT EXISTS 't_student' ('id' integer NOT NULL PRIMARY KEY AUTOINCREMENT,'name' text,'age' integer );"
        return execSql(sql: sql)
    }

    func execSql(sql:String) -> Bool {
        let csql = sql.cString(using: String.Encoding.utf8)
        return sqlite3_exec(db, csql, nil, nil, nil) == SQLITE_OK
    }

    func updataData(sql:String) -> Bool {
       let csql = (sql.cString(using: String.Encoding.utf8))!
        if sqlite3_exec(db,csql, nil, nil, nil) != SQLITE_OK {
            return false
        }
        return true
    }
    func deleteData(sql:String) {
        if SQLiteManager.share.execSql(sql: sql) {
            print("删除成功")
        }else{
             print("删除失败")
        }
    }
}
