#!/bin/bash

version=${1?Please specify version}

# src/DashTextareaAutocomplete
declare -a moduleregs=(\
's/https:\/\/unpkg.com\/dash_textarea_autocomplete/https:\/\/unpkg.com\/dash-textarea-autocomplete/' \
's/realpath(joinpath( @__DIR__, \"..\", \"deps\"))/@path (joinpath( @__DIR__, \"..\", \"deps\"))/' \
's/using Dash/using Dash\nusing RelocatableFolders/' \
)

for reg in "${moduleregs[@]}"
do
    sed -i "$reg" src/DashTextareaAutocomplete.jl
done

# Project.toml
declare -a projectregs=(\
's/\[deps\]/\[deps\]\n\RelocatableFolders = \"05181044-ff0b-4ac5-8273-598c1e38db00\"/' \
's/Dash = \"0.1.3\"/Dash = \"0.1.3, 1.0\"\nRelocatableFolders = \"0.1\"/' \
's/julia = \"1.2\"/julia = \"1.3\"/')

for reg in "${projectregs[@]}"
do
    sed -i "$reg" Project.toml
done
