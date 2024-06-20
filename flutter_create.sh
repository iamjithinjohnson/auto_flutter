#!/bin/bash

# Function to handle errors
handle_error() {
  echo "❌ Error: $1"
  exit 1
}

# Function to prompt for input
prompt_for_input() {
  local prompt="$1"
  local var_name="$2"
  echo "$prompt"
  read -r $var_name
}


# Prompt for project name and Flutter SDK version
prompt_for_input "Enter Project Name: " project_name
echo "Project name is: ${project_name}"

prompt_for_input "Enter Flutter SDK Version: " flutter_sdk
echo "SDK: ${flutter_sdk}"

# Create project directory
mkdir "$project_name" || handle_error "Folder Creation Failed"
cd "$project_name" || handle_error "Cannot change to project directory"

# Set up FVM with the specified Flutter SDK version
fvm use "$flutter_sdk" || fvm install "$flutter_sdk" --setup || handle_error "FVM Setup Failed"

# Create the Flutter project
printf "\n⚽️ Creating Flutter Project\n"
fvm flutter create . || handle_error "Project Creation Failed"
printf "\n✅ Project Creation Completed ✅\n"

# Initialize Git repository
git init || handle_error "Git Initialization Failed"
git add . || handle_error "Git Add Failed"
git commit -m 'initial commit' || handle_error "Git Commit Failed"

# Create and write to mason_config.json
cat <<EOF > mason_config.json
{
  "project_name": "$project_name"
}
EOF

# Initialize Mason and add masontest
fvm exec mason init || { fvm dart pub global activate mason_cli && fvm exec mason init; } || handle_error "Mason Initialization Failed"
fvm exec mason add masontest --git-url https://github.com/iamjithinjohnson/auto_flutter --git-path masontest || handle_error "Mason Add Failed"

# Run Mason make
printf "\n⚽️ Please enter capital Y\n"
fvm exec mason make masontest -c mason_config.json || handle_error "Mason Make Failed"

# Perform dependency resolution
fvm flutter pub get || handle_error "Flutter Pub Get Failed"
printf "\n✅ Pub Get Completed ✅\n"

# Run build_runner
fvm flutter packages pub run build_runner build --delete-conflicting-outputs || handle_error "Build Runner Failed"

# Commit the generated files
git add . || handle_error "Git Add Failed"
git commit -m 'MVVM structure created' || handle_error "Git Commit Failed"

# Try to open VSCode
code . || printf "❌ Project Opening Failed. Please open project manually ❌\n"

# Open iOS Simulator
open -a Simulator || handle_error "Simulator Opening Failed"
printf "\n⚽️ Waiting for the simulator to be ready...\n"
sleep 5

# Run the Flutter app
fvm flutter run || handle_error "Flutter Run Failed"

# Uncomment if you want to build the app
# Build APK
# printf "\n⚽️ Creating APK Build\n"
# fvm flutter build apk --release || handle_error "APK Build Failed"
# printf "\n✅ APK Build Created ✅\n"

# Build iOS
# printf "\n⚽️ Creating iOS Build\n"
# fvm flutter build ios --release || handle_error "iOS Build Failed"
# printf "\n✅ iOS Build Created ✅\n"
