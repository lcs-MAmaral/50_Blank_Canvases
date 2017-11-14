//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)
let x = 0
let y = 0
let a = 300

canvas.defaultLineWidth = 5
canvas.drawLine(fromX: x, fromY: y, toX: x + a, toY: y)
canvas.translate(byX: x + a, byY: y)
canvas.rotate(by: 120)
canvas.drawLine(fromX: x, fromY: y, toX: x + a, toY: y)
canvas.translate(byX: x + a, byY: y)
canvas.rotate(by: 120)
canvas.drawLine(fromX: x, fromY: y, toX: x + a, toY: y)

PlaygroundPage.current.liveView = canvas.imageView

