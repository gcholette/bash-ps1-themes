<h1 align="center">
  Bash PS1 Themes :rainbow: 
</h1>

<p align="center">
Themes for the PS1 bash environment variable, with a color gradient feature.
  <img src="https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/photos/magenta_gradient3.png"/>
</p>
  
## How to use

For persistent use, copy the theme's source in your `.bashrc`.

The theme files have `export PS1=...` at the end, so they only need to be executed to apply the theme to the current shell.

See themes in `./themes/`, try them out by using `source ./themes/Dark-red/dark_red_1`

Works only in Bash shells, incompatible with zsh.

#### Retro Teal 1 
![original_grad](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/photos/original_gradient.png)

#### Retro Teal 2
![teal_theme](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/photos/teal_theme1.png)

#### Retro Pink 1
![magenta_grad](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/photos/magenta_gradient3.png)

## How it works

To generate gradients with [Bash colors](https://misc.flogisoft.com/bash/tip_colors_and_formatting#colors1), the grad() function spreads x consecutive color ids across a word, starting at a certain color id. 

Usage: `$(grad 83 6 "localhost")` 

![image](https://user-images.githubusercontent.com/8711020/142923686-7d3c7072-3afe-46c1-a846-f7229b726c6f.png)
