# AUTO GENERATED FILE - DO NOT EDIT

export dashtextareaautocomplete

"""
    dashtextareaautocomplete(;kwargs...)

A DashTextareaAutocomplete component.
DashTextareaAutocomplete

Simple `@webscopeio/react-textarea-autocomplete` wrapper for Dash
enabling auto-completion in multi-line `<textarea>` elements.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `value` (String; optional): The value displayed in the <textarea>.
- `placeholder` (String; optional): Provides a hint to the user of what can be entered in the <textarea> field.
- `wordList` (Array; required): List of string available for auto-completion.
- `triggerChar` (String; optional): Character that triggers auto-completion machinery.
Defaults to `:`. (from `react-textarea-autocomplete`)
- `minChar` (Real; optional): Number of characters that user should type for trigger a suggestion.
Defaults to 1. (from `react-textarea-autocomplete`)
- `className` (String; optional): Class names of the <textarea> (from `react-textarea-autocomplete`).
- `containerClassName` (String; optional): Class names of the textarea container (from `react-textarea-autocomplete`).
- `style` (Dict; optional): Style of the <textarea>.(from `react-textarea-autocomplete`).
- `listStyle` (Dict; optional): Style of the list wrapper (from `react-textarea-autocomplete`).
- `itemStyle` (Dict; optional): Styles of the items wrapper.
- `loaderStyle` (Dict; optional): Style of the loader wrapper (from `react-textarea-autocomplete`).
- `containerStyle` (Dict; optional): Styles of the textarea container (from `react-textarea-autocomplete`).
- `dropdownStyle` (Dict; optional): Styles of the dropdown wrapper.
"""
function dashtextareaautocomplete(; kwargs...)
        available_props = Symbol[:id, :value, :placeholder, :wordList, :triggerChar, :minChar, :className, :containerClassName, :style, :listStyle, :itemStyle, :loaderStyle, :containerStyle, :dropdownStyle]
        wild_props = Symbol[]
        return Component("dashtextareaautocomplete", "DashTextareaAutocomplete", "dash_textarea_autocomplete", available_props, wild_props; kwargs...)
end

