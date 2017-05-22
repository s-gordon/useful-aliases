#!/bin/zsh

# functions # {{{1

get_file_name_without_ext() {
  # takes single argument of filename
  # e.g. /path/to/foo.extension
  local __fullname="$1"
  local __basename="${__fullname##*/}"  ;# truncate away path
  local __fname="${__basename%.*}"  ; # truncate away file extension
  echo "$__fname"
}

# }}}1

# aliases # {{{1

# return filename without path or extension
alias get_fname='get_file_name_without_ext'

# }}}1
