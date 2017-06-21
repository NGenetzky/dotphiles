# bash

## dotsyncrc

To use, add the following to **dotsyncrc**

```
    [files]
    ..
    bash/bashrc
    ..
    [endfiles]
```

## bashrc

The individual per-interactive-shell startup file.

When an interactive shell that is not a login shell is started, bash reads and
executes commands from ~/.bashrc, if that file exists.
(src: https://linux.die.net/man/1/bash

## bash_profile

The personal initialization file, executed for login shells.

When you login (type username and password) via console, either sitting at the
machine, or remotely via ssh: .bash_profile is executed to configure your
shell before the initial command prompt. 
(src: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html)

## bash_logout

The individual login shell cleanup file, executed when a login shell exits.

## inputrc

Individual readline initialization file.

## PROMPT_COMMAND

Bash provides an environment variable called PROMPT_COMMAND. The contents of
this variable are executed as a regular Bash command just before Bash displays
a prompt.
(src: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x264.html)


sources:
- https://linux.die.net/man/1/bash
- http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x264.html


