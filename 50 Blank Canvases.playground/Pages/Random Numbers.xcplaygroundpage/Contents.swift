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
let canvas = Canvas(width: 200, height: 100)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?
for x in stride(from: 1, through: 200, by: 1){
    

let y = random(from: 1, toButNotIncluding: 101)
//canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: y)

}


//generate perlin noise ( its  a random number that is guaranteed to be diffrent than the last number but4.. close to the previus number


let p = PerlinGenerator() // gives us a generator to use

//Get a variable to track the number threw the space
var position = 0.0
let increment = 0.01 // how fast to move

//loop 200 times
for x in stride(from: 0, through: 200, by: 1){
    position += increment
    let value = p.perlinNoise(x: position)

    let i = map(value: value, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 100)

    canvas.lineColor = Color(hue: Int(i)+100, saturation: Int(i), brightness: 90, alpha: 100)
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: Int(i))
}


/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

