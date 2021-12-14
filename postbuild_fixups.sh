#!/bin/bash

version=${1?Please specify version}

# src/DashTextareaAutocomplete
declare -a moduleregs=(\
's/https:\/\/unpkg.com\/dash_textarea_autocomplete/https:\/\/unpkg.com\/dash-textarea-autocomplete/' \
's/realpath(joinpath( @__DIR__, \"..\", \"deps\"))/joinpath(artifact\"dash_textarea_autocomplete_resources\",\"deps\")/' \
's/using Dash/using Dash, Pkg.Artifacts/' \
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

# Artifacts.toml
julia -e 'using TOML, SHA; \
    version = TOML.tryparsefile("Project.toml")["version"]; \
    key = "dash_textarea_autocomplete_resources"; \
    d = TOML.tryparsefile("Artifacts.toml"); \
    d[key]["download"][1]["sha256"] = bytes2hex(open(sha256, "deps/deps.tar.gz")); \
    d[key]["download"][1]["url"] = "https://unpkg.com/dash-textarea-autocomplete@$(version)/deps/deps.tar.gz"; \
    open(io -> TOML.print(io, d), "Artifacts.toml", "w");'
