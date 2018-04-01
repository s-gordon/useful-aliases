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

dl_pdb_structure() {
  # takes single argument of four-character pdb code
  # todo: add check for validity of code
  local __pdb_code="$1"
  printf "Downloading PDB code %s to %s.pdb\n" "$__pdb_code" "$__pdb_code"
  wget --quiet "http://www.pdb.org/pdb/files/$__pdb_code.pdb" -O "$__pdb_code.pdb"
}

# }}}1

# aliases # {{{1

# return filename without path or extension
alias get_fname='get_file_name_without_ext'

# download structure from pdb using four character alphanumeric code
alias pdb-dl="dl_pdb_structure"

# }}}1
