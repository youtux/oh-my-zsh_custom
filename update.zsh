update() {
    echo "Running brew update...";
    brew update
    echo "Running brew upgrade...";
    brew upgrade
    # echo "Updating gems...";
    # gem update
    echo "Running pip install --upgrade setuptools...";
    pip install --upgrade setuptools
    echo "Running pip install --upgrade pip...";
    pip install --upgrade pip
}