import React, {Component} from "react";
import PropTypes from "prop-types";
import ReactTextareaAutocomplete from "@webscopeio/react-textarea-autocomplete";
import "@webscopeio/react-textarea-autocomplete/style.css";

/**
 * Simple fuzzy string finder
 * taken from:
 * https://stackoverflow.com/a/15252131
 */
function fuzzy (s1, s2) {
    s1 = s1.toLowerCase();
    s2 = s2.toLowerCase();
    for (let i = 0, n = -1, l; l = s2[i++];) {
        if (!~(n = s1.indexOf(l, n + 1))) {
            return false;
        }
    }
    return true;
}

/**
 * DashTextareaAutocomplete
 *
 * Simple `@webscopeio/react-textarea-autocomplete` wrapper for Dash
 * enabling auto-completion in multi-line `<textarea>` elements.
 *
 */
export default class DashTextareaAutocomplete extends Component {
    render() {
        const {
            id,
            setProps,
            value,
            placeholder,
            wordList,
            triggerChar,
            minChar,
            className,
            containerClassName,
            style,
            listStyle,
            itemStyle,
            loaderStyle,
            containerStyle,
            dropdownStyle
        } = this.props;

        // auxiliary elements
        const Item = ({ entity: { word } }) => <div>{`${word}`}</div>;
        const Loading = () => <span>Loading</span>;

        return (
            <div id={id}>
                <ReactTextareaAutocomplete
                    // grab ref to <textarea>, setup onChange handler
                    innerRef={textarea => {
                        this.textarea = textarea;
                    }}
                    onChange={(e) => {
                        setProps({value: this.textarea.value});
                    }}
                    // pass props
                    value={value}
                    placeholder={placeholder}
                    minChar={minChar}
                    className={className}
                    containerClassName={containerClassName}
                    style={style}
                    listStyle={listStyle}
                    loaderStyle={loaderStyle}
                    itemStyle={itemStyle}
                    loaderStyle={loaderStyle}
                    dropdownStyle={dropdownStyle}
                    containerStyle={containerStyle}
                    // setup loading component
                    loadingComponent={Loading}
                    // setup trigger handler
                    trigger={{
                        [triggerChar]: {
                            dataProvider: token => {
                                return wordList
                                  .filter(w => fuzzy(w, token))
                                  .map(w => ({word: w}))
                            },
                            component: Item,
                            output: item => item.word
                        }
                    }}
                />
            </div>
        );
    }
}

DashTextareaAutocomplete.defaultProps = {
    triggerChar: ":",
    minChar: 1,
    containerStyle: {
        marginTop: 20,
        width: 400,
        height: 100,
        margin: "20px auto"
    }
};

/**
 * Mostly taken from;
 * - https://github.com/webscopeio/react-textarea-autocomplete#props
 * - https://github.com/plotly/dash-core-components/blob/dev/src/components/Textarea.react.js
 */

DashTextareaAutocomplete.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,

    /**
     * The value displayed in the <textarea>.
     */
    value: PropTypes.string,

    /**
     * Provides a hint to the user of what can be entered in the <textarea> field.
     */
    placeholder: PropTypes.string,

    /**
     * List of string available for auto-completion.
     */
    wordList: PropTypes.array.isRequired,

    /**
     * Character that triggers auto-completion machinery.
     * Defaults to `:`. (from `react-textarea-autocomplete`)
     */
    triggerChar: PropTypes.string,

    /**
     * Number of characters that user should type for trigger a suggestion.
     * Defaults to 1. (from `react-textarea-autocomplete`)
     */
    minChar: PropTypes.number,

    /**
     * Class names of the <textarea> (from `react-textarea-autocomplete`).
     */
    className: PropTypes.string,

    /**
     * Class names of the textarea container (from `react-textarea-autocomplete`).
     */
    containerClassName: PropTypes.string,

    /**
     * Style of the <textarea>.(from `react-textarea-autocomplete`).
     */
    style: PropTypes.object,

    /**
     * Style of the list wrapper (from `react-textarea-autocomplete`).
     */
    listStyle: PropTypes.object,

    /**
     * Styles of the items wrapper.
     */
    itemStyle: PropTypes.object,

    /**
     * Style of the loader wrapper (from `react-textarea-autocomplete`).
     */
    loaderStyle: PropTypes.object,

    /**
     * Styles of the textarea container (from `react-textarea-autocomplete`).
     */
    containerStyle: PropTypes.object,

    /**
     * Styles of the dropdown wrapper.
     */
    dropdownStyle: PropTypes.object,

    // More <textarea> props
};
