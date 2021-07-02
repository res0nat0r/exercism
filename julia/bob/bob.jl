"""
Bob is a lackadaisical teenager. In conversation, his responses are very limited.
Bob answers 'Sure.' if you ask him a question, such as "How are you?".
He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).
He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
He says 'Fine. Be that way!' if you address him without actually saying anything.
He answers 'Whatever.' to anything else.

Bob's conversational partner is a purist when it comes to written communication
and always follows normal rules regarding sentence punctuation in English.
"""

function bob(stimulus)
  flags = Dict("question" => 0x1b, 
               "yell" => 0x10b, 
               "empty" => 0x100b, 
               "other" => 0x0b)

  response = Dict(0x1b => "Sure.",
                   0x10b => "Whoa, chill out!",
                   0x11b => "Calm down, I know what I'm doing!",
                   0x100b => "Fine. Be that way!",
                   0x0b => "Whatever.")

  seen = 0x0b

  if contains(stimulus, r"\?$")
    seen |= flags["question"]
  end

  if uppercase(stimulus) == stimulus && any(isletter, stimulus)
    seen |= flags["yell"] 
  end

  if !contains(stimulus, r"[a-zA-Z]")
    seen |= flags["empty"] 
  end

  return response[seen]
end
