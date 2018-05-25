-----------------------------------------------------------------------------------------
--
-- main.lua
-- 
-- Created by: Chris Asante
-- Created on: Feb 2018
-- 
-- Calculates the circumfrance and area of the circle
-----------------------------------------------------------------------------------------

local RadiusOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
RadiusOfCircleTextField.id = "radius textField" 

local AreaOfCircleTextField = display.newText( "Input the Area", display.contentCenterX, display.contentCenterY + 450, native.systemFont, 75 )
AreaOfCircleTextField.id = "area textField"
AreaOfCircleTextField:setFillColor( 1, 1, 1 )

local CircumferenceOfCircleTextField = display.newText( "Input the Circumference", display.contentCenterX, display.contentCenterY + 550, native.systemFont, 75 )
CircumferenceOfCircleTextField.id = "Circumference textField"
CircumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
 
    local RadiusOfCircle
    local AreaOfCircle
    local CircumferenceOfCircle
 
    RadiusOfCircle = RadiusOfCircleTextField.text
    AreaOfCircle = RadiusOfCircle * RadiusOfCircle * 3.142
    
    AreaOfCircleTextField.text = "The area is " .. AreaOfCircle

    CircumferenceOfCircle = 2 * RadiusOfCircle * 3.142

    CircumferenceOfCircleTextField.text = "The Circumference is " .. CircumferenceOfCircle
    

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )