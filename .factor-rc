USING: parser vocabs.loader sequences namespaces tools.scaffold environment ;
auto-use
vocab-roots [ "." suffix ] change
"AUTHOR" os-env developer-name set-global
