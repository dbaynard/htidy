# htidy

Parse and pretty print html as a filter. Bit like [tidy](http://www.html-tidy.org/).

## Use

### Command line

    htidy <[infile] >[outfile]
    htidy <<<[input text] >[outfile]
    cat [infile] | htidy | tee [outfile]

### Vim

    :%!htidy

or for a selection

    :'<,'>!htidy

## Notes

Doesn’t deal well with css included in the file. Yet…
