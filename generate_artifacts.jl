using TOML
using Pkg.Artifacts

const project_toml_path = joinpath(@__DIR__, "Project.toml")
const artifacts_toml_path = joinpath(@__DIR__, "Artifacts.toml")
const depsdir = "deps"
const depsdir_path = joinpath(@__DIR__, depsdir)
const tarball_name = "deps.tar.gz"
const tarball_path = joinpath(depsdir_path, tarball_name)
const key = "dash_textarea_autocomplete_resources"
const url_prefix = "https://unpkg.com/dash-textarea-autocomplete"

function get_version()
    project_dict = TOML.tryparsefile(project_toml_path)
    isnothing(project_dict) && throw("Could not find / parse Project.toml")
    version = get(project_dict, "version", nothing)
    isnothing(version) && throw("Could not parse Project.toml version")
    return version
end

function generate_artifacts(; version=get_version())
    @info "removing old Artifacts.toml"
    isfile(artifacts_toml_path) && rm(artifacts_toml_path)
    @info "removing old artifact tarball"
    isfile(tarball_path) && rm(tarball_path)
    artifacts_hash = create_artifact() do artifacts_path
        for fname in readdir(depsdir_path)
            @info "checking-in $fname as an artifacts"
            cp(joinpath(depsdir_path, fname), joinpath(artifacts_path, fname))
        end
    end

    @info "creating new artifact tarball"
    tarball_hash = archive_artifact(artifacts_hash, tarball_path)

    @info "creating new Artifacts.toml"
    download_info = [("$url_prefix@$version/$depsdir/$tarball_name",
                      tarball_hash)]
    bind_artifact!(artifacts_toml_path, key, artifacts_hash; download_info)
end

generate_artifacts()
