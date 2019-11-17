# setup source directory
mkdir $HOME/modules/software/src/miniconda3
cd $HOME/modules/software/src/miniconda3
# grab installer from web
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
# open up the sinteractive node
sinteractive
# run installer
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
# >>> $HOME/modules/software/miniconda3/3.0.0
# will be prompted, enter 'yes'
# and then enter path for package to be held '$HOME/modules/software/miniconda3/3.0.0'

export PATH=$HOME/modules/software/miniconda3/3.0.0/bin:$PATH


./conda install --prefix /home/nbytes/modules/anaconda3


mkdir $HOME/modules/modulefiles/miniconda3
vi $HOME/modules/modulefiles/miniconda3/3.0.0


#echo "export CONDA_ENVS_PATH=~/project/conda_envs:$CONDA_ENVS_PATH" >> ~/.bashrc
#echo "export CONDA_PKGS_DIRS=~/project/conda_pkgs:$CONDA_PKGS_DIRS" >> ~/.bashrc
#source ~/.bashrc'
#
#To revert to using the default locations:
#
#echo "export CONDA_ENVS_PATH=~/.conda/envs​:$CONDA_ENVS_PATH​" >> ~/.bashrc
#echo "export CONDA_PKGS_DIRS=~/.conda/pkgs​:$CONDA_PKGS_DIRS​" >> ~/.bashrc
#source ~/.bashrc

jupyter-notebook --no-browser --port=8889 --ip=127.0.0.1


ssh -L  8889:127.0.0.1:8889 nbytes@croatan-2-2


conda config --set auto_activate_base false
