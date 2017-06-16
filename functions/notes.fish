set -q NOTES_HOME; or set NOTES_HOME $HOME/.notes
set -q NOTES_EDITOR; or set NOTES_EDITOR $EDITOR
set -q NOTES_SUFFIX; or set NOTES_SUFFIX txt

function notes -a note
  if not test -d $NOTES_HOME
    if not test -f $NOTES_HOME
      mkdir $NOTES_HOME
    else
      echo "$NOTES_HOME is a file, a directory is expected. You might need to set the NOTES_HOME universal variable.

set -U NOTES_HOME path/to/directory

or create the directory

mkdir -p $NOTES_HOME"
    return
    end
  end

  if test -z $note
    eval "tree $NOTES_HOME"
  else
    eval "$NOTES_EDITOR $NOTES_HOME/$note.$NOTES_SUFFIX"
  end
end

complete -x -c notes -a "(cd $NOTES_HOME; find . -type f -name '*.$NOTES_SUFFIX' | sed -n 's!\./!!p' | sed -n 's!\.org!!p')"
