use context essentials2021

import reactors as R
import image as I

### Data Typer ###

data Posisjon:
  | venstre
  | midten
  | hoyre
end

data GameStatus:
  | ongoing
  | game-over
  | seier
end

type Pins = {
  x :: Number,
  y :: Number,
}

type Sirkel = {
  x :: Number,
  y :: Number,
  is-locked :: Boolean,
}

type State = {
  pin1 :: Pins,
  pin2 :: Pins,
  pin3 :: Pins,
  sirkel1 :: Sirkel,
  sirkel2 :: Sirkel,
  sirkel3 :: Sirkel,
  sirkel4 :: Sirkel,
  plassering :: Posisjon,
  game-status :: GameStatus,
  andre-plasseringer :: List<Posisjon>,
  trekk :: Number
}

### Konstanter ###

BPS = 30

SKJERM-BREDDE = 500
SKJERM-HOYDE = 300
SKJERM-FARGE = "white"

PIN1-X-POSISJON = 125
PIN2-X-POSISJON = 250
PIN3-X-POSISJON = 400

Y-AKSE = 100

TREKK-FARGE = "Black"
TREKK-STR = 50
TREKK-X = 250
TREKK-Y = 200

GAMEOVER-TEXT-FARGE = "red"
GAMEOVER-TEXT-STR = 36
GAMEOVER-TEXT-X = SKJERM-BREDDE / 2
GAMEOVER-TEXT-Y = SKJERM-HOYDE / 2


PIN-HOYRE = circle(6, "solid", "black")
PIN-MIDTEN = circle(6, "solid", "black")
PIN-VENSTRE = circle(6, "solid", "black")

SIRKEL-ROD = circle(15, "solid", "red")
SIRKEL-GRONN = circle(25, "solid", "green")
SIRKEL-BLAA = circle(35, "solid", "blue")
SIRKEL-ORANSJ = circle(45, "solid", "orange")

### INITIAL ###

INITIAL-STATE = {
  pin1: {
      x:125,
      y:100
    },
  pin2: {
      x:250,
      y:100
    },
  pin3: {
      x:400,
      y:100
    },
  sirkel1: {
      x: 125,
      y: 100,
      is-locked: false
    },
  sirkel2: {
      x: 125,
      y: 100,
      is-locked: false
    },
  sirkel3: {
      x: 125,
      y: 100,
      is-locked: false
    },
  sirkel4: {
      x: 125,
      y: 100,
      is-locked: false
    },
  game-status: ongoing,
  plassering: venstre,
  andre-plasseringer: empty,
  trekk: 0
}


## TEGNING ##
  
  fun draw-pin(pins :: Pins, acc :: Image) -> Image:
          img = PIN-HOYRE
  place-image(img, pins.x, pins.y, acc)
        end
  
        fun draw-pins(state :: State, acc :: Image) -> Image:
          acc
    ^ draw-pin(state.pin1, _)
    ^ draw-pin(state.pin2, _)
    ^ draw-pin(state.pin3, _)
end

fun draw-sirkel1(state :: State, acc :: Image) -> Image:
  sirkel1 = SIRKEL-ROD
  
  place-image(sirkel1, state.sirkel1.x, state.sirkel1.y, acc)
end

fun draw-sirkel2(state :: State, acc :: Image) -> Image:
  sirkel2 = SIRKEL-GRONN
  
  place-image(sirkel2, state.sirkel2.x, state.sirkel2.y, acc)
end

fun draw-sirkel3(state :: State, acc :: Image) -> Image:
  sirkel3 = SIRKEL-BLAA
  
  place-image(sirkel3, state.sirkel3.x, state.sirkel3.y, acc)
end

fun draw-sirkel4(state :: State, acc :: Image) -> Image:
  sirkel4 = SIRKEL-ORANSJ
  
  place-image(sirkel4, state.sirkel4.x, state.sirkel4.y, acc)
end

fun draw-trekk-text(state :: State, acc :: Image) -> Image:
  txt = text(num-to-string(state.trekk), TREKK-STR, TREKK-FARGE)
  
  place-image(txt, TREKK-X, TREKK-Y, acc)
end

fun draw-gameover-text(acc :: Image) -> Image:
  txt = text("GAME OVER", GAMEOVER-TEXT-STR, GAMEOVER-TEXT-FARGE)
  
  place-image(txt, GAMEOVER-TEXT-X, GAMEOVER-TEXT-Y, acc)
end

fun draw-handler(state :: State) -> Image:
  canvas = empty-color-scene(SKJERM-BREDDE, SKJERM-HOYDE, SKJERM-FARGE)
  
  canvas-with-game = canvas
    ^ draw-trekk-text(state, _)
    ^ draw-sirkel4(state, _)
    ^ draw-sirkel3(state, _)
    ^ draw-sirkel2(state, _)
    ^ draw-sirkel1(state, _)
    ^ draw-pins(state, _)
if state.game-status == game-over:
    canvas-with-game
      ^ draw-gameover-text(_)
  else:
    canvas-with-game  
end
end

### Starte på ny ###

fun start-paa-ny(state :: State) -> State:
  sirkel1 = state.sirkel1
  plassering = cases (Posisjon) state.plassering:
    | venstre => state.sirkel2 and state.sikel3 and state.sirkel4
    | midten => state.sirkel1
    | hoyre => empty
  end

  forflytning = sirkel1.{
    x: 250,
    y: 100,
    is-locked: false
  }
  state.{sirkel1: forflytning}
end

### Inputs ###
fun handle-keyboard-event(state :: State, key :: String) -> State:
  cases (GameStatus) state.game-status:
      | ongoing =>
      if (key == " ") and not(state.plassering == hoyre):
        if state.sirkel1.is-locked:
          state.sirkel1.{x: 250}
        else:
          state.sirkel1.{x: 250}
        end
      else:
        state
      end
          | transitioning(_) => 
      state
    | game-over => 
      if key == " ":
        INITIAL-STATE
      else:
        state
      end
  end
end

### REACTOR ###

game = reactor:
  init: INITIAL-STATE,
  seconds-per-tick: 1 / BPS,
  on-key: handle-keyboard-event,
  to-draw: draw-handler
end 


R.interact(game)
      