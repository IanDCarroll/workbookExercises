

index = [('direction', 'north'),
         ('direction', 'south'),
         ('direction', 'east')]


def scan(user_input):
    global index
    end_list = []

    starting_list = user_input.split()

    for i in range(0, len(starting_list)):
        for j in range(0, len(index)):
            if starting_list[i] in index[j][1]:
                end_list.append(index[j])

    return end_list
