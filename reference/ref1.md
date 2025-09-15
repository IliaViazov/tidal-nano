MINI-NOTATION
----------------------------------------

| Symbol | Description |
|--------|-------------|
| ~      | Create a rest: `d1 $ s "~ hh"` |
| [ ]    | Create a pattern grouping: `d1 $ s "[bd sd] hh"` |
| .      | Shorthand for pattern grouping: `d1 $ s "bd sd . hh hh hh"` |
| ,      | Play multiple patterns together: `d1 $ s "[bd sd, hh hh hh]"` |
| *      | Repeat a pattern: `d1 $ s "bd*2 sd"` |
| /      | Slow down a pattern: `d1 $ s "bd/2"` |
| \|     | Create a random choice: `d1 $ s "[bd |cp |hh]"` |
| < >    | Alternate between patterns: `d1 $ s "bd <sd hh cp>"` |
| !      | Replicate a pattern: `d1 $ s "bd!3 sd"` |
| _      | Elongate a pattern: `d1 $ s "bd _ _ ~ sd _"` |
| @      | Elongate a pattern: `d1 $ s "superpiano@3 superpiano"` |
| ?      | Randomly remove events: `d1 $ s "bd? sd"` |
| :      | Selecting samples: `d1 $ s "bd:3"` |
| ( )    | Euclidean sequences: `d1 $ s "bd(3,8)"` |
| { }    | Polymetric sequences: `d1 $ s "{bd bd bd bd, cp cp hh}"` |
| %      | Indicates a numerical ratio: `d1 $ s "bd*4%2"` |
| { }%   | Polymetric sequence subdivision: `d1 $ s "{bd cp hh}%8"` |
