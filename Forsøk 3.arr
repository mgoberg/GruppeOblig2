use context essentials2021
include world
include reactors
include image

pin = circle(8, "solid", "black")

circle-red = circle(50, "solid", "red")

circle-green = circle(75, "solid", "green")

circle-blue1 = circle(100, "solid", "blue")

circle-orange1 = circle(125, "solid", "orange")

"image 1"
#image 1
image1 = put-image( 
  overlay(pin,overlay(circle-red, overlay(circle-green, overlay(circle-blue1 ,circle-orange1)))),
  250,250,

#Pole1^

put-image(

      pin,

500,250,

#Pole2^

put-image(

      pin,

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 2
"image 2"

image2 = put-image( 
  
  overlay(pin,overlay(circle-green, overlay(circle-blue1 ,circle-orange1))),
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-red),

500,250,

#Pole2^

put-image(

      pin,

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 3
"image 3"

image3 = put-image( 
  
  overlay(pin,overlay(circle-blue1 ,circle-orange1)),
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-red),

500,250,

#Pole2^

put-image(

      overlay(pin,circle-green),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 4
"image 4"

image4 = put-image( 
  
  overlay(pin,overlay(circle-blue1 ,circle-orange1)),
  250,250,

#Pole1^

put-image(

    pin,

500,250,

#Pole2^

put-image(

      overlay(pin,overlay(circle-red,circle-green)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))

#image 5
"image 5"

image5 = put-image( 
  
  overlay(pin,circle-orange1),
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-blue1),

500,250,

#Pole2^

put-image(

      overlay(pin,overlay(circle-red,circle-green)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 6
"image 6"

image6 = put-image( 
  
  overlay(pin,overlay(circle-red, circle-orange1)),
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-blue1),

500,250,

#Pole2^

put-image(

      overlay(pin,circle-green),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 7
"image 7"

image7 = put-image( 
  
  overlay(pin,overlay(circle-red, circle-orange1)),
  250,250,

#Pole1^

put-image(

    overlay(pin,overlay(circle-green, circle-blue1)),

500,250,

#Pole2^

put-image(

      pin,

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 8
"image 8"

image8 = put-image( 
  
  overlay(pin, circle-orange1),
  250,250,

#Pole1^

put-image(

    overlay(pin,overlay(circle-red, overlay(circle-green, circle-blue1))),

500,250,

#Pole2^

put-image(

      pin,

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 9
"image 9"

image9 = put-image( 
  
  pin, 
  250,250,

#Pole1^

put-image(

    overlay(pin,overlay(circle-red, overlay(circle-green, circle-blue1))),

500,250,

#Pole2^

put-image(

      overlay(pin, circle-orange1),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 10
"image 10"

image10 = put-image( 
  
  pin, 
  250,250,

#Pole1^

put-image(

    overlay(pin, overlay(circle-green, circle-blue1)),

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-red, circle-orange1)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 11
"image 11"

image11 = put-image( 
  
  overlay(pin, circle-green),
  250,250,

#Pole1^

put-image(

    overlay(pin, circle-blue1),

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-red, circle-orange1)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


#image 12
"image 12"

image12 = put-image( 
  
  overlay(pin, overlay(circle-red, circle-green )),
  250,250,

#Pole1^

put-image(

    overlay(pin, circle-blue1),

500,250,

#Pole2^

put-image(

      overlay(pin, circle-orange1),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 13
"image 13"

image13 = put-image( 
  
  overlay(pin, overlay(circle-red, circle-green )),
  250,250,

#Pole1^

put-image(

    pin,

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-blue1, circle-orange1)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))




#image 14
"image 14"

image14 = put-image( 
  
  overlay(pin, circle-green),
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-red),

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-blue1, circle-orange1)),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))



#image 15
"image 15"

image15 = put-image( 
  
  pin,
  250,250,

#Pole1^

put-image(

    overlay(pin,circle-red),

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-green, overlay(circle-blue1, circle-orange1))),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))




#image 16
"image 16"

image16 = put-image( 
  
  pin,
  250,250,

#Pole1^

put-image(

    pin,

500,250,

#Pole2^

put-image(

      overlay(pin, overlay(circle-red, overlay(circle-green, overlay(circle-blue1, circle-orange1)))),

  750,250,
  
  #Pole3

  empty-color-scene(1000, 500, "white-smoke"))))


"FUNCSIONS"
"-------------"



images = [list: image1, image2, image3, image3, image4, image5, image6,image7,image8, image9, image10 ,image11, image12, image13, image14, image15, image16]

   


fun  play():
  images.get(0)
end

play()


fun restart():
  images.get(0)
end    

restart()



x = 5

fun bak():
  images.get(x - 1)
end

bak()

fun foran():
  images.get(x + 1)
end

foran()



fun siste():
  images.get(16)
end
siste()





