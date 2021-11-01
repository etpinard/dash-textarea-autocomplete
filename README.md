# Dash Textarea Autocomplete

Dash component wrapper for [`@webscopeio/react-textarea-autocomplete`](https://github.com/webscopeio/react-textarea-autocomplete).

![demo](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/demo.gif)


## Get started

### Dash for Python

1. Install `dash-textarea-autocomplete`, Dash and its dependencies:

```
pip install dash dash-textarea-autocomplete
```

2. Run `python usage.py`

```py
# usage.py
import dash_textarea_autocomplete
from dash import Dash, callback, html, Input, Output, State

WORD_LIST = ['apple', 'application', 'apartment',
             'boat', 'banana', 'boss',
             'coast', 'code', 'cat']

external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

app = Dash(__name__, external_stylesheets=external_stylesheets)

app.layout = html.Div([
    dash_textarea_autocomplete.DashTextareaAutocomplete(
        id='input',
        # value='initial value',
        placeholder='Type something, use `:` to invoke auto-completion',
        wordList=WORD_LIST,
        # common options with their default values
        # triggerChar=':',
        # minChar=1,
        style={'minHeight': '100px'},
        dropdownStyle={'maxHeight': '120px', 'overflow': 'auto'}),
    html.Div(id='output'),
    html.Button('CLICK', id='btn'),
    html.Div(id='output2')
], className='container')


@callback(Output('output', 'children'),
          Input('input', 'value'))
def display_output(value):
    return 'You have entered: {}'.format(value)


@callback(Output('output2', 'children'),
          Input('btn', 'n_clicks'),
          State('input', 'value'))
def display_output2(n_clicks, value):
    return 'After click, you have: {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
```

3. Visit http://localhost:8050 in your web browser

### Dash for Julia

1. Install `DashTextareaAutocomplete.jl` and `Dash.jl`:

```jl
pkg> activate .
pkg> add Dash DashTextareaAutocomplete
```

2. Run `julia --project usage.jl` - [click here to see `usage.jl`](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/usage.jl)

3. Visit http://localhost:8050 in your web browser

### Dash for R

_TODO_

## Props

```
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
 - dropdownStyle (dict; optional): Styles of the dropdown wrapper.
 ```

## Contributing

See [CONTRIBUTING.md](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/CONTRIBUTING.md)

## License

[MIT](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/LICENSE)
