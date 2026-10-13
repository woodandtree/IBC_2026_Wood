def GC_content(seq):

    """Write a description to
    your function
    
    >>> GC_content("ATATTATATATA")
    0
    >>> GC_content("GGGGCCCC")
    1.0
    """
    g_cont = seq.count("G")
    c_cont = seq.count("C")
    
    gc = (g_cont + c_cont) / len(seq)
    #pdb.set_trace() chunk up function by code debug, code debug
    return(gc)

if __name__ == "__main__":
    import doctest
    doctest.testmod()