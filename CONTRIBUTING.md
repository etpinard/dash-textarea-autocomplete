# CONTRIBUTING

This project was generated by the [dash-component-boilerplate](https://github.com/plotly/dash-component-boilerplate) it contains the minimal set of code required to create your own custom Dash component.

---

## Install dependencies

1. Install npm packages
    ```
    $ npm install
    ```
2. Create a virtual env and activate.
    ```
    $ python3 -m venv venv
    $ . venv/bin/activate
    ```
    _Note: venv\Scripts\activate for windows_

3. Install python packages required to build components.
    ```
    $ pip install wheel
    $ pip install -r requirements.txt
    ```
4. Install the python packages for testing (optional)
    ```
    $ pip install -r tests/requirements.txt
    ```

## Write your component code in `src/lib/components/DashTextareaAutocomplete.react.js`.

- The demo app is in `src/demo` and you will import your example component code into your demo app.
- Test your code in a Python environment:
    1. Build your code
        ```
        $ npm run build
        ```
    2. Run and modify the `usage.py` sample dash app:
        ```
        $ python usage.py
        ```
- Write tests for your component.
    - A sample test is available in `tests/test_usage.py`, it will load `usage.py` and you can then automate interactions with selenium.
    - Run the tests with `$ pytest tests`.
    - The Dash team uses these types of integration tests extensively. Browse the Dash component code on GitHub for more examples of testing (e.g. https://github.com/plotly/dash-core-components)
- <strike>Add custom styles to your component by putting your custom CSS files into your distribution folder (`dash_textarea_autocomplete`).
    - Make sure that they are referenced in `MANIFEST.in` so that they get properly included when you're ready to publish your component.
    - Make sure the stylesheets are added to the `_css_dist` dict in `dash_textarea_autocomplete/__init__.py` so dash will serve them automatically when the component suite is requested.</strike> **does not apply**
- [Review your code](./review_checklist.md)

## Create a production build and publish:

1. Version, build, commit and push your code:
    ```
    $ npm version --no-git-tag-version <patch|minor|major>
    $ npm run build
    $ git add --all
    $ git commit -m "X.Y.Z"
    $ git push
    ```
    **N.B.**
    + we use the `--no-git-tag-version` flag, because [`Registrator.jl`](https://github.com/JuliaRegistries/Registrator.jl)
      won't work if a tag corresponding to the to-be-registered version already
      exists.

2. Create a Python distribution
    ```
    $ rm -rf dist/*
    $ pip install wheel
    $ python setup.py sdist bdist_wheel
    ```
    This will create source and wheel distribution in the generated the `dist/` folder.
    See [PyPA](https://packaging.python.org/guides/distributing-packages-using-setuptools/#packaging-your-project)
    for more information.

3. Test your tarball by copying it into a new environment and installing it locally:
    ```
    $ pip install dash_textarea_autocomplete-X.Y.Z.tar.gz
    ```

4. If it works, then you can publish the component:
    1. Publish on PyPI (N.B. must have PyPI token and `$HOME/.pypirc` filled correctly)
        ```
        $ pip install twine
        $ twine upload dist/*
        ```
    2. Publish on NPM
        ```
        $ npm publish
        ```
        _Publishing your component to NPM will make the JavaScript bundles available on the unpkg CDN. By default, Dash serves the component library's CSS and JS locally, but if you choose to publish the package to NPM you can set `serve_locally` to `False` and you may see faster load times._
    3. Publish to Julia's General Registry
        + Go to the repo's Github's page and add the following comment on the version commit:
        ```
        @JuliaRegistrator register branch=main
        ```

5. Tag and make a Github release
    + Done automatically by [`TagBot`](https://github.com/JuliaRegistries/TagBot)
      after the new version has been merged in Julia's General Registry.
