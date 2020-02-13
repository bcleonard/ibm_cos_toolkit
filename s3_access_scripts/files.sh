#!/bin/sh

OPTIND=1

FILE_PREFIX=icos_testing
FILE_POSTFIX=bin

show_help ()
{
  echo ""
  echo "usage: ${0} -h -? [-c | -r ]"
  echo ""
  echo "  -h|-?  help"
  echo "  -c     create 10 100m files"
  echo "  -r     remove the created 10 100m files"
  echo ""
}

while getopts "h?cr" opt
do
  case "${opt}" in
  h|\?)
    show_help
    exit 0
    ;;
  c)
    CREATE_FILES=1
    ;;
  r) 
    REMOVE_FILES=1
    ;;
  esac
done

if [ ! -z "${CREATE_FILES}" ] && [ ! -z "${REMOVE_FILES}" ]
then
  show_help
  exit 0
elif [ ! -z "${CREATE_FILES}" ]
then
  for COUNT in 01 02 03 04 05 06 07 08 09 10
  do
    FILENAME=${FILE_PREFIX}_100m_${COUNT}.${FILE_POSTFIX}
    echo -n "Creating file ${FILENAME}..."
    dd if=/dev/zero of=${FILENAME} count=1024 bs=102400 > /dev/null 2>&1
    echo "...done"
  done
elif [ ! -z "${REMOVE_FILES}" ]
then
  for COUNT in 01 02 03 04 05 06 07 08 09 10
  do
    FILENAME=${FILE_PREFIX}_100m_${COUNT}.${FILE_POSTFIX}
    echo -n "Removing file ${FILENAME}..."
    rm -rf -- ${FILENAME}
    echo "...done"
  done
else
  show_help
  exit 0
fi
