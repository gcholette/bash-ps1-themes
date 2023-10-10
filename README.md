<h1 align="center">
  Bash Prompt Themes :rainbow: 
</h1>

<p align="center">
Bash prompt themes, with a color gradient feature.
</p>
<p align="center">
    <img src="misc/photos/teal_horizon_demo.png"/>
</p>

## How to use

Themes are a combination of a template and a color palette. The template is the prompt itself, and the colors from the palette are applied onto it.

Demo the themes to select one using:

```bash
./demo_themes
```

To use a theme simply source it to your current shell:

```bash
source ./themes/teal_horizon
```

### Persistent use
Clone the repo on your machine because themes aren't fully standalone, they use the `lib/lib` file from this repo. 

Source the theme in your `.bashrc`. For instance, at the end of your `.bashrc`, write `source ~/Documents/bash-ps1-themes/themes/teal_cyber_3`. Replace `~/Documents` with whatever path you store `bash-ps1-themes/` in. 

### Notice
Works only in Bash shells.

## How it works

The themes work with the PROMPT_COMMAND and PS1 environment variables. The PROMPT_COMMAND invokes a function that in turn invokes other functions to build a PS1 variable. The scripts generally require some functions from the `lib` file instead of being completely standalone.

## Development

You can create your own templates and color palettes.

### Palette creation

Create a new file in the `palettes/` folder and use/update the following variables to your liking:

```bash
#!/bin/bash
palette_primary="#1bcfc6"
palette_primary_dark="#02a199"
palette_secondary="#008cff"
palette_secondary_dark="#0066ba"
palette_accent="#b88914"
palette_accent_dark="#9c7f0c"
palette_gradient_start="#0bb092"
palette_gradient_end="#008cff"
palette_variant_1="#00d7af"
palette_variant_2="#00d7d7"
palette_variant_3="#00d7ff"
palette_text="#d2d2d2"
```

Then, to apply the palette to the templates, there is a `generate_themes` script that combines all sets of templates and palettes together:
```bash
./generate_themes
```

Your theme will be generated in the `themes/` folder.

### Usage of lib functions 

`fg_gradient_ps1 "#ff0000" "#0000ff" "localhost"`

`256_ps1_fg_gradient 83 6 "localhost"` 
