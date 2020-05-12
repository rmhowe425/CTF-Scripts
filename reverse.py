from sys import argv

payload = argv[1]

def main():
    print "String Length: ", str(len(argv[1]))

    stringList = [payload[i:i + 4] for i in range(0, len(payload), 4)]

    for item in stringList[::-1]:
        print item[::-1] + ': ' + str(item[::-1].encode('hex'))

main()
