def make_binomial_tree(number_of_periods: int)-> str:
    """ Generate the Latex code to print a binomial tree
    of 'number_of_periods' periods.
    Parameters:
    number_of_periods: integer
    return string
    """
    columns = {}
    columns2 = {}
    if number_of_periods < 4:
        st = """\\begin{tikzpicture}[>=stealth,sloped]
            \\matrix (tree) [%
            matrix of nodes,
            minimum size=1cm,
            column sep=3.5cm,
            row sep=1cm,
            ]
        {"""
    else:
        st = '''\\begin{tikzpicture}[>=stealth,sloped]
            \\matrix (tree) [%
            matrix of nodes,minimum size=0.5cm,
        column sep=1cm,
        row sep=0.5cm,]{'''
    st2 = ''
    for j in range(number_of_periods, -1, -1):
        for i in range(0, j+1):
            if j in columns:
                columns[j].append('')
                columns2[j].append('')
            else:
                columns[j] = ['' for i in range(number_of_periods-j)]
                columns2[j] = ['' for i in range(number_of_periods-j)]

            columns2[j].append(('U'*(j-i)+'D'*(i)))
            tmp = (f"""{'$S_0U' if j-i==1 else f'$S_0U^{j-i}'if j-i>0 else '$S_0'} {"D$" if i==1 else f'D^{(i)}$'if i>0 else '$'}"""
                 if not (i == j and j == 0) else '$S_0$')
            columns[j].append(tmp)
        for i in range(number_of_periods-j):
            columns[j].append('')
            columns2[j].append('')

    columns = dict(reversed(list(columns.items())))

    for i in range(2*number_of_periods+1):
        for j in range(len(columns)):
            if j != len(columns)-1:
                st += (columns[j][i] + ' & ')
                if columns[j][i] != '':
                    U1, D1, U2, D2 = columns2[j+1][i-1].count("U"), columns2[j+1][i-1].count(
                        "D"), columns2[j+1][i+1].count("U"), columns2[j+1][i+1].count("D")
                    # adding the ligns and their values between nodes on the tree
                    st2 += (
                        f'\draw[->] (tree-{i+1}-{j+1}) -- (tree-{i}-{j+2}) node [midway,above] ') + \
                        f'{"{"}$ {"p" if U1 ==1 else f"p^{U1}" if U1 > 0 else ""} {"(1-p)" if D1 == 1 else f"(1-p)^{D1}" if D1 > 0 else ""} ${"}"};\n' + \
                        (
                        f'\draw[->] (tree-{i+1}-{j+1}) -- (tree-{i+2}-{j+2}) node [midway,above] ') +\
                        f'{"{"}$ {"p" if U2 ==1 else f"p^{U2}" if U2 > 0 else ""} {"(1-p)" if D2 == 1 else f"(1-p)^{D2}" if D2 > 0 else ""} ${"}"};\n'
            else:
                st += (columns[j][i])
        st += ' \\\\\n'
    st += '};\n' + st2 + '\end{tikzpicture}'
    return st