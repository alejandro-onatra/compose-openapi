#Load environment variables from a file (base path of the folder where the file is located, file name)
function loadVariables() {
  root=$1
  variable_file_name=$2
  echo "Loading variables with path [${root}] and filename [${variable_file_name}] "
  if [ ! -f "${root}/${variable_file_name}" ]; then
    echo "No environment variable file found"
    exit 1
  fi

  variable_file="variables.txt"
  cat "${root}/${variable_file_name}" | sed 's/ = /=/' | sed 's/"//g' > ${variable_file}
  while  read -r line ; do
    export "${line}"
  done < ${variable_file}
  rm -rf ${variable_file}
}