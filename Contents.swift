//: Playground - noun: a place where people can play

import Cocoa

let completePath = "/Users/tangyuhua/Desktop/Files.playground"

let completeUrl = URL(fileURLWithPath: completePath)

let home = FileManager.default.homeDirectoryForCurrentUser

let playgroundPath = "Desktop/Files.playground"

let playgroundUrl = home.appendingPathComponent(playgroundPath)




playgroundUrl.path

playgroundUrl.absoluteString

playgroundUrl.absoluteURL

playgroundUrl.baseURL

playgroundUrl.pathComponents

playgroundUrl.lastPathComponent

playgroundUrl.pathExtension

playgroundUrl.isFileURL

playgroundUrl.hasDirectoryPath




var urlForEditing = home
urlForEditing.path

urlForEditing.appendPathComponent("Desktop")
urlForEditing.path

urlForEditing.appendPathComponent("Test file")
urlForEditing.path

urlForEditing.appendPathExtension("txt")
urlForEditing.path

urlForEditing.deletePathExtension()
urlForEditing.path

urlForEditing.deleteLastPathComponent()
urlForEditing.path



let fileUrl = home
    .appendingPathComponent("Desktop")
    .appendingPathComponent("Test file")
    .appendingPathExtension("txt")
fileUrl.path

let desktopUrl = fileUrl.deletingLastPathComponent()
desktopUrl.path

//Checking for Files and Folders

let fileManager = FileManager.default
fileManager.fileExists(atPath: playgroundUrl.path)

let missingFile = URL(fileURLWithPath: "this_file_does_not_exist.missing")
fileManager.fileExists(atPath: missingFile.path)



var isDirectory: ObjCBool = false
fileManager.fileExists(atPath: playgroundUrl.path, isDirectory: &isDirectory)
isDirectory.boolValue





