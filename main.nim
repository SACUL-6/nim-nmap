import std/strutils

proc strToInts(strings: seq[string]): seq[int] =
    #initalise result with an empty sequence of ints
    result = @[]

    for element in strings:
        result.add(parseInt(element))

    # result is how you return from a process I guess

echo "Enter a starting IP:"
var startingIP: string = readLine(stdin)
echo "You entered ", startingIP
#split ip into a sequence of strings
let splitIP = startingIP.split('.')
# convert the secuence of strings to ints
let octets = strToInts(splitIP)

echo octets

