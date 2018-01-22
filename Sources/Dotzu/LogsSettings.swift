//
//  LogsSettings.swift
//  exampleWindow
//
//  Created by Remi Robert on 18/01/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import Foundation

public class LogsSettings {

    public static let shared = LogsSettings()

    
    public var firstIn: String? = nil {
        didSet {
            UserDefaults.standard.set(serverURL, forKey: "firstIn_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var showBallAndWindow: Bool {
        didSet {
            UserDefaults.standard.set(showBallAndWindow, forKey: "showBallAndWindow_debugman")
            UserDefaults.standard.synchronize()
            
            let x = DotzuManager.shared.controller.logHeadView.frame.origin.x
            let width = DotzuManager.shared.controller.logHeadView.frame.size.width
            
            if showBallAndWindow == true
            {
                if x > 0 {
                    DotzuManager.shared.controller.logHeadView.frame.origin.x = UIScreen.main.bounds.size.width - width/8*7
                }else{
                    DotzuManager.shared.controller.logHeadView.frame.origin.x = -width + width/8*7
                }
                DotzuManager.shared.enable()
            }
            else
            {
                if x > 0 {
                    DotzuManager.shared.controller.logHeadView.frame.origin.x = UIScreen.main.bounds.size.width
                }else{
                    DotzuManager.shared.controller.logHeadView.frame.origin.x = -width
                }
                DotzuManager.shared.disable()
            }
        }
    }
    public var serverURL: String? = nil {
        didSet {
            UserDefaults.standard.set(serverURL, forKey: "serverURL_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var tabBarSelectItem: Int {
        didSet {
            UserDefaults.standard.set(tabBarSelectItem, forKey: "tabBarSelectItem_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var logSelectIndex: Int {
        didSet {
            UserDefaults.standard.set(logSelectIndex, forKey: "logSelectIndex_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var onlyURLs: [String]? = nil {
        didSet {
            JxbDebugTool.shareInstance().onlyURLs = onlyURLs
        }
    }
    public var ignoredURLs: [String]? = nil {
        didSet {
            JxbDebugTool.shareInstance().ignoredURLs = ignoredURLs
        }
    }
    public var logHeadFrameX: Float {
        didSet {
            UserDefaults.standard.set(logHeadFrameX, forKey: "logHeadFrameX_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var logHeadFrameY: Float {
        didSet {
            UserDefaults.standard.set(logHeadFrameY, forKey: "logHeadFrameY_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var logSearchWord: String? = nil {
        didSet {
            UserDefaults.standard.set(logSearchWord, forKey: "logSearchWord_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var networkSearchWord: String? = nil {
        didSet {
            UserDefaults.standard.set(networkSearchWord, forKey: "networkSearchWord_debugman")
            UserDefaults.standard.synchronize()
        }
    }
    public var tabBarControllers: [UIViewController]? = nil
    
    
    
    private init()
    {
        firstIn = UserDefaults.standard.string(forKey: "firstIn_debugman")
        serverURL = UserDefaults.standard.string(forKey: "serverURL_debugman")
        showBallAndWindow = UserDefaults.standard.bool(forKey: "showBallAndWindow_debugman")
        tabBarSelectItem = UserDefaults.standard.integer(forKey: "tabBarSelectItem_debugman")
        logSelectIndex = UserDefaults.standard.integer(forKey: "logSelectIndex_debugman")
        logHeadFrameX = UserDefaults.standard.float(forKey: "logHeadFrameX_debugman")
        logHeadFrameY = UserDefaults.standard.float(forKey: "logHeadFrameY_debugman")
        logSearchWord = UserDefaults.standard.string(forKey: "logSearchWord_debugman")
        networkSearchWord = UserDefaults.standard.string(forKey: "networkSearchWord_debugman")
    }
}