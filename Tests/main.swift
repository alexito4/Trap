#!/usr/bin/env xcrun swift -target x86_64-apple-macosx10.10 -F .

import Foundation
import Trap

var count = 0

Trap.handle(Trap.Signal.all) {
    print("Signal \($0)")
    print("count: \(count)")
    exit(EXIT_SUCCESS)
}

// Wait 2 seconds for the program to be killed
alarm(2)

while true {
    count += 1
    print(NSDate().timeIntervalSince1970)
    
    if count > 100000 {
//        raise(SIGTERM)
    }
}

// Or stop it yourself with cntrl+C




