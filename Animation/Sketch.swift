//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x = 0
    var s = 50
    var height = 700
    var m = 0
    var m2 = 0
    var m3 = 0
    var green = 80
    var yellow = 60
    var red = 0
    var colour1 = Float(0)
    var colour2 = Float(0)
    var colour3 = Float(0)
    var boolean = true

    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1280, height: height)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        if(m<height/3){
            colour1 = 80
        }else if(m<(height/3)*2){
            colour1 = 60
        }else{
            colour1 = 0
        }
        if(m2<height/3){
            colour2 = 80
        }else if(m2<(height/3)*2){
            colour2 = 60
        }else{
            colour2 = 0
        }
        
        if(m3<height/3){
            colour3 = 80
        }else if(m3<(height/3)*2){
            colour3 = 60
        }else{
            colour3 = 0
        }


        var i = 0
        
        while (m<height && i<10){
            m=m+10
            i=i+1
        }
        if(boolean == false){
            m=m-10
        }
        if (m2<height){
            m2=m2+10
        }
        if (m3<height){
            m3=m3+5
        }
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawRectangle (bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: colour1, saturation: 80, brightness: 90, alpha: 100)
        canvas.drawRectangle (bottomRightX: 0, bottomRightY: 0, width: 100, height: m)
        canvas.fillColor = Color(hue: colour2, saturation: 80, brightness: 90, alpha: 100)
        canvas.drawRectangle (bottomRightX: 200, bottomRightY: 0, width: 100, height: m2)
        canvas.fillColor = Color(hue: colour3, saturation: 80, brightness: 90, alpha: 100)
        canvas.drawRectangle (bottomRightX: 400, bottomRightY: 0, width: 100, height: m3)
        
    }
    
}