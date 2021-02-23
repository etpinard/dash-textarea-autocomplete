# Dash Textarea Autocomplete

Dash component wrapper for [`@webscopeio/react-textarea-autocomplete`](https://github.com/webscopeio/react-textarea-autocomplete).

![demo](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/demo.gif)


## Get started

1. Install `dash-textarea-autocomplete`, Dash and its dependencies:

```
pip install dash dash-textarea-autocomplete
```

see https://dash.plotly.com/installation for more info.

2. Run `python usage.py`

```py
# usage.py
import dash_textarea_autocomplete
import dash
from dash.dependencies import Input, Output, State
import dash_html_components as html

WORD_LIST = ['apple', 'application', 'apartment',
             'boat', 'banana', 'boss',
             'coast', 'code', 'cat']

app = dash.Dash(__name__)

app.layout = html.Div([
    dash_textarea_autocomplete.DashTextareaAutocomplete(
        id='input',
        # value='initial value',
        placeholder='Type something, use `:` to invoke auto-completion',
        wordList=WORD_LIST,
        # common options with their default values
        # triggerChar=':',
        # minChar=1
    ),
    html.Div(id='output'),
    html.Button('CLICK', id='btn'),
    html.Div(id='output2')
])


@app.callback(Output('output', 'children'),
              Input('input', 'value'))
def display_output(value):
    return 'You have entered: {}'.format(value)


@app.callback(Output('output2', 'children'),
              Input('btn', 'n_clicks'),
              State('input', 'value'))
def display_output2(n_clicks, value):
    return 'After click, you have: {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
```

3. Visit http://localhost:8050 in your web browser

## Props

_TODO_

## Contributing

See [CONTRIBUTING.md](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/CONTRIBUTING.md)

## License

[MIT](https://github.com/etpinard/dash-textarea-autocomplete/blob/main/LICENSE)
