# AUTO GENERATED FILE - DO NOT EDIT

dashTextareaAutocomplete <- function(id=NULL, value=NULL, placeholder=NULL, wordList=NULL, triggerChar=NULL, minChar=NULL, className=NULL, containerClassName=NULL, style=NULL, listStyle=NULL, itemStyle=NULL, loaderStyle=NULL, containerStyle=NULL, dropdownStyle=NULL) {
    
    props <- list(id=id, value=value, placeholder=placeholder, wordList=wordList, triggerChar=triggerChar, minChar=minChar, className=className, containerClassName=containerClassName, style=style, listStyle=listStyle, itemStyle=itemStyle, loaderStyle=loaderStyle, containerStyle=containerStyle, dropdownStyle=dropdownStyle)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashTextareaAutocomplete',
        namespace = 'dash_textarea_autocomplete',
        propNames = c('id', 'value', 'placeholder', 'wordList', 'triggerChar', 'minChar', 'className', 'containerClassName', 'style', 'listStyle', 'itemStyle', 'loaderStyle', 'containerStyle', 'dropdownStyle'),
        package = 'dashTextareaAutocomplete'
        )

    structure(component, class = c('dash_component', 'list'))
}
