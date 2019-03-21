# code-snips
Code fragments of dubious worth

## What is it for?

Snips is for collecting and searching code fragments insufficiently packaged for CPAN, but nifty enough to share with other people.

The search engine at http://zap.ciar.org/snips indexes code from this repository and provides a view into it.

There might also be perlbot bindings (the chatbot in #perl channel in freenode IRC).  We will see.

## Contributing

To contribute to Snips:

* Read this README in its entirety,

* Fork this repo,

* In your fork, create a subdirectory under src/ with the same name as your github id,

* Put each of your snips into a different file in your subdirectory,

* Send me a pull request, and I will look at your code and probably merge it.

Each of your code snip files must meet the following criteria:

* Must have a filename extension of .pl, .c, .py, etc appropriate to the programming language used,

* Must have comments near the top of the file giving a NAME, DESCRIPTION, AUTHOR and optionally TAGS.  See "src/example.pl" or "src/example.c" for examples.

* Should be understandable.  If I can't tell if your code isn't malware, I won't merge it.

The code snip NAME should be something short and relevant.

The DESCRIPTION needs to be all on one line, and less than a kilobyte in length.

AUTHOR should be you (your github id, or your email address, or your nickname, or whatever you like).

TAGS should be a few short words describing some broad categories relevant to your code: "math", "web", etc.  A short tag will also be made from the AUTHOR string and added to your snip's tags.  Please add "data" to your tags if the main purpose of the code snip is to provide a static data structure (like a list of city names).

This may seem like a lot, but it's nothing compared to packaging code for CPAN.  Snips is intended to be an easier alternative to CPAN for short code fragments, not full packages.

I reserve the right to modify your code or its metadata slightly before indexing it, if I think the tags could be improved or if you use tabs instead of spaces or something.

## But Github is hard!

If forking and pull requests on github seems daunting, find me (ttkp) in #perl channel in freenode and share your code via pastebin or other channel-friendly means.  Or email me at ttk (at) ciar (dot) org.  Or send it my way by carrier pigeon, whatever.  We'll work something out.

## What kinds of code are appropriate to share?

Anything you feel like sharing, really, if it's short and mildly interesting.

I do need to be able to understand it before I can responsibly index it, and I know these languages fairly well:  C, D, Python, Perl, Go, Scala, Javascript, Lua, PHP, Bash, Assembly.

I also know these languages poorly, but perhaps well enough to accept pull requests:  C++, C#, Java, Ruby, R, Pascal, Modula-2/3, Oberon, Julia.

## But why?

Everyone has little fragments of code that might be interesting enough to share, but not worth packaging up for CPAN or a dedicated Github repo.

Such code bits tend to be shared among friends or IRC channels via pastebin, but pastebin is ephemeral and not searchable.

This project is intended to scoop up these marginal code fragments and put them in a searchable repository for long-term archival.

Is this a good idea?  I don't know!  We will find out by doing it.
