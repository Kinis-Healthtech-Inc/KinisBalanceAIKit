////
////  KinisLogger.swift
////  Example
////
////  Created by Macbook on 3/3/26.
////
//import CocoaLumberjackSwift
//import Combine
//
//final class KinisLogger {
//    static let shared = KinisLogger()
//    
//    init() { }
//    
//    func setup() {
//        #if DEBUG
//        DDLog.add(DDOSLogger.sharedInstance, with: .debug)
//        #else
//        let fileLogger: DDFileLogger = DDFileLogger()
//        fileLogger.rollingFrequency = 0
//        fileLogger.maximumFileSize = 1 * 1024 * 1024
//        fileLogger.logFileManager.maximumNumberOfLogFiles = 2
//        DDLog.add(fileLogger, with: .info)
//        #endif
//    }
//}
