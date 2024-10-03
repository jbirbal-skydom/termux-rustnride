#pkg update -y
#pkg install -y build-essential pkg-config freetype libpng libzmq zlib libxml2 fftw libandroid-execinfo libarrow-cpp libjpeg-turbo clang cmake ninja rust git python python-pip python-numpy python-static matplotlib libarrow-python
#pkg i tur-repo -y
#pkg i python-pandas -y
#pip install meson-python
#curl -L https://its-pointless.github.io/setup-pointless-repo.sh | sh
# pkg install python build-essential cmake ninja libopenblas libandroid-execinfo patchelf binutils-is-llvm
# pip3 install setuptools wheel packaging pyproject_metadata cython meson-python versioneer
# MATHLIB=m LDFLAGS="-lpython3.11" pip3 install --no-build-isolation --no-cache-dir numpy
# pip install numpy matplotlib pandas
# export CFLAGS="-Wno-deprecated-declarations -Wno-unreachable-code"
# pip install pandas
# pip install scipy-learn


## OPENCV
# apt install x11-repo && apt update && apt install opencv
# apt install opencv-python


## scikit image
# apt install lfortran
# pip install pythran
# pip install scikit-image --no-build-isolation

export CFLAGS="-Wno-deprecated-declarations -Wno-unreachable-code -Wno-int-conversion"
export MATHLIB="m"
export LDFLAGS="-lpython3.11"
export LD_PRELOAD="$LD_PRELOAD:/data/data/com.termux/files/usr/lib/libpython3.11.so.1.0"
#pip install -vv pandas # -vv is because watching the loading thing for 40 minutes is not fun
#pip install -vv astropy
#pip install -vv notebook
jupyter notebook --ip=0.0.0.0
