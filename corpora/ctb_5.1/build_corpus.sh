#!/bin/bash

SCRIPT_DIR="../../scripts"
REMOVE_TRACES=${SCRIPT_DIR}/remove_traces.py
STRIP_FUNCTIONAL=${SCRIPT_DIR}/strip_functional.py
ENSURE_TOP=${SCRIPT_DIR}/ensure_top.py

python process_ctb.py --ctb ${HOME}/data/ctb_5.1/

for SPLIT in train dev test
do
  STRIPPED=${SPLIT}.gold.stripped
  python $STRIP_FUNCTIONAL < ${SPLIT}.gold.original | python $ENSURE_TOP > $STRIPPED
done
