

index = [('direction', 'north'),
         ('direction', 'south'),
         ('direction', 'east')]


def scan(string):
    global index

    string.split(' ')

    # word in string returns the string, not the index
    for word in string:
        for i in range(0, len(index)):
            if word in index[i][1]:
                return [index[i]]
            else:
                return "no"
