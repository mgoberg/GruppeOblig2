use context essentials2021
include world

# Game assets
pin = circle(6, "solid", "black")
circle-red = circle(15, "solid", "red")
circle-green = circle(25, "solid", "green")
circle-blue = circle(35, "solid", "blue")
circle-orange = circle(45, "solid", "orange")

centerX = 250
leftX = 125
rightX = 375

x-verdier = [list: 125, 250, 375]   

# Variable to check if circle is locked
var red-circle-locked = false
var green-circle-locked = true
var blue-circle-locked = true
var orange-circle-locked = true
  
# Direction
movement-direction = 1

fun draw-map(w):
  # Create the initial stage with a red circle and some text
  stage-a = put-image(circle-orange, leftX,100, empty-scene(500, 200))
  stage-b = put-image(circle-blue, leftX, 100, stage-a)
  stage-c = put-image(circle-green, leftX, 100, stage-b)
  stage-d = put-image(circle-red, w, 100, stage-c)
  stage-2 = put-image(pin, centerX, 100, stage-d)
  stage-3 = put-image(pin, leftX, 100, stage-2)
  stage-4 = put-image(pin, rightX, 100, stage-3)
  # Text displayed for development purposes, setting size to 0 upon completion
  put-image(text(to-repr(w),50, "olive"), centerX, 150, stage-4)
end

fun toggle-bool-false(b):
  if b:
    true
  else:
    false
  end
end


fun toggle-bool-true(b):
  if b:
    false
  else:
    true
  end
end

fun handle-mouse-event-red(w, x, y, event-type):
  doc: ```moves circle by x units when clicked and stays at the new position```
  if (event-type == "button-down") and (w < 376) and (red-circle-locked == false):
    # Når man klikker flyttes sirkel i fokus til høyre eller venstre avhengig av movement-direction
    # Som enten er 1 eller -1
    w + (125 * movement-direction)
  else if (w > 375) and (red-circle-locked == false):
    w - 375
  else:
    # Ingenting skjer
   w
  end
end

fun handle-keyboard-event-red(w, event-type):
  doc: ```fryser posisjon```
  if (event-type == "enter"):
    # Når enter trykkes skal red-circle-locked bli til true
    toggle-bool-true(red-circle-locked)
  else:
    # Ingenting skjer
    w
  end
end

red-circle-locked

fun handle-reverse(w):
  doc: ```reverse the movement direction of the red circle```
  w
end

  big-bang(leftX, [list:
    to-draw(draw-map),
    on-mouse(handle-mouse-event-red),
        on-key(handle-keyboard-event-red)
])
