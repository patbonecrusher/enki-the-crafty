scripts=(
  enki
  brew
  core_utils
  vscode
)

mydir=${0:a:h}
for script in "${scripts[@]}"
do
  echo 'sourcing ' "${script}"
  source ${mydir}/${script}
done
