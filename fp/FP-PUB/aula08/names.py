


def names_ex2():
    dict={}
    with open("names.py", "r") as names:
        for line in names:
            words= line.strip().split()
            fn=words[0]
            ln=words[-1]
            if ln not in dict:
                dict[ln] = set()
            else:
                dict[ln].add(fn)

    return dict



names_ex2()