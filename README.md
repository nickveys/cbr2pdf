# cbr2pdf

Ruby gem to convert [Comic Book Archive](https://en.wikipedia.org/wiki/Comic_book_archive) files to PDFs.

Current supports CBR and CBZ archives.  

## Installation

Add this line to your application's Gemfile:

    gem 'cbr2pdf'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cbr2pdf

## Usage

General form:

    cbr2pdf -o OUTPUT_FILE INPUT_FILE [INPUT_FILE...]

For example, to convert a single CBR to a PDF:

    cbr2pdf -o mybook.pdf mybook.cbr

Or, to combine several CBRs into a single PDF:

    cbr2pdf -o mytpb.pdf book1.cbr book2.cbz book3.cbr

CBR and CBZ archives can be mixed.  All pages will be added sequentially by name, and books will be added in the order they are specified.

## Requirements

Requires `unrar` application available on command line to handle CBR files.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
