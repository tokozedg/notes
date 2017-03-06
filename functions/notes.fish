set -q NOTES_HOME; or set NOTES_HOME $HOME/.notes

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
    eval "$EDITOR $NOTES_HOME"
  else
    eval "$EDITOR $NOTES_HOME/$note"
  end
end

complete -x -c notes -a "(ls $NOTES_HOME)"
