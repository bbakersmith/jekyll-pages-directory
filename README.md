# Jekyll Pages Dir Plugin

Keep your project root directory clean by specifying a _pages subdirectory in which to store page data, much like _posts is used for post data.

Files in your _pages directory will behave is if they were in your project root, so `_pages/foo/bar.html` will be output to `_site/foo/bar.html`.

## Installation

Simply copy `_plugins/jekyll-pages-dir.rb` into your project's `_plugins` directory.

## Usage

By default, simply including the plugin file will define `_pages` as the directory for your page data.

To specify another directory, set `pages` in your `_config.yml` just like you would set `source`, `plugins`, or `layouts`.

```yaml
# config.yml

pages: ./_pages

```

## License

Copyright (C) 2014 Ben Baker-Smith (http://bitsynthesis.com)

The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
