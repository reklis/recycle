//
//  main.swift
//  recycle
//
//  usage: recycle <files or directories to throw out>
//

import Foundation
import AppKit

var args = NSProcessInfo.processInfo().arguments
args.removeAtIndex(0)   // first item in list is the program itself

var w = NSWorkspace.sharedWorkspace()
var fm = NSFileManager.defaultManager()

for arg in args {
    let path = arg.stringByStandardizingPath;
    
    let file = path.lastPathComponent
    let source = path.stringByDeletingLastPathComponent
    
    w.performFileOperation(NSWorkspaceRecycleOperation,
        source:source,
        destination: "",
        files: [file],
        tag: nil)
}
