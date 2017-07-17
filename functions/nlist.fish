set -q NOTES_HOME; or set NOTES_HOME $HOME/.notes
set -q NOTES_EDITOR; or set NOTES_EDITOR $EDITOR
set -q NOTES_SUFFIX; or set NOTES_SUFFIX txt

function nlist
  eval "tree -P '*.$NOTES_SUFFIX' $NOTES_HOME"
end
