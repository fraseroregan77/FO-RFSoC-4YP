
echo hello_world

#Enter the variables needed to find these files
read -p "Enter the project name: " project_name
read -p "Enter the Name of your block design: " bd_name
dest_folder="Overlays/"

#Set the filepath 
project_name_full="2x2_files/"$project_name"/"
path_to_hwh="2x2_files/"$project_name"/"${project_name}.gen"/sources_1/bd/"$bd_name"/hw_handoff/"
path_to_bit="2x2_files/"$project_name"/"${project_name}.runs"/impl1/"${bd_name}_wrapper.bit""

#Navigate to filepath and copy files over

# Check if the project directory exists
if [ -d "$project_name_full" ]; then
    cp "$path_to_hwh" "$dest_folder" || { echo "Failed to enter directory"; exit 1; }
else
    echo "Project directory does not exist."
    exit 1
fi

if [ -d "$project_name_full" ]; then
    cp "$path_to_bit" "$dest_folder" || { echo "Failed to enter directory"; exit 1; }
else
    echo "Project directory does not exist."
    exit 1
fi


#C:\Users\clb20123\Documents\FO-RFSoC-4YP\2x2_files\vivado_project\vivado_project.gen\sources_1\bd\helloworld\hw_handoff
#C:\Users\clb20123\Documents\FO-RFSoC-4YP\2x2_files\vivado_project\vivado_project.runs\impl_1