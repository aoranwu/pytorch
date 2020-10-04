export NCCL_ROOT_DIR=/usr
export NCCL_INCLUDE_DIR=$NCCL_ROOT_DIR/include
export NCCL_LIB_DIR=$NCCL_ROOT_DIR/lib
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$NCCL_ROOT_DIR/lib:$LD_LIBRARY_PATH
export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
export CFLAGS="$CFLAGS -DENABLE_NCCL_A2A=1"
export CXXFLAGS="$CXXFLAGS -DENABLE_NCCL_A2A=1"
USE_SYSTEM_NCCL=1 python setup.py install

