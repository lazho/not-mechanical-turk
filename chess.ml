(* Represents a chess piece. *)
type piece =
  | Pawn of bool * bool	(* Moved? En passant-able? *)
  | Rook of bool	(* Moved? *)
  | Knight
  | Bishop
  | Queen
  | King of bool	(* Moved? *)

(* Represents a side/player. *)
type side =
  | Light
  | Dark

(* Represents a coordinate on the board. *)
type coord = int * int

(* Represents a full square on the board. *)
type square = coord * side * piece

(* The list that holds the squares. *)
type board = square list

(* The current state of the game. Contains the board and the side to move. *)
type game_state = board * side

(* A move during a game. It is a list of coordinates tupled with the square to be written over the original. *)
type move = (int * int * square) list

(* Checks if a coord is valid. *)
let isValidCoord (x, y) =
  (x >= 0) && (x <= 7) && (y >= 0) && (y <= 7)

(* Get the side and piece given a coord and a board. *)
let rec getByCoord (b: board) (c: coord) : (side * piece) option =
  match b with
    | [] -> None
    | (c0, s, p)::ss ->
      if (c0 = c) then Some (s, p)
      else (getByCoord ss c)

(* Get all possible moves related to a square given the board it is on. *)
let getSquareMoves (sq: square) (b: board) : (move list) = failwith "Not implemented"

(* Get all possible moves in a game state. *)
let getMoves (gs: game_state) : (move list) = failwith "Not implemented"

(* Apply a move to a game state *)
let applyMove (gs: game_state) (m: move) : game_state = failwith "Not implemented"

(* Get all possible next states *)
let getNextStates (gs: game_state) : (game_state list) = failwith "Not implemented"

(* Evaluate a game state and return a numerical score. *)
let evalState (gs: game_state) : int = failwith "Not implemented"
