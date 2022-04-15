wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh

# Install
chmod +x miniconda.sh
./miniconda.sh -b -p $HOME/miniconda

# Setup miniconda and environment
export PATH=$HOME/miniconda/bin:$PATH
conda config --set always_yes yes --set changeps1 no
conda create -q -n nestpy python=${PYTHON} numpy
source activate nestpy
