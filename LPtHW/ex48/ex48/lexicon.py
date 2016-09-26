

class Lex(object):

    icon = [('direction', 'north'),
            ('direction', 'south'),
            ('direction', 'east'),
            ('verb', 'go'),
            ('verb', 'kill'),
            ('verb', 'eat'),
            ('stop', 'the'),
            ('stop', 'in'),
            ('stop', 'of'),
            ('noun', 'bear'),
            ('noun', 'princess')]


def scan(user_input):
    global index
    end_list = []

    starting_list = user_input.split()

    for i in range(0, len(starting_list)):
        for j in range(0, len(Lex.icon)):
            if starting_list[i] == Lex.icon[j][1]:
                end_list.append(Lex.icon[j])

    return end_list
