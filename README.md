# colorizr
*Colorizr is a simple ruby gem to help you changing the color of a string
in a command-line ruby application.*

## Features
Colorizr gives a simple way to change the color of a string in a command-line
application. It actually defines 8 usable colors for changing your strings !

## Usage
```ruby
String.sample_colors
```
display a example of all available colors.

```ruby
String.colors
```
return an array of symbols for available colors.

To change the color of a string, just call a method named as the color on the string
itself. For example :
```ruby
require 'colorizr'

my_message = "This is a nice colored message"

p my_message.red #to display my_message in red
```

## Installation instructions
To install this gem, just call
```bash
gem install colorizr-0.0.2.gem
```
and add the following line at top of your ruby files
```ruby
require 'colorize'
```
