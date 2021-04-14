# AUTO GENERATED FILE - DO NOT EDIT

dashTextareaAutocomplete <- function(id=NULL, className=NULL, containerClassName=NULL, containerStyle=NULL, dropdownStyle=NULL, itemStyle=NULL, listStyle=NULL, loaderStyle=NULL, minChar=NULL, placeholder=NULL, style=NULL, triggerChar=NULL, value=NULL, wordList=NULL) {
    
    props <- list(id=id, className=className, containerClassName=containerClassName, containerStyle=containerStyle, dropdownStyle=dropdownStyle, itemStyle=itemStyle, listStyle=listStyle, loaderStyle=loaderStyle, minChar=minChar, placeholder=placeholder, style=style, triggerChar=triggerChar, value=value, wordList=wordList)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashTextareaAutocomplete',
        namespace = 'dash_textarea_autocomplete',
        propNames = c('id', 'className', 'containerClassName', 'containerStyle', 'dropdownStyle', 'itemStyle', 'listStyle', 'loaderStyle', 'minChar', 'placeholder', 'style', 'triggerChar', 'value', 'wordList'),
        package = 'dashTextareaAutocomplete'
        )

    structure(component, class = c('dash_component', 'list'))
}
