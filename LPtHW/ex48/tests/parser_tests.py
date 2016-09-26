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

def test_parser_with_stops():
    theCall = parser.parse_sentence([('verb', 'kill'), 
                                     ('stop', 'the'),
                                     ('noun', 'princess')])
    result1 = getattr(theCall, 'subject')
    result2 = getattr(theCall, 'verb')
    result3 = getattr(theCall, 'object')

    assert_equal(result1, 'player')
    assert_equal(result2, 'kill')
    assert_equal(result3, 'princess')

def test_parser_with_subject():
    theCall = parser.parse_sentence([('stop', 'the'), 
                                     ('noun', 'bear'),
                                     ('verb', 'go'),
                                     ('stop', 'in'),
                                     ('stop', 'the'),                                  
                                     ('noun', 'cabinet')])
    result1 = getattr(theCall, 'subject')
    result2 = getattr(theCall, 'verb')
    result3 = getattr(theCall, 'object')

    assert_equal(result1, 'bear')
    assert_equal(result2, 'go')
    assert_equal(result3, 'cabinet')

def test_parser_with_extras():
    theCall = parser.parse_sentence([('verb', 'open'), 
                                     ('stop', 'the'),
                                     ('noun', 'door'),
                                     ('error', 'and'),
                                     ('error', 'smack'),
                                     ('stop', 'the'),
                                     ('noun', 'bear'),                                  
                                     ('stop', 'in'),                                  
                                     ('stop', 'the'),                                  
                                     ('error', 'nose')])
    result1 = getattr(theCall, 'subject')
    result2 = getattr(theCall, 'verb')
    result3 = getattr(theCall, 'object')

    assert_equal(result1, 'player')
    assert_equal(result2, 'open')
    assert_equal(result3, 'door')

