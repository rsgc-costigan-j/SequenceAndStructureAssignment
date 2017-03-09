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
let canvas = Canvas(width: 500, height: 600, quality: Quality.Ultra)

// Generate a grid
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.black
canvas.defaultBorderWidth = 10



// This loop runs the entire sequence 5 times
for x in stride(from: 0, through: 500, by: 100){
    
    // This loop runs 25 times
    for y in stride(from: 0, through: 500, by: 100) {
        
        // Random colour generator and setting line colours
        var c = random(from: 0, toButNotIncluding: 361)
        canvas.fillColor = Color(hue: c, saturation: 100, brightness: 100, alpha: 60)
        canvas.lineColor = Color.black
        
        //Drawing 2x2 rectangles
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 100, height: 100)
        
        //setting up the lines
        canvas.defaultLineWidth = 7
        
        // 'o' for orientation and 'i' just a placeholder for a random number
        var o = 100
        var i = random(from: 0, toButNotIncluding: 2)
        
        // telling program which way to draw line based on random number
        if i == 1{canvas.drawLine(fromX: x, fromY: y, toX: x+100, toY: y+100)}
        else{canvas.drawLine(fromX: x+100, fromY: y, toX: x, toY: y+100)}
    }
    
    //drawing title line and covering the top row of coloured squares
    canvas.fillColor = Color.white
    canvas.textColor = Color.black
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 500, width: 500, height: 100)
    canvas.drawText(message: "//////////    01    //////////", size: 50, x: 0, y: 500)
    
}
canvas.copyToClipboard()


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
