#!/bin/bash

# src/DashTextareaAutocomplete
declare -a moduleregs=(\
's/const resources_path = realpath(joinpath( @__DIR__, \"..\", \"deps\"))/resources_path() = artifact\"dash_textarea_autocomplete_resources\"/' \
's/using Dash/using Dash, Pkg.Artifacts/' \
's/            resources_path,/            resources_path(),/' \
)

for reg in "${moduleregs[@]}"
do
    sed -i "$reg" src/DashTextareaAutocomplete.jl
done

# Project.toml
declare -a projectregs=(\
's/\[deps\]/\[deps\]\nPkg = \"44cfe95a-1eb2-52ea-b672-e2afdf69b78f\"/' \
's/Dash = \"0.1.3\"/Dash = \"0.1.3, 1.0\"/' \
's/julia = \"1.2\"/julia = \"1.3\"/')

for reg in "${projectregs[@]}"
do
    sed -i "$reg" Project.toml
done

# deps/deps.tar.gz + Artifacts.toml
julia generate_artifacts.jl
