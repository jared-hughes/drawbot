## juicy-gcode
https://github.com/domoszlai/juicy-gcode


Usage:

```
./juicy-gcode-0.1.0.5/juicy-gcode examples/blob.svg -f juicy-gcode-0.1.0.5/config > examples/blob.gcode
```

Check gcode
```
/(G.*X(\S*).*Y(\S*).*|.*()?()?\s\n)/$2\t$3/
/\n\s+/\n/
```
then copy-paste to Desmos :P
