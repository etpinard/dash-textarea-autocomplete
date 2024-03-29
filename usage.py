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
