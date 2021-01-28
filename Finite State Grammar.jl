# (S)tate (S)pace
@enum SS the old man men come comes TERMINATE 

# Initial State (Start of the Sentence)
initial_state = the

# Goal State (Terminates the Program)
final_state = TERMINATE

# Input Alphabet
@enum Σ Singular Plural Recurse

# Returns a State
function δ(State, Input)
  
  # Base Case (Terminating State)
  if (State == TERMINATE)
    println("\nReached Final State")
    return TERMINATE
  end

  # 1. Initial State
  if (State == the)
    return old

  # 2a. Initial State -> Next
  elseif (State == old && Input == Singular)
    return man

  # 2b. Initial State -> Next
  elseif (State == old && Input == Plural)
    return men

  # 2c. Initial State -> Next
  elseif (State == old && Input == Recurse)
    return old

  # 3a. Initial State -> Next -> Next
  elseif (State == man)
    return comes

  # 3b. Initial State -> Next -> Next
  elseif (State == men)
    return come

  # 4a. Initial State -> Next -> Next -> Next
  elseif (State == comes)
    return TERMINATE

  # 4b. Initial State -> Next -> Next -> Next
  elseif(State == come)
    return TERMINATE
  end
end

# Returns a Finite State Language Sentence
function FiniteStateGrammar(Initial_State)

  # Initialize Current State to Initial State
  Current = Initial_State
  println(Initial_State)

  # Traverse states until TERMINATE
  while (Current != TERMINATE)

    # Get Input
    if (Current != old)
      r = rand((1, 2))
      if (r == 1)
        Input = Singular
      else
        Input = Plural
      end
    elseif (Current == old)
      r = rand((1, 2, 3))
      if (r == 1)
        Input = Singular
      elseif (r == 2)
        Input = Plural
      else
        Input = Recurse
      end
    end
    
    # Get Next State
    Next = δ(Current, Input)

    # Print unless final state
    if (Next != TERMINATE)
      println(Next)
    else
      return
    end

    # Set current state to next state
    Current = Next
  end
end

FiniteStateGrammar(initial_state) #DEMO