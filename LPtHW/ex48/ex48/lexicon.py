

class Lex(object):

    icon = [('direction', 'north'),
            ('direction', 'south'),
            ('direction', 'east'),
            ('direction', 'west'),
            ('direction', 'down'),
            ('direction', 'up'),
            ('direction', 'left'),
            ('direction', 'right'),
            ('direction', 'back'),
            ('verb', 'go'),
            ('verb', 'stop'),
            ('verb', 'kill'),
            ('verb', 'eat'),
            ('stop', 'the'),
            ('stop', 'in'),
            ('stop', 'of'),
            ('stop', 'from'),
            ('stop', 'at'),
            ('stop', 'it'),
            ('noun', 'door'),
            ('noun', 'bear'),
            ('noun', 'princess'),
            ('noun', 'cabinet'),
            ('error', 'asdfadfasdf'),
            ('error', 'ias')]


def scan(user_input):
    end_list = []

    starting_list = user_input.lower().split()

    for i in range(0, len(starting_list)):
        try:
            int(starting_list[i])
            end_list.append(('number', starting_list[i]))
        except ValueError:
            for j in range(0, len(Lex.icon)):
                if starting_list[i] == Lex.icon[j][1]:
                    end_list.append(Lex.icon[j])

    return end_list
