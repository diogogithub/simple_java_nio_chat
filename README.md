# A simple Chat program written in Java with NIO package
This program was written as a solution for an assignment given in
DCC-FCUP's [Networking and Communication](https://sigarra.up.pt/fcup/en/UCURR_GERAL.FICHA_UC_VIEW?pv_ocorrencia_id=445231) module.
The server implements a [multiplex model](http://tutorials.jenkov.com/java-nio/selectors.html) using [Java's NIO API](http://tutorials.jenkov.com/java-nio/index.html).

The protocol specified in the [assignment.pdf](assignment.pdf) (in Portuguese) is vaguely similar to IRC.

## Usage
1. Compile it with `make`
2. Run the server with a listening port as argument
```Shell
  java ChatServer 31337
```
3. Run the client with the server IP address and the listening port
```Shell
  java ChatClient 127.0.0.1 31337
```

## Tests
To test the sending of a fragmented message divided in various packages, use `netcat` with `<CTRL-D>`, as in
```Shell
  /ni<CTRL-D>ck Chu<CTRL-D>ck No<CTRL-D>rris<ENTER>
```
To test the sending of various messages in a single package, you can try it with
```Shell
  netcat localhost 31337 < test_package_input.txt
```

## Credits
Developed by [Diogo Cordeiro](https://www.diogo.site/) and [Hugo Sales](https://github.com/someonewithpc)

## License
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public
License along with this program, in the file "LICENSE".  If not, see
<http://www.gnu.org/licenses/>.
