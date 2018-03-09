-----------------------------------------------------------------------------------------

--Created by: adam
-- Created on: march 5

-- this file sees if the number you picked if is the same as the what the computer picked
-----------------------------------------------------------------------------------------

local numberguessed
local numberguessedTextField = native.newTextField( display.contentCenterX , display.contentCenterY - 200, 450, 100 )
numberguessedTextField.id = "numberguessed textField"

local randomnum = math.random(1,6)
math.randomseed( os.time() )
print(randomnum)
local numberguessedtonumber

local ClickButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
ClickButton.x = display.contentCenterX
ClickButton.y = display.contentCenterY
ClickButton.id = "click button"

display.newText("Pick a number from 1-6 and see if your guess was right.", 1024, 300, native.systemFont, 80)

local function clickbuttonTouch( event )
	numberguessed = numberguessedTextField.text
	numberguessedtonumber = tonumber( numberguessed )
    if randomnum == numberguessedtonumber then
    	display.newText("Correct!!", 1024, 900, native.systemFont, 100)

    else
    	display.newText("Incorrect! Please try again", 1024, 900, native.systemFont, 100)
    	display.newText("the number was " ..randomnum, 1024, 1000, native.systemFont, 70)
     end
end

ClickButton:addEventListener( "touch", clickbuttonTouch )