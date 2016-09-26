from nose.tools import *
from ex48 import lexicon

def test_directions():
    assert_equal(lexicon.scan("north"), [('direction', 'north')])
    result = lexicon.scan("north south east")
    assert_equal(result, [('direction', 'north'),
                          ('direction', 'south'),
                          ('direction', 'east')])
    result = lexicon.scan("back right left down up")
    assert_equal(result, [('direction', 'back'),
                           ('direction', 'right'),
                           ('direction', 'left'),
                           ('direction', 'down'),
                           ('direction', 'up')])


def test_verbs():
    assert_equal(lexicon.scan("go"), [('verb', 'go')])
    assert_equal(lexicon.scan("stop"), [('verb', 'stop')])
    result = lexicon.scan("go kill eat")
    assert_equal(result, [('verb', 'go'),
                          ('verb', 'kill'),
                          ('verb', 'eat')])


def test_stops():
    assert_equal(lexicon.scan("the"), [('stop', 'the')])
    result = lexicon.scan("the in of")
    assert_equal(result, [('stop', 'the'),
                          ('stop', 'in'),
                          ('stop', 'of')])
    result = lexicon.scan("from at it")
    assert_equal(result, [('stop', 'from'),
                          ('stop', 'at'),
                          ('stop', 'it')])


def test_nouns():
    assert_equal(lexicon.scan("bear"), [('noun', 'bear')])
    result = lexicon.scan("bear princess")
    assert_equal(result, [('noun', 'bear'),
                          ('noun', 'princess')])
    result = lexicon.scan("cabinet door")
    assert_equal(result, [('noun', 'cabinet'),
                          ('noun', 'door')])


def test_numbers():
    assert_equal(lexicon.scan("1234"), [('number', '1234')])
    result = lexicon.scan("3 91234")
    assert_equal(result, [('number', '3'),
                          ('number', '91234')])


def test_errors():
    assert_equal(lexicon.scan('ASDFADFASDF'), [('error', 'asdfadfasdf')])
    result = lexicon.scan("bear IAS princess")
    assert_equal(result, [('noun', 'bear'),
                          ('error', 'ias'),
                          ('noun', 'princess')])

def test_cases():
    result = lexicon.scan('THE Princess eAt bEaR')
    assert_equal(result, [('stop', 'the'),
                          ('noun', 'princess'),
                          ('verb', 'eat'),
                          ('noun', 'bear')])
