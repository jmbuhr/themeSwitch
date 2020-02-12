# themeSwitch

> Note: This package still works but https://github.com/gadenbuie/rsthemes provides
  the same functionality and more, so I will not develope it further for now.

Switch your RStudio theme at the press of a button.

install via

```r
devtools::install_github("jannikbuhr/themeSwitch")
```

Then switch to your prefered dark theme and run

```r
configureDarkTheme()
```

Switch to your prefered light theme and run

```r
configureLightTheme()
```

These functions will set the environment variables
that are used by `switchTheme()` as your themes.
For maximum efficiency, I recommend to set a shortcut
for the addin browser (I use Ctrl+Shift+P, like the command
palette in VS Code). Then you hit that shortcut, start typing
_switch..._ and as soon as `switchTheme` is the only
visible entry in the search list, hit Enter.
