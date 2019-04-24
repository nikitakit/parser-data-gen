#!/bin/bash

SCRIPT_DIR="../../scripts"

ENSURE_TOP=${SCRIPT_DIR}/ensure_top.py
STRIP_FUNCTIONAL=${SCRIPT_DIR}/strip_functional.py
PREDICT_TAGS=${SCRIPT_DIR}/predict_tags.py

python get_wsj.py --data_root ../treebank_3/parsed/mrg/wsj

TRAIN="train_02-21.gold.original"
DEV="dev_22.gold.original"
TEST="test_23.gold.original"

python $STRIP_FUNCTIONAL < $TRAIN | python $ENSURE_TOP | sed 's/PRT|ADVP/PRT/g' > train.gold.stripped
python $STRIP_FUNCTIONAL < $DEV | python $ENSURE_TOP > dev.gold.stripped
python $STRIP_FUNCTIONAL < $TEST | python $ENSURE_TOP > test.gold.stripped
