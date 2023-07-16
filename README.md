# slipbox.nvim
A minimal plugin to support the zettelkasten method. VimWiki & other soutions didn't quite work as needed, so I will be minimally adapting features for my own needs. For now, this README is a todo list / devlog. In the future it will instead contain usage & installation instructions, etc...

# Features & Notes

## Timestamping
Trying to create unique *and descriptive* ids for each zettel would never scale, so I will use timestamps like `202307030819` for my zettel ids.

Right now, the function inserts a timestamp at your cursor in neovim. This is probably good enough, but I can see a situation where we have a call like `new_zettel()` which would insert the timestamp automatically? Maybe just inserting it into your buffer and then hitting `ENTER` twice is good enough for creating a new zettel.

## VimWiki-like `ENTER`
VimWiki's `ENTER` functionality is very intuitive; in normal mode, `ENTER` creates a link from the text under the cursor if it's not already a link and otherwise opens the link in a buffer. __*Note:__ This should create a new file if it doesn't exist!

# Tasks

## Done:
- [x] verify working via packer / github
- [x] set keymap w/ plugin
    - [x] [yes] always requires the `require()` call?
- [x] function to insert timestamp
- [x] plugin only active in set directory
- [x] ENTER functionality [VimWiki]
    - [x] open link
    - [x] create link
        - [x] doesn't capture first character when doing the replacement

## TODO:
- [x] Backspace to previous file
    - [ ] back history
- [ ] Creating a new zettel should automatically populate it with the header/key
