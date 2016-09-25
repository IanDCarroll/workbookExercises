def scan(string):
    string.split(' ')
    index = [('direction', 'north'),
             ('direction', 'south'),
             ('direction', 'east')]
    # word in string returns the string, not the index
    for word in string:
        for i in range(0, len(index)):
            if word in index[i][1]:
                return [index[i]]
            else:
                return "no"
