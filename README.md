# Trap

![Giphy](http://media3.giphy.com/media/3ornka9rAaKRA2Rkac/giphy.gif)

Trap is a small Swift framework to handle operating system signals.

## Usage

    import Trap
    
    let task = NSTask...
    
    Trap.handle(.interrupt) {
        task.terminate()
        exit(EXIT_FAILURE)
    }
    
    task.launch()
    
It can also handle multiple signals at the same time.

    Trap.handle(Trap.Signal.all) {
        print("Signal: \($0)")
        ...
    }

## Requirements

Trap is build using the stable version of **Swift 2.2**.