#!/bin/bash

BASE=`pwd`
SOURCE=gdrive_source
DEST=${BASE}/source
PANDOC_DATADIR=${BASE}/pandoc_datadir

# $1 = Input file
# $2 = Target directory
convert_file () {
   #echo "******"
   #echo "1=$1"
   #echo "2=$2"
   TO_UNDER="${1// /_}"
   TO_FILE="${TO_UNDER/.docx/.md}"
   TO_BASE="${TO_FILE%.*}"
   MY_CMD=${PANDOC_CMD[@]}
   echo "${MY_CMD[@]}"
   mkdir $2/media/${TO_BASE}
   echo pandoc --verbose --standalone --data-dir "${PANDOC_DATADIR}" --extract-media "$2/media/${TO_BASE}" --wrap none  --from docx --to commonmark-raw_html "$1" -o "$2/${TO_FILE}"
   #pandoc --verbose --standalone --data-dir "${PANDOC_DATADIR}" --extract-media "." --wrap none --from docx --to commonmark-raw_html "$1" -o "$2/${TO_FILE}"
   pandoc --verbose --standalone --data-dir "${PANDOC_DATADIR}" --extract-media "$2/media/${TO_BASE}" --wrap none --from docx --to commonmark-raw_html "$1" -o "$2/${TO_FILE}"
   if [ $? -ne 0 ]; then
      echo "*** Failed: ${CMD}"
      exit $?
   else
      echo "Converted $1"
   fi
}

cd ${BASE}/${SOURCE}
for FILE in *.docx; do
   convert_file "${FILE}" "${DEST}"
done

cd ${BASE}/${SOURCE}/Tasks
for FILE in *.docx; do
   convert_file "${FILE}" "${DEST}/tasks"
done

# ${CMD} ACCESS\ Allocated\ Production\ Compute\ v2\ -\ Integration\ Roadmap\ Description.docx -o ACCESS\ Allocated\ Production\ Compute\ v2\ -\ Integration\ Roadmap\ Description.md

