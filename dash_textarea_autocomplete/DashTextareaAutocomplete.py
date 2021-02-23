# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class DashTextareaAutocomplete(Component):
    """A DashTextareaAutocomplete component.
DashTextareaAutocomplete

Simple `@webscopeio/react-textarea-autocomplete` wrapper for Dash
enabling auto-completion in multi-line `<textarea>` elements.

Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- value (string; optional): The value displayed in the <textarea>.
- placeholder (string; optional): Provides a hint to the user of what can be entered in the <textarea> field.
- wordList (list; required): List of string available for auto-completion.
- triggerChar (string; default ":"): Character that triggers auto-completion machinery.
Defaults to `:`. (from `react-textarea-autocomplete`)
- minChar (number; default 1): Number of characters that user should type for trigger a suggestion.
Defaults to 1. (from `react-textarea-autocomplete`)
- className (string; optional): Class names of the <textarea> (from `react-textarea-autocomplete`).
- containerClassName (string; optional): Class names of the textarea container (from `react-textarea-autocomplete`).
- style (dict; optional): Style of the <textarea>.(from `react-textarea-autocomplete`).
- listStyle (dict; optional): Style of the list wrapper (from `react-textarea-autocomplete`).
- itemStyle (dict; optional): Styles of the items wrapper.
- loaderStyle (dict; optional): Style of the loader wrapper (from `react-textarea-autocomplete`).
- containerStyle (dict; optional): Styles of the textarea container (from `react-textarea-autocomplete`).
- dropdownStyle (dict; optional): Styles of the dropdown wrapper."""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, value=Component.UNDEFINED, placeholder=Component.UNDEFINED, wordList=Component.REQUIRED, triggerChar=Component.UNDEFINED, minChar=Component.UNDEFINED, className=Component.UNDEFINED, containerClassName=Component.UNDEFINED, style=Component.UNDEFINED, listStyle=Component.UNDEFINED, itemStyle=Component.UNDEFINED, loaderStyle=Component.UNDEFINED, containerStyle=Component.UNDEFINED, dropdownStyle=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'value', 'placeholder', 'wordList', 'triggerChar', 'minChar', 'className', 'containerClassName', 'style', 'listStyle', 'itemStyle', 'loaderStyle', 'containerStyle', 'dropdownStyle']
        self._type = 'DashTextareaAutocomplete'
        self._namespace = 'dash_textarea_autocomplete'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'value', 'placeholder', 'wordList', 'triggerChar', 'minChar', 'className', 'containerClassName', 'style', 'listStyle', 'itemStyle', 'loaderStyle', 'containerStyle', 'dropdownStyle']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['wordList']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(DashTextareaAutocomplete, self).__init__(**args)
