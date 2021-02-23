using Dash
using DashHtmlComponents
using DashTextareaAutocomplete

const WORDLIST = ["apple", "application", "apartment",
                  "boat", "banana", "boss",
                  "coast", "code", "cat"]

app = dash(;external_stylesheets=["https://codepen.io/chriddyp/pen/bWLwgP.css"])

app.layout = html_div(className = "container") do
    dashtextareaautocomplete(id = "input",
                             # value = "initial value",
                             placeholder = "Type something!",
                             wordList = WORDLIST,
                             # common options with their default values
                             # triggerChar = ":",
                             # minChar = 1,
                             style = (minHeight = "100px",),
                             dropdownStyle = (maxHeight = "120px", overflow = "auto")),
    html_div(id = "output"),
    html_button("CLICK", id = "btn"),
    html_div(id = "output2")
end

callback!(app, Output("output", "children"),
               Input("input", "value")) do value
    return "You have entered $value"
end

callback!(app, Output("output2", "children"),
               Input("btn", "n_clicks"),
               State("input", "value")) do clicks, value
    return "After click, you have: $value"
end

run_server(app, "0.0.0.0", 8050, debug=true)
