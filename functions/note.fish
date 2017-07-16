set -q NOTES_HOME; or set NOTES_HOME $HOME/.notes
set -q NOTES_EDITOR; or set NOTES_EDITOR $EDITOR
set -q NOTES_SUFFIX; or set NOTES_SUFFIX txt

function note -a file note
  set full_note "** $note"
  echo $full_note >> $NOTES_HOME/$file.$NOTES_SUFFIX
  echo "OK: $file -> '$full_note'"
end

complete -x -c note -a "(cd $NOTES_HOME; find . -maxdepth 1 -type f -name '*.$NOTES_SUFFIX' | sed -n 's!\./!!p' | sed -n 's!\.$NOTES_SUFFIX!!p')"
