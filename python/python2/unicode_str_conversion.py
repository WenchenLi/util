#in python2 , unicode and str instances looks like the same type
# when a str contains 70bit ASCII characters
# - Combine use +
# - Compare use = ,!=
# - unicode instances for format '%s'

# str contains 8-bit values, unicode contains sequence of unicode chars.
def to_unicode(unicode_or_str):
    """
    takes a str or unicode and returns a unicode
    :param unicode_or_str:
    :return: unicode| (converted) unicode
    """
    if isinstance(unicode_or_str, str):
        value = unicode_or_str.decode('utf-8')
    else:
        value = unicode_or_str

    return value


def to_str(unicode_or_str):
    """
    takes a str or unicode and returns a unicode
    :param unicode_or_str:
    :return: str| (converted) str
    """
    if isinstance(unicode_or_str, unicode):
        value = unicode_or_str.encode('utf-8')
    else:
        value = unicode_or_str

    return value