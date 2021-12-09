
module DashTextareaAutocomplete
using Dash

const resources_path = artifact"dash_textarea_autocomplete_resources"
const version = "1.1.0"

include("jl/dashtextareaautocomplete.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_textarea_autocomplete",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_textarea_autocomplete.min.js",
    external_url = "https://unpkg.com/dash-textarea-autocomplete@1.1.0/dash_textarea_autocomplete/dash_textarea_autocomplete.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_textarea_autocomplete.min.js.map",
    external_url = "https://unpkg.com/dash-textarea-autocomplete@1.1.0/dash_textarea_autocomplete/dash_textarea_autocomplete.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
