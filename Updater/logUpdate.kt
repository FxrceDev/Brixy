class definitions {
    GetFile(<thisdir\packages.cake)
}

class system {
    GetFile(<thisdir\archive.sm>)
}

var log = Logger.get

functions do {

    while (log.isDebugEnabled) {
        do {
            println("Successfully activated debugger")
        }
    }

}