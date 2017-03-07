/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 10



// This loop makes a 10 rows of columns
for x in stride(from: 0, through: 500, by: 100){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 0, through: 500, by: 100) {
    
        // Draw the shapes
        var z = random(from: 0, toButNotIncluding: 361)
        canvas.fillColor = Color(hue: z, saturation: 100, brightness: 100, alpha: 60)
                  canvas.lineColor = Color.black
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
        canvas.defaultLineWidth = 7
        var o = 100
        var i = random(from: 0, toButNotIncluding: 2)
        if i == 1{canvas.drawLine(fromX: x, fromY: y, toX: x+100, toY: y+100)}
        else{canvas.drawLine(fromX: x+100, fromY: y, toX: x, toY: y+100)}
        }
    canvas.fillColor = Color.red
    canvas.textColor = Color.white
    canvas.drawRectangle(bottomLeftX: 150, bottomLeftY: 325, width: 200, height: 50)
    canvas.drawText(message: "Supreme", size: 45, x: 161, y: 325)
    
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
