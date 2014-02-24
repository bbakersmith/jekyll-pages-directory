# Jekyll Pages Directory Plugin

Defines a `_pages` subdirectory which outputs into the root of your site.

Jekyll does a great job of keeping things tidy until you have more than a couple static pages. Unlike posts, which are nicely contained within the `_posts` directory, page data and containing subdirectories end up scattered throughout the project root. *Jekyll Pages Directory* helps keep your project root clean by defining a `_pages` subdirectory in which to store page data.

Only page files should be stored in `_pages`. Other file types will not behave as expected.



## Installation

Simply copy `_plugins/jekyll-pages-dir.rb` into your project's `_plugins` directory.



## Usage

By default, the plugin defines `_pages` as the directory for your page data.

To specify another directory instead, set the `pages` configuration option just like you would set `source`, `plugins`, or `layouts`.

```yaml
# _config.yml

pages: ./_static_pages

```



## Output Routing


Files in your `_pages` directory are routed as if they were in your project root, so `_pages/foo/bar.html` will be output to `_site/foo/bar.html`.



## index.html

Some Jekyll functions require that `index.html` be present in the project root, so you should leave `index.html` in the project root.



## Compatibility

*Jekyll Pages Directory* should work with any plugin that is not accessing page data files directly, but only limited compatibility testing has been done.

If you encounter an issue, please submit a pull request or report it in the [Github issue tracker](https://github.com/bbakersmith/jekyll-pages-directory/issues).



## License

The MIT License (MIT)

Copyright (c) 2014 Ben Baker-Smith

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
