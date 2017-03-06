# notes

A fish shell utility for managing notes from the command line with `$EDITOR`.

## Install

```sh
fisher install talon/notes
```

## Usage

notes are stored in the `$NOTES_HOME` folder which is set by default to `$HOME/.notes`. You can change this by setting
the variable yourself. `set -U NOTES_HOME path/to/my/notes/folder`

```sh
# open the notes folder with $EDITOR
notes

# open a note with $EDITOR
notes my-note
```

It also supports tab completion for existing notes.

> I only use `nvim` so I'm not sure how useful this is for other editors but presumably if your editor can open a
> a directory then it will work just fine.
