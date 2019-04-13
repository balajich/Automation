'''
Good git hub project
https://github.com/BenLangmead/bowtie2
'''
from subprocess import run


def create_fm_index():
    '''
    Creates a fm_index from fast a file
    :param fast_a:
    :return:
    '''
    run(['bowtie2-build', 'hg38.fasta', 'hg38.fim.index'])


if __name__ == "__main__":
    create_fm_index()
