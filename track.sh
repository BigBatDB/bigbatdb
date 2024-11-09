#!/bin/bash
#
# track copy of BigBatDB via their Google Sheet
#

preston track\
 --algo md5\
 "https://docs.google.com/spreadsheets/d/1gtENmce4tv2AJWduWrj6dKnDFE0O-tLNZVAG6BAn5r4/edit?gid=0#gid=0"

preston head --algo md5 | preston cat | grep tsv | grep hasVersion | preston cat > bigbatdb.tsv
preston head --algo md5 | preston cat | grep csv | grep hasVersion | preston cat > bigbatdb.csv
preston head --algo md5 | preston cat | grep xlsx | grep hasVersion | preston cat > bigbatdb.xlsx

