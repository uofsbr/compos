#!/bin/bash
#: Title:           Maybe a Radio 
#: Purpose:         This program checks for alive hosts in a subnet and tries to open them via web
#                   (https) in a specified port
#: Created Date:    14/02/2021
#: Modified Date:   14/02/2021
#: Author:          "Ulisses O. F. Silva" <uofs.br@gmail.com>
#: Version:         1.0
#: Options:         None
#START\#
port=80

main() {
mybeRadio 
}

mybeRadio(){
		firefox --new-window
		for i in $(fping -d -a -q -g -i 1 -r 0 $1) ; do
				firefox --new-tab https://$i:$port
		done
}
main "$@"
#END\#
