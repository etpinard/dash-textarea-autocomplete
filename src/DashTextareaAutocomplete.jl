
module DashTextareaAutocomplete
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("dashtextareaautocomplete.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_textarea_autocomplete",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_textarea_autocomplete.min.js",
    external_url = "https://unpkg.com/dash_textarea_autocomplete@0.0.1/dash_textarea_autocomplete/dash_textarea_autocomplete.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_textarea_autocomplete.min.js.map",
    external_url = "https://unpkg.com/dash_textarea_autocomplete@0.0.1/dash_textarea_autocomplete/dash_textarea_autocomplete.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
