% Auto-generated: do not edit by hand
\name{dashTextareaAutocomplete}

\alias{dashTextareaAutocomplete}

\title{DashTextareaAutocomplete component}

\description{
DashTextareaAutocomplete  Simple `@webscopeio/react-textarea-autocomplete` wrapper for Dash enabling auto-completion in multi-line `<textarea>` elements.
}

\usage{
dashTextareaAutocomplete(id=NULL, value=NULL, placeholder=NULL, wordList=NULL,
triggerChar=NULL, minChar=NULL, className=NULL,
containerClassName=NULL, style=NULL, listStyle=NULL,
itemStyle=NULL, loaderStyle=NULL, containerStyle=NULL,
dropdownStyle=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{value}{Character. The value displayed in the <textarea>.}

\item{placeholder}{Character. Provides a hint to the user of what can be entered in the <textarea> field.}

\item{wordList}{Unnamed list. List of string available for auto-completion.}

\item{triggerChar}{Character. Character that triggers auto-completion machinery.
Defaults to `:`. (from `react-textarea-autocomplete`)}

\item{minChar}{Numeric. Number of characters that user should type for trigger a suggestion.
Defaults to 1. (from `react-textarea-autocomplete`)}

\item{className}{Character. Class names of the <textarea> (from `react-textarea-autocomplete`).}

\item{containerClassName}{Character. Class names of the textarea container (from `react-textarea-autocomplete`).}

\item{style}{Named list. Style of the <textarea>.(from `react-textarea-autocomplete`).}

\item{listStyle}{Named list. Style of the list wrapper (from `react-textarea-autocomplete`).}

\item{itemStyle}{Named list. Styles of the items wrapper.}

\item{loaderStyle}{Named list. Style of the loader wrapper (from `react-textarea-autocomplete`).}

\item{containerStyle}{Named list. Styles of the textarea container (from `react-textarea-autocomplete`).}

\item{dropdownStyle}{Named list. Styles of the dropdown wrapper.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

