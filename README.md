# Tetrish
Tetrish is a Tetris clone written entirely in shell script. The main goal of the project is to run in as many Bourne style shells as possible and be fully posix complient.

# Features
Tetrish can be configured to use either pure ascii to render blocks such as `[]` (-A) or it can use the unicode block emoji `🔳` (-a).
Other than that it behaves pretty much like regular Tetris.

# Controls
```
up/k		rotate piece clockwise
left/h		move piece left
right/l		move piece right
down/j		move piece down once
space		drop piece to ground
```

# Posix
Tetrish is widely compatable and supports bash, dash, mksh, ksh, and busybox sh.
It can support the Heirloom Bourne shell, but it is so slow that the game is unplayable.
This is because the classic Bourne shell has no support for native arithmetic and all arithmetic operations must be outsourced to expr
In order to not bog down the script and render the game unplayable the script uses $(()) notation instead of expr.
However a makefile is included that will generate a new script with all of the $(()) syntax translated to calls to expr for compatability with the Heirloom Bourne shell
