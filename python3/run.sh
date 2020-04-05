cd ..
rm -r build
rm -r lib
cmake -H. -Bbuild
cmake --build build -- -j VERBOSE=1
cd python3
cp ../lib/liblineargbm.so gbdtpl/liblineargbm.py
pip install -U .
# python test.py
