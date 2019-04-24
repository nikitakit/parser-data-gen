# Parsing Data Generation for WSJ

1. Place a copy of the Penn Treebank
([LDC99T42](https://catalog.ldc.upenn.edu/LDC99T42)) in `corpora/treebank_3`.
After doing this, `corpora/treebank_3/parsed/mrg/wsj` should have folders named
`00`-`24`.
2. Ensure that the active version of Python has `nltk` installed. Python 2.7 and
Python 3 should both work.
3. `cd corpora/wsj && ./build_corpus.sh`

Processed trees are written to the following files:
- `corpora/wsj/train.gold.stripped`
- `corpora/wsj/dev.gold.stripped`
- `corpora/wsj/test.gold.stripped`
