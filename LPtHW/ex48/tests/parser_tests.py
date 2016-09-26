from nose.tools import *
from ex48 import parser

def test_parser_no_subject():
    theCall = parser.parse_sentence([('verb', 'go'), ('direction', 'north')])
    result1 = getattr(theCall, 'subject')
    result2 = getattr(theCall, 'verb')
    result3 = getattr(theCall, 'object')

    assert_equal(result1, 'player')
    assert_equal(result2, 'go')
    assert_equal(result3, 'north')
