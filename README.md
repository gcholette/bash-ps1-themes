<h1 align="center">
  Bash Prompt Themes :rainbow: 
</h1>

<p align="center">
Bash prompt themes, with a color gradient feature.
</p>
<p align="center">
    <img src="https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/misc/photos/magenta_gradient3.png"/>
</p>

## How to use
See themes in `./themes/`, try them out by using `source ./themes/teal_horizon`. Or demo them all with `./demo_themes`

### Persistent use
Ideally have the repository cloned/downloaded on your machine because themes aren't fully standalone, they use the lib/lib file from this repo. 

Source the theme in your `.bashrc`. For instance, at the end of your `.bashrc`, write `source ~/Documents/bash-ps1-themes/themes/teal_cyber_3`. Replace `~/Documents` with whatever path you store `bash-ps1-themes/` in. 

### Notice
Works only in Bash shells, incompatible with zsh.

### Examples
Find more examples in the `themes/` folders.

![original_grad](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/misc/photos/original_gradient.png)

![teal_theme](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/misc/photos/teal_theme1.png)

![magenta_grad](https://raw.githubusercontent.com/showlet/bash_ps1_themes/master/misc/photos/magenta_gradient3.png)

![red_theme](https://user-images.githubusercontent.com/8711020/142965044-cfb09fba-b78a-4acd-9e0c-91fab0c0126c.png)

![teal_light_theme](https://user-images.githubusercontent.com/8711020/142966562-12f60fbc-15f8-4e5f-a78e-5b6c177cac06.png)

![image](https://user-images.githubusercontent.com/8711020/142968847-53f5aaf3-0ae2-49db-ac39-90a41b331f04.png)

## How it works

In the `lib/` folder, the `lib` file contains two gradient functions. One that works with rgb codes and one that works with bash 256 color codes. 

The themes work with the PROMPT_COMMAND and PS1 environment variables. The PROMPT_COMMAND invokes a function that in turn invokes other functions to build a PS1 variable. The scripts generally require some functions from the `lib` file instead of being completely standalone. But you can easily copy over most of the functions in your `.bashrc` file if you wish to, this is a small codebase.

### Usage of lib functions 

`fg_gradient_ps1 "255;0;0" "0;0;255" "localhost"`

`256_ps1_fg_gradient 83 6 "localhost"` 
